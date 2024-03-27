function sprof2odv(wmo, dac)

addpath(genpath('C:\\Users\gordonc\Documents\projects\ARGO_PROCESSING\'))

fn = [num2str(wmo), '_Sprof.nc'];
dac_path = '/ifremer/argo/etc/argo-synthetic-profile/';
local_path = ['C:\\Users\gordonc\Documents\data\Argo\dac\', dac, '\', num2str(wmo), '\'];

f_info = struct();
%           f_info.WMO        = '6901580';
%           f_info.fn         = '6901580_Sprof.nc';
%           f_info.dac_path   = '/ifremer/argo/etc/argo-synthetic-profile/';
%           f_info.local_path = 'C:\Users\tmaurer\Documents\MATLAB\ARGO_PROCESSING\DATA\ARGO_REPO\6901580\';
%           f_info.dac = 'coriolis';
f_info.WMO = num2str(wmo);
f_info.fn = fn;
f_info.dac_path = dac_path;
f_info.local_path = local_path;
f_info.dac = dac;

ARGOsprofmat2ODV(f_info, 'C:\\Users\GordonC\Documents\projects\ARGO_PROCESSING\DATA\ARGO_REPO\');