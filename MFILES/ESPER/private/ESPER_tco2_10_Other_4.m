function [Y,Xf,Af] = ESPER_tco2_10_Other_4(X,~,~)
%ESPER_TCO2_10_OTHER_4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:57.
% 
% [Y] = ESPER_tco2_10_Other_4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-1;-0.999998793562952;-77.961;0;29.715;-0.9;-0.1386];
x1_step1.gain = [1.00000000274156;1.00000063368067;0.0138606862425759;0.0002963841138115;0.248478071810163;0.0419287211740042;0.00826143816767911];
x1_step1.ymin = -1;

% Layer 1
b1 = [0.014187530719225317;-1.1624234603575745;0.42243816989455935;-6.5496175650696884;1.7697267786792352;-7.6282743522518279;-4.5092350146653981;0.4444264676197906;1.2845257728003276;1.7263697677430976;2.257109465048786;1.2431269091307062;-0.60765333261391896;0.58222819572517825;-1.4546435173435912;1.9351633237489045;0.42800974432823152;-2.875820254122166;-0.34321242648815231;-3.1953218006201096;-1.8569507602377209;0.50079566006456155;-3.4987804000116292;3.8616281327119961;-1.7584696123270067;-11.182748389189481;14.016844476018736;3.50786036054734;-0.22171449241921645;-2.2530836666632892];
IW1_1 = [-0.7883691157573558 -0.62942664912777258 -1.5329021163063508 -0.16879380287785758 -3.6624871172150386 -0.65586447589211638 -3.8993675378824117;0.13476179199074043 0.5185238295566168 1.0982452826575579 1.7828232443472933 0.31047700204309819 -0.051010959991970771 -3.6284336120687835;0.0040671451733342891 -0.11078013440402042 0.43528566354417153 0.60889445411883347 0.60090866360425654 0.4759725399062546 -0.19228275855032359;0.56772992290029733 -0.3928054438702433 6.528542237749857 -5.8696887224093466 -0.50045291001820791 1.013928198951729 0.92584089608973352;-0.125813201183889 1.1753839461451063 0.87140602571930881 -0.35223482315955479 -1.5379095991502043 -0.98525659936571031 -0.78021559154091769;2.3558330553296476 1.264866818979085 -7.774226733244002 2.6678231773024565 12.128926765355757 -3.7424315957399532 -0.062042340377508595;-0.2251746310547493 -0.090373377984962477 -6.1872114428227603 -2.4510312302741619 -0.91087982582828941 -3.1509607584594876 2.9581367198879263;0.42213765193675862 -0.56885093550560717 -0.34016480239133673 -0.9109100865547195 2.6963831697675031 -1.1037172110242084 0.48914766514176466;-0.34859893397827096 -0.58070466586015335 0.47016751953405789 0.37119196097647622 -2.8789362546001835 -0.19876761032414461 -0.59025166569453347;-0.34564541329134196 -1.1862429613065684 -0.17599995481758179 -1.0540142555738352 1.3702604229887703 -0.17384988798244538 2.5698902386527154;0.075360362588454743 0.21279443270141643 -0.70496491203860912 -0.57292444395728581 -4.3932762887676642 -1.8117193262354219 1.0705835000767525;-0.1728144111179945 -0.34554241172352995 0.58348501307411837 0.39130751191621249 -1.5311484890642457 -0.35634520491525179 -0.74672448064844543;0.024747977767036709 0.17011289621058159 -0.70033316309356297 -0.49613780162528526 -1.1092687196343716 -0.22072169612829676 0.091310772799250817;-0.19386043386920881 -0.10775210007992927 1.8964749830730723 -0.13667762449097373 2.1485967282643377 0.034207814917445421 0.10511288030135629;-0.50081286406585501 -0.45673525372954943 -1.6067693202068123 -0.038157314923396635 3.1930222299519189 0.286076276030232 -0.7049114615351737;0.75302196395194732 0.62391378695149657 -0.61935416498040918 -0.241966245988117 -6.052721164527421 -0.27686667249127517 1.014302596912098;1.4706250450008787 2.3717767261601121 -2.6883633061261341 5.0080972477637342 -4.7009526582093075 0.20339247601362984 -5.5035352032544722;-1.0713812712061206 0.14064136190666393 10.470203846002153 7.2005644881673563 1.1838808613910941 2.4289883657034719 -5.5642458052585111;-0.08692352112152657 0.59505899618864833 1.60273772807571 0.47153974273877686 0.87967006060170583 0.61846187165385491 1.091026974595326;-0.76473787229420731 0.97747365406464171 -0.19816245229723289 0.33564140701946299 9.7343418861620208 -0.1581422473154856 -0.024993501104821743;-0.31040437238316143 0.1746721282391672 -2.6022469771719492 0.71667264000578113 0.024994898721246973 0.41464046917674197 -1.2866907886453454;-0.0062190820698810644 -0.12659635013729251 0.50222190522520993 0.54998534490362749 0.76444251154815335 0.36892595658661392 -0.15272222046218825;0.057197258108388757 -0.13756753808644354 0.96035477608651487 -0.88639718206643836 1.5273736513042493 -0.13700539370619938 -1.0314632711107805;0.71165828500630013 0.74924310855387988 1.815973541184877 -0.025931653003220482 -4.6556679757260984 -2.8604750899826943 5.4262996477288814;-0.88316664873126416 0.87952890713686871 0.99927606499869781 -0.38543549519181325 -1.7731355779042248 -0.0095227171825127827 -2.6480988566082253;-1.6474333729794135 -0.5899012541243549 2.9831122793840881 -6.1036035679909615 -0.23310977806094807 -0.15571533493008291 -4.0646647723723701;0.68559778861618981 0.011859858766551061 0.97961509144793391 13.677726149118731 -5.8738335025813866 -0.49067860402901287 0.56066343226303295;0.49772586687133441 2.1124391342394779 2.5020927976852314 1.9012433249347171 3.3569340252077442 0.32504324601407747 1.5921457510611805;0.11790303869288488 0.50174865079510511 -0.53240368852541209 -3.3684528569463299 -1.8766433817984365 -3.0764815092846232 3.1376316429653754;-0.25873884652621115 -1.6156843857535872 -0.7201783936562598 -0.34901157538707933 2.6581500084987066 -0.072107398272130654 0.6326082174571962];

% Layer 2
b2 = [-1.1041778905576103;0.44080414955283015;5.713265582920716;-4.1870110318267866;-13.985525181543807;0.12524475328409296;-0.55587112029192387;4.1531621806945864;-7.5610390069992413;-1.6228526935814678];
LW2_1 = [-0.37936803880803072 -0.017057768027079593 -2.9123726225286335 0.33637472536104923 -2.119714899914098 0.4590887925801192 1.5971247662427488 -0.13910905423659781 -5.6391364239331958 0.68872651162974163 -0.018608749544695442 9.8544307805355551 0.40737733503759371 -2.2450977906902105 -1.3909346722767164 -1.304399978798521 -0.24984885131486162 -0.21266052978097147 -0.16800790974693494 0.90693409456756335 0.27831433428687258 -2.3428076188407809 -3.6240243982225051 -0.10869609074074633 -0.215997248610176 -0.27778485920253748 0.47723332620526376 0.075610998522715189 -0.27084898999720053 -2.1818567714114629;18.151909131883038 3.9621094117450348 0.14646773152751746 1.3011683403191037 0.74658609351462013 -1.3924729091452945 8.9388521747759828 2.6195721092930313 5.2199668742796748 -0.84682666828689845 -2.1970750329544759 -5.9652604182159692 -8.0533314446647477 -7.1686776034115818 5.6998919361662885 2.1761467621040955 5.0004519173151847 -1.3681228115981112 3.945724347563901 5.7951910263268571 1.1929905799922496 8.3619622386072336 -1.8494765013790782 2.4277894658021366 2.9609600662255846 13.494584150366078 3.9783148230642844 -4.2316428878368422 -7.5065294223586987 8.4453183836495054;-0.19167229641153405 1.6130802538599458 3.5573455849471403 -0.48112330046731927 -1.2239053423948145 0.25772819562732208 0.22589670035503392 -2.2151133973694654 3.3266069516903443 4.210271084074801 0.50688544445324102 -8.0367600954583196 -6.9841996136943552 -5.9951402600005714 -4.8636229180435731 -1.522921463964048 0.29348215834358288 -0.94128761269178995 -4.5387338431395703 0.53836506666580441 1.2511716214417659 -3.8113371187847798 -0.81315044869869979 0.084039885510075227 1.123107805919173 0.051023887869815862 -0.034531877479114466 1.8688472801259433 0.237465828133334 1.1044129455425622;0.9026817353235852 -0.48808333941934495 4.6658704118308094 -0.66651052401012456 1.5303650799120638 -0.05599223495622687 -0.34912408387684013 -0.38359907898339546 0.50299580221321616 -0.41715408376684371 -0.94397477893597725 -0.20774321016413133 4.1440950988164271 0.10217335052154852 1.8525247840680414 -0.38909789232376418 0.44580938495091138 -0.35269250308852346 0.85267682570514514 -0.66007365556037512 -1.8565565571027407 2.3745717368994104 -4.3663675268698769 0.48649127386267788 -0.066246058290904616 0.79876600022970279 -0.05291781597342974 0.1688414733110688 0.94093312321874323 1.3815406395525398;-3.2957877074467743 -9.7424016143408618 2.2230249867666343 -7.7793071270979093 0.89090086558292414 -8.1699075169402189 8.2344043214259077 18.031281935091851 -5.7400366700874184 4.3687404972018111 -5.9280020319230964 -7.7255861237559822 -9.0574811940306859 25.985147847486118 4.6426803437045931 11.031799018363376 1.1217267265455455 14.120364415996026 7.9604077565547113 -0.82232933250768292 12.871165809734611 16.965322960311131 3.4826869503008075 -10.86151826499346 4.7875337969015117 -2.5008956983062327 7.0177434194357708 -4.8391988784752256 9.9227430897175903 -6.1793926496235381;-0.51005013317924519 2.4724905269160606 3.3017744089455081 -1.7829538841910009 -0.99603231963876349 19.83295069915691 3.6601335792144374 12.93151397773752 0.57739597445655944 -4.7571303852643645 0.77273633395453067 -1.7542853904396392 7.7870616461123667 6.4423423250292924 0.017721711473325911 -7.2457137494349979 -4.6305348399485249 -5.1928830404287405 21.96411647521311 2.4398703526012779 -3.2852946341670277 -10.910532881290562 -5.5345186310046897 6.1459590763969585 9.6612246628581833 -25.663497621938891 -2.7215579091292259 -18.319651463983242 -3.8134991812249943 3.5872520725891763;0.10286514506172123 0.042599012789637035 9.0926960065644167 -0.084234924264004404 0.21893817943338961 -0.0066163734395636564 -0.056935680163401954 0.073383792404169576 -0.084618815690327739 0.013846564717937597 0.15119502163502765 0.31576220076964828 -4.3775186495369205 -0.073190972795811923 0.19741657910170149 -0.030534197093094698 0.039471766743623973 0.029488565012568003 0.076616951674419648 -0.042256628794736559 -0.13327187691072878 -13.844235638797468 1.2087484116248153 0.060330089204096188 0.047597094039768695 0.067440728251215915 0.021521517850411696 0.0013236947618193726 0.091769501355590838 0.18474824613361351;5.4654983798807919 -0.92744790041669101 -5.891879673615307 0.94471005966647981 -10.870171902310494 -9.2920986392609706 -4.8717770125388427 2.7586375032506592 -0.97977786247640686 -2.6621663892050433 1.6399518356571889 4.8279690107119286 -1.9850197606816131 13.403777283992399 6.0993062214828599 -0.93117360630416779 -0.79984067030499395 1.7477644934066661 9.2303102884793358 2.2223062485562179 4.1178378162889535 -10.31634847781921 5.8616812859391629 3.2742516044944945 1.0116821516546284 0.57184083093117177 1.723893854367887 -2.9584922860344798 5.8591598625924162 -10.098896336648115;10.779129432694837 -7.0145188905698248 -3.4815658448452478 -7.2708336819459509 -0.81511825921123904 16.257426244958591 3.1737726922565836 2.1204866540653322 7.8964638983507136 8.813099217083499 -5.360464939780063 -3.0644493153971375 4.9316844871209815 -6.993030091631252 -18.137552307344542 8.9488346555736218 -4.86519626722799 10.813549754334101 -13.970797525600858 3.793875613372431 -2.0557082336749661 -6.7938173152010748 5.5610647011524303 6.8089240045431625 -6.3599709331328738 10.125943425700326 -25.376633623322164 -8.7738773382008901 -4.6091996098569901 5.032205815457881;-0.9024145879346771 0.14767869252881299 13.945678871410403 14.286333938649642 1.75428972373715 2.3606970407846219 -6.4460045291681274 -5.0454902004940454 -3.5659669421934077 3.9335785378733363 5.9535776753630207 3.5155373676559547 -0.44674917637831429 8.5102135853071221 1.5416214522216569 -0.58692548060383776 -0.62507264610989233 5.3067934789474069 6.6152827838468875 -9.3883773469288894 -1.8531290975776216 -3.9142430414473544 17.500645831097859 -6.048528321666784 -10.518888771291733 -17.970839385559078 -1.9231856729619534 -3.9458890850700841 2.498235816615539 -3.0204441210256019];

% Layer 3
b3 = -10.37004415601295;
LW3_2 = [-0.1086877121325278 0.010333325377386304 -0.21390772475869607 0.095190858621708077 0.0053439476601425144 0.0051306080011445073 -11.615801182263967 0.011538493153599052 -0.0065259695403587295 0.0054037450485450063];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00314743155299998;
y1_step1.xoffset = 1774.26765577007;

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
    a2 = tansig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Layer 3
    a3 = repmat(b3,1,Q) + LW3_2*a2;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a3,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(3,0);

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