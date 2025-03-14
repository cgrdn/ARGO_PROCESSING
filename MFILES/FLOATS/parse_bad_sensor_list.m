function out = parse_bad_sensor_list(file_path)

% CHANGE HISTORY
% 08/28/17 Added code to look for "NO_WMO" floats in addition to those with
%   WMO #'s -jp
% 09/12/2018 TM, added flag option (final column)  THESE FLAG ENTRIES ARE ARGO FORMAT!!! (QF=3 IS QUESTIONABLE, QF=4 IS BAD)
% 03/02/2021 TM, Slight modification to single-cycle identiier logic.

% TEST
% file_path  = ['C:\Users\jplant\Documents\MATLAB\ARGO_PROCESSING\', ...
%     'DATA\CAL\bad_sensor_list.txt'];
% file_path  = ['C:\Users\bgcargo\Documents\MATLAB\ARGO_PROCESSING\', ...
%     'DATA\CAL\bad_sensor_list.txt'];
% file_path = '\\atlas\tempbox\Plant\TEST_CAL\bad_sensor_list_GOBGC.txt'

% DO SOME PREP WORK
out.hdr    = []; % Output if function fails
out.list   = [];    

format_str = '%s%s%s%s';
cell_list  = cell(1000,5); % for pasing text file
list  = cell(1000,5); % for final output
max_cycles = 1000; % # way greater than the max # of cycles a float can do 

% PARSE BAD SENSOR LIST
if exist(file_path, 'file') ~= 2
    disp(['Bad sensor list not found at: ',file_path])
    return
end
fid   = fopen(file_path);
tline = ' ';
ct    = 0;

while ischar(tline)
    if regexp(tline, '^%', 'once')
        tline = fgetl(fid);
        continue
    elseif regexp(tline, '^WMO', 'once') % header line starts with WMO
        txt_hdr = regexp(tline, '\t', 'split');
    elseif regexp(tline, '^\d|^NO_WMO', 'once') % data lines start with WMO#
        ct = ct+1;
        cell_list(ct,:) = regexp(tline, '\t', 'split');
    end
    tline = fgetl(fid);
end
fclose(fid);
cell_list = cell_list(1:ct,:);

% CREATE FINAL OUTPUT
hdr  = [txt_hdr(1:4), 'CYCLE BLOCKS', txt_hdr(5)];

% GET HEADER INDICES
iWMO = find(strcmp('WMO #',hdr) == 1);
iM   = find(strcmp('MBARI ID STR',hdr) == 1);
iSEN = find(strcmp('SENSOR',hdr) == 1);
iCYC = find(strcmp('CYCLES',hdr) == 1); % idividual bad profiles
iCB  = find(strcmp('CYCLE BLOCKS',hdr) == 1); % start block of bad
iFLAG = find(strcmp('FLAG',hdr) == 1); %flag (ODV style, 8 = 'bad', 4 = 'questionable')

for i = 1:ct
    list(i,[iWMO,iM,iSEN]) = cell_list(i,1:3);
    list(i,iFLAG) = cell_list(i,end);
    cycle_str = regexprep(cell_list{i,iCYC}, ' ', ''); % remove any spaces
    
    % Get indvidual profile list - look for a block of #'s separated by
    % commas - flexible enough to catch cases where trailing comma is
    % forgotten on last entry.

    if ~isempty(regexp(cycle_str,'(\d+(?=,))|((?<=,)\d+)', 'once'))
        list{i,iCYC} = cellfun(@str2double,regexp(cycle_str, ...
            '(\d+(?=,))|((?<=,)\d+)','match'));
    end   
    % OK NOW PROCESS BAD PROFILE BLOCKS IF ANY - LOOK for dash
    find_dash = regexp(cycle_str,'-');
    dash_ct   = max(size(find_dash));
    cycle_blocks =[];
    if max(size(find_dash)) > 0
        cycle_blocks = ones(dash_ct,2) * NaN;
        for j = 1:dash_ct;
            if ~isempty(regexp(cycle_str,'\d+\-\d+', 'once')) % X to X
                cycle_blocks(j,1) = str2double(regexp(cycle_str, ...
                    '\d+(?=-)','match','once'));
                cycle_blocks(j,2) = str2double(regexp(cycle_str, ...
                    '(?<=-)\d+','match','once'));
            elseif ~isempty(regexp(cycle_str,'\-\d+', 'once')) % 1 to X
                cycle_blocks(j,1) = 1;
                cycle_blocks(j,2) = str2double(regexp(cycle_str, ...
                    '(?<=-)\d+', 'match','once'));
            elseif ~isempty(regexp(cycle_str,'\d+\-', 'once')) % X to end
                cycle_blocks(j,1) = str2double(regexp(cycle_str, ...
                    '\d+(?=-)','match','once'));
                cycle_blocks(j,2) = max_cycles; % set to unreal high cycle #
            end
            cycle_str(find_dash(j)) = 'X'; % Replace dash with 'X'
        end
    end
    list{i,iCB} = cycle_blocks;

        
end
out.hdr = hdr;
out.list = list(1:ct,:);
clearvars -except out
        
