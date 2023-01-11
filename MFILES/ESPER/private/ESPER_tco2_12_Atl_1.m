function [Y,Xf,Af] = ESPER_tco2_12_Atl_1(X,~,~)
%ESPER_TCO2_12_ATL_1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:58.
% 
% [Y] = ESPER_tco2_12_Atl_1(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;9.1619;-0.12];
x1_step1.gain = [1.0000000017546;1.00004398834998;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0145655815308426];
x1_step1.ymin = -1;

% Layer 1
b1 = [0.8479820300312807;-2.2439987248762421;-11.514249598135727;11.797870681351322;-2.5330179250085028;6.1078183826831518;-3.5573413285870084;3.2346543422997254;5.5489509183444063;3.1259043164192906;-6.974107008365019;-2.1535986265583493;-5.1165145419016831;6.4669105761025634;-3.1643829748784125;-5.4946796119382384;-11.272566475955584;-2.7474936154920799;-0.62795064542386392;-1.7512328027530362;2.5269494038145277;3.2288868372973893;6.3504089783488968;2.4313239707777039;-1.8596635083559407;4.2025464023695518;8.5485469468488322;8.432476891770909;4.1214094022798538;0.87997660971048541;-2.6409040836743505;10.678972137866444;-3.4304787859284231;-20.101523617615626;-0.96896686530578446;-3.3835719622715756;-3.4405673665130578;-2.8301575129329812;6.5363848739433381;1.0567873097033451];
IW1_1 = [-5.6782515476482489 0.76254987214155212 -0.86151859486727567 -0.55838496083471301 1.9224403584488086 1.2478916890179168;-0.4865153801982367 -2.4363860445412642 6.7785681013963774 0.087678338342613293 -8.3609590916125445 -3.5243504487594404;-0.95067125813575337 0.58350947287550248 -2.7047931571184236 -4.0954118205479642 -2.3050739068147883 -8.9269901481229645;0.90226197987383028 -0.53714966691105182 2.6020839871643182 4.3558723254673879 2.1162593604284461 8.8726093230189811;-0.22041015905050629 0.93613827221776336 1.7063397457813023 -1.0672472557491657 4.1886413762266459 -0.021885522755234935;-2.2014062505623775 1.4699364170061084 2.9897624273726375 0.14520052681105231 -7.6441641001580063 -2.9372627743276611;1.4203532983834557 0.37080731659928262 -0.35930445113815984 0.24319649659375905 2.2021743254471047 -0.29951324819728981;-0.80466120558284526 1.4976915798187167 0.23962530854684969 -0.53607947227520625 -5.3371265150656297 -2.0670383444639939;-2.817314029615241 -0.34379143025263187 -0.38946893008453948 -2.5477414210209495 0.28315731612356865 3.5103245326190864;0.65409067864085224 -1.2103805371965874 -2.9343370050855113 -0.28258527959857555 -0.22202845034849658 1.2106354323037773;0.15922192019920048 -0.15971891389030585 0.48207057047086554 -3.5592132731672015 1.4999825324981118 -2.4774269548166079;7.2604045922186877 -1.9645791751967545 0.7810678738928325 0.39825558744695788 -0.79805081059893057 -2.9084704016415786;0.22165142475008059 -0.061740523378751008 0.42530388768547367 -2.852957826896271 1.7152679669208974 -0.72789972535657055;-1.3038139061034537 -2.0707489112999009 0.75465347980456199 -0.80918368978395327 -6.5817778049382056 1.3605488049249692;1.3130640457449474 0.27364883179361732 -0.20649945065898065 0.17984404002417401 2.0693336256452994 -0.41992277940882472;2.0989799255580937 -1.1618381112154685 -2.9678799290467266 -0.12300262922759618 7.1656482023072918 2.8577960801282054;-1.3110963855916358 1.2911198267477157 -4.9486180438552632 -1.4043783120989375 -1.6606135784925353 -9.5787145890764052;0.23736709560873151 -1.2408264705771739 2.6638434112601241 -0.19358698606065847 0.85210105480154008 -0.756216397636158;-2.9665077039405023 0.034108882555484422 -1.0285618541710622 -0.35679756976230537 1.1106047069346858 1.9943960837059937;0.15225638181653334 -1.7218025489391269 2.8171804364148358 -0.18245211826285693 -0.97891702013988013 -1.1030961085059419;-0.21106976057815288 1.3264975758074098 -2.6823551371015721 0.17299408127972551 -0.50721438093580873 0.79442890866694404;5.0065111047991637 2.5320381146230759 -0.25097423703156724 0.80300133597340873 -4.7444673418723431 -3.2108087321575756;5.54377861548606 4.06090578015215 -2.7904747853203364 0.64595294386632574 -1.9118796136481953 0.44703866047516122;3.4946213958300238 0.16746819000659505 -3.2689644221193594 0.98007751220852346 -6.5570627641520387 -2.8010045687583869;-0.83393575051568569 1.3802732026539655 -0.27811886095022886 -0.3902954034625169 1.6150146505754399 -3.1827508811699707;-0.55385753785683001 -1.0324449260478583 0.10459452056133935 0.7302701785103145 -1.5010483063162072 3.036912878408621;2.6279365107890653 -0.88606466554041208 0.81534160919071308 2.9066532324737544 -3.2149339710497173 6.2347451203430699;2.3387595425084999 -3.1514461815700843 0.79869021441810406 2.965669504730454 -3.3583232160756515 8.6807226965124116;2.183145680661573 4.1465244404416355 -1.7231974216132704 0.2013338964796684 -4.5912766448547746 0.30093874264807924;3.1484868091706208 0.0023719157538832081 1.0495142546798015 0.4130038782612222 -1.4994252099108181 -2.143629025918222;-0.67287508330229573 1.7190568313206198 1.1072065431567188 0.55569856579224219 1.8844129255711422 -1.5402688211396012;1.5667388589540823 -0.77386204219460153 0.99339300094050742 -0.46841178248421173 -16.413270879918965 -0.17093501065999381;-3.3837245472915161 1.959674767422223 1.3813119881967579 -0.24827242141428901 -4.8644217526372184 -3.7483215112804844;0.19883142551387187 -0.16352535948122354 0.011391806153203713 -15.416521308980734 -2.1349185296564546 -4.8588444359857386;0.95028958934740437 -0.83295778229602058 -1.7263857978153088 -0.0379909347364734 -2.5699758286988268 -4.154045868713454;-2.3610385256653657 0.90310402914063925 2.7260030316493338 2.642074188596065 1.7339690896972484 1.469533763292618;1.118006341743047 0.23132350545567845 -0.049030145616631701 0.099544466957747296 2.552395828779094 -0.6787785201556743;-0.66372328906847189 1.315125987269135 2.5940647426714536 0.31784184393396753 0.14387841427595102 -1.3242304514353993;2.9375957432525976 5.4314363991477581 0.17996997518518706 0.067482389618991181 3.2735149170655831 3.9725349098037426;0.94895561219559355 -1.9154661598622067 0.2522404443123849 0.040062307116792491 2.2398780994983141 0.84606977590342725];

% Layer 2
b2 = -0.25630373941511259;
LW2_1 = [-0.059770736011896648 0.046506161019057364 3.3608590525343662 3.1950799473233884 0.18693847378032205 -1.3412253128453946 -2.2229465663619168 -0.27471515260710172 0.057104044848680174 -3.0147915442134496 -0.29532959363834865 -0.042762162801464498 0.46710465672367885 -0.15796553006959654 3.5259202937279692 -1.4229932016549987 -0.17107652338359672 -3.6702890454862667 1.5662615997176466 -0.96336175322818263 -4.492915027160592 -0.069343074418355341 0.059285691291991079 0.051196721801828153 0.10480805357928581 -0.22758521654283878 -0.025443555501656449 0.027363986946088045 -0.024730644603197495 1.4886798796844813 0.62132408058112976 0.053075182409580729 0.040325364310902924 -0.46123954203621664 0.030942301137350914 0.02496439632268441 -2.1610867822330193 -3.6181346517902409 -0.08856680899754453 0.25347415967061171];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00115315130997576;
y1_step1.xoffset = 678.286531932822;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
  X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
  Q = size(X{1},2); % samples/series
else
  Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX
  Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
  y = bsxfun(@minus,x,settings.xoffset);
  y = bsxfun(@times,y,settings.gain);
  y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
  x = bsxfun(@minus,y,settings.ymin);
  x = bsxfun(@rdivide,x,settings.gain);
  x = bsxfun(@plus,x,settings.xoffset);
end