function [Y,Xf,Af] = ESPER_talk_11_Atl_4(X,~,~)
%ESPER_TALK_11_ATL_4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:49.
% 
% [Y] = ESPER_talk_11_Atl_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;11.29;-143.241523403244;-0.12];
x1_step1.gain = [1.0000000017546;1.00031699124092;0.0153846153846154;0.000310077519379845;0.0705602618858232;0.00458552991639557;0.0145655815308426];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.5902028101376313;4.1316246060772635;-5.9227146516632496;-2.1321944503757444;-4.5433413606312758;0.4124679070684269;-0.52086562178960794;0.10197939760104478;2.0925192959995842;1.366929147905906;0.74451146977156346;-0.54755853877731731;0.98525565275674087;0.229318686182543;1.4668846972593155;-0.73301167640815335;-0.39086521903313476;-1.1214081444809598;-0.31149901303912464;-10.148817146515922;0.91733639386185395;1.7467238948457668;-1.0024122517183862;-2.2093444612008599;-0.87740154238370427;0.073909028676942962;2.6579211238218026;-4.1896201156692587;-0.10426598593366138;-0.98016589887631078];
IW1_1 = [2.1818164673719611 -2.8025257854169268 -1.9244109507813472 0.083627451579583179 0.28986180867739653 0.61954316079648175 -1.1180490380573762;0.52995955705512721 -0.21764790660158811 2.0406408253166015 -0.15338513470722126 -3.0875716343173099 0.14103459560723741 1.100789839741275;0.97537251093144628 2.3110502151962855 -1.2981771652158383 0.55013037529531572 2.0256704707285076 1.1213190639222146 -1.0316164140702111;0.055179616256014016 1.1681096724393176 -0.95723782695202408 -0.55404149716866447 -0.58777042690323544 -0.92044240866345328 -1.1966912662857234;-0.57854956476482877 0.017610864632981189 0.10062144209854738 0.74291717024051296 5.9440845633918302 0.40186940693058043 0.55737389092282563;-0.30660725351674128 -0.65787401794517952 -0.42302814493840979 0.38820270479599156 -2.9590649452972357 -0.10887268452703791 0.78204368122607559;1.7907861251947588 1.4230115236862966 -0.65131070878560415 -0.88244224206530864 -2.473232448006188 0.26930505518644682 -0.49322792549988492;0.01963072456941178 -1.3885490070935924 -0.44617135789914852 0.36482414870796398 -1.8867640780907178 -0.20503948651030474 -0.40909423033808323;-0.70373550134420171 -1.8340757279034741 1.9326030791616553 0.56289905441882537 -0.73184214345777199 -0.3553774251140101 0.63487398244014159;-1.1765698237734568 0.49653369047413926 0.41167401816401228 0.38562741788085447 0.6957289251793094 -1.3644337720659483 -1.8192616382651763;-0.12922651740762756 0.11553940532120913 0.60572772260109209 -0.0099770307475319578 -1.7989187080836 0.33629734868836042 -0.10187944847964564;-0.18479612256712707 1.6484115170571338 -1.2709729011194799 -0.39944022743497459 0.49093181809915543 0.17952877609794693 -0.232408394074375;0.54797763320806303 -0.46128289049008658 2.6203173883051458 1.3029174392021823 -2.1482198653889264 1.3704844899617044 0.7280860989566853;0.32971363781078727 0.5751118366318051 -1.2476822678614443 -0.84312124325578708 1.910941467151215 -1.5024269252508464 0.22764038757844657;1.6184393927252108 -0.99936533276348372 -0.26873630957541128 0.20782632296481218 -3.8708842110249386 0.32408408471284927 -1.6250758004204888;0.36431768589128211 -1.9538577438549194 1.3371286919723113 -1.5047529082167617 0.79051525343294315 -2.1533321910110566 -0.13824585981620513;0.21757855816919272 -0.29130672832834081 0.7679580174471623 -0.093302879824077964 1.050821791046213 -0.62079272299388999 -0.092506460814987895;-1.4086541806512656 -0.30648194171844556 -0.61079248180716106 0.31176183506718036 -1.1681271962874189 1.4556167367530601 2.1679022473790495;0.12699148010165193 -1.8748476488770991 0.083777073751440473 -0.16027941380832139 -0.45207212311222794 0.46365063746196244 0.5907254458299992;1.1301453367770318 -0.40646278884827514 1.9769792063298979 1.6162032549903802 13.162197418664492 1.324185908444875 0.60902878108778791;-0.77973465868776293 0.44292663993330866 -1.1727785390774748 -0.31512186054513269 -0.5644752701517276 0.39922744858566861 -1.0207409266247733;0.50554073676099331 -0.099511474074194764 -1.3441414549763693 0.50070772624178495 -2.7596429944956107 0.5241156864741694 -2.1418220142476612;-1.5414766382729059 0.25285178464228691 0.30497450232810258 -1.2075831067822691 1.0142811137853005 -0.7278715291532587 1.5705631181096056;-0.18038094993729215 2.6796352615909353 -1.5978971049714501 1.252075900471405 1.308331623831311 -1.4839464966904028 1.1110760306664322;1.5682881332485348 -0.97638171965694376 3.0913727098847881 0.27819838655906115 1.7665822097183599 0.3150761803492893 0.63597216136904988;-0.16041660283746273 -0.45949779662548829 -0.64489716985849788 1.4977558046913784 -3.9487319229961515 -0.63763877489071463 -1.0025625471693183;0.98228000672153359 -0.28179844098419865 -0.30878750833538221 -0.2650235223320031 -0.27187566424459142 -1.954849435989398 -1.3992274374587605;-4.6047263017116613 0.66861736078611267 2.3348534670456349 -0.36316491744417445 1.5417416340861885 -1.5912683506456839 1.3791428659820348;-0.87622495450883076 -0.53452491011621728 0.57129382304766252 -0.9041831087619544 -1.7549292095265641 -0.68220322207147277 1.6717093746127474;-1.8424010296793902 -0.44524551524771278 2.411620578714059 0.31619662999758297 -0.099178657458230013 -0.22343825882057844 1.3392124100962841];

% Layer 2
b2 = [-2.3842298147916283;0.16580177107179139;-1.8773607197164561;1.1199483658502041;-1.7299631244672966;-3.5820650521285535;-4.8523703708601662;4.4416005913483261;1.9511741721867097;0.57357626896591629];
LW2_1 = [-1.7235213111928291 -0.94123326220941805 0.88155756037124444 1.0059050989361966 2.8319288477699054 2.8809437510539539 3.0433774397623332 -0.63360842965774133 1.7542181088295181 0.52905736255320368 -2.5003310846295399 -0.89773549920047169 -2.8382899211811852 1.77399894967292 1.7175625011623139 -0.21972658554345784 -0.91261796943163098 -2.3176295767102983 0.51422294074832009 -0.10213258888931606 2.1169937634063203 -2.7366257727352208 -2.5186852331664071 0.45657037330113165 0.84538909388299899 0.9360019002971357 -0.84047828228288368 1.2417180503199403 0.65324852942880551 0.5248048195019589;-0.26191824398102681 -0.24612080154587579 -2.5967201085053491 -2.9383089712834631 -0.53834097494320166 -0.036892283852263397 -0.15082693865674535 -0.38112910379402076 -0.067218161539028237 0.59149814409719947 0.67075006316069929 -0.5355577914657228 0.24803587872626223 0.67233829153448021 -0.21109832251725164 0.46683680975062491 0.78909384364701696 -0.092752246974739772 -0.86253888918809307 -0.23177526088652092 -0.48364020141980724 0.7052074310788341 0.62546227680221411 0.87839969979634946 -1.5388954733424007 2.1934596949301746 -0.522336839055772 3.0061372832850588 1.9861045163458706 -1.3772227627438154;-0.23683983993439103 1.1488496691856116 -2.7081400654179459 -2.4727819194713105 0.074314178233243544 -0.27350016852645193 0.43882605799020424 0.57824249693891261 1.7906228659646941 -1.2991968321782326 -0.45790435727891038 1.4972616144727635 1.0889593734175711 -0.37191863113464729 -0.7244137662079051 -0.77000536119904106 0.33862284839126489 3.2521509090519407 0.38769344579384685 -0.43413978790329105 -0.63122671828794874 2.3010480645911078 -0.1448470873619177 0.086479338584605547 -1.6712634008466929 4.5094289135914671 0.73016392264669461 -5.7813829483413119 1.8632787094478058 0.10883305154671777;0.69538484819468382 -0.41678541138138631 -1.0849316652453844 -1.1464513466000013 0.3810613296627981 1.1883696083037323 0.089610839442301082 0.35467121406929358 -1.0680132631698105 0.44939235329435473 -0.22245330697801882 1.3664451593395639 0.31523248582363733 -0.59896324410908497 0.55659230207499399 -0.19743124269884552 1.2290266933475382 -0.77619391677215266 0.69228036394764036 -0.36124730748499972 1.9087785011594509 0.57668102275658517 1.2295630198040597 0.74269548241924999 -1.5837324813229572 -0.035668639849682764 2.2697036351409228 1.2915319443382418 1.0685173203683074 0.19252115307093215;0.5987262657382133 -0.0025109700247235717 0.49675859059684718 0.10527164194601246 -2.0657501144605646 -1.3943589970924668 0.38524002317780298 0.34989452754837502 0.59273241694075074 -0.13192812431642739 0.78800357240239771 0.593237482165757 -0.58088658415426442 -0.95613734859396093 -0.24269684111610906 0.17810807961448749 0.17494216357128858 0.76640496675713954 -0.25045479617468608 -0.32209555129194045 -0.82357579858166363 0.26558962149414045 -0.76439683339084041 0.50972933272041088 0.055376221383522023 0.55878447698748113 0.2717801604219654 -0.052117116969267227 0.87536282113151931 0.33184612484995651;1.3202423621069381 0.075030337221380194 -2.5474000735493969 -0.1909987896450098 0.64641254898471878 0.55930779206861925 0.35347749840921994 -0.5230988380076339 0.8590669503198175 0.90750906424132016 -0.00091588668905486989 -0.60213987317178941 -1.0095006151780503 -1.1531845674536487 0.36141756690944726 -0.21050813396213991 0.50055565117210621 -0.097537103702989292 -0.29989597636339166 0.50539211927292205 0.54384073672619071 -1.7179620848238224 -0.33072755122600478 0.52675291331630747 -0.29604834122319534 0.73580470157119915 0.094341585303572784 -3.3995990662754441 -2.1790805496259256 0.90527268655442161;-0.16835028930519308 -0.57561559823247066 -1.7801437208682898 -2.4813932946999135 0.6833752447470437 -0.83761526221993188 0.20667585284806994 -0.34511276086637266 0.16340024117239857 0.40578813278430631 -0.9241360728372221 -0.66301393075871173 -0.32184405922613596 -0.64290228732823096 0.18977838533504746 0.015178798804886366 0.8913761864030525 -0.66262860992354111 -0.43781922690257918 0.38834110252268816 0.65492304708091742 -1.1415917504638844 0.65051672805861194 0.65238133305788937 -1.0331514043731338 -0.041540643108041828 -0.68891419946797006 -1.211033624208282 0.74596098879674622 -0.9083958170285763;2.855670084203473 1.227964156380229 -1.2391982604982925 -0.18568041406486818 -0.53208921097262718 0.60098649922549785 -0.42891873679394238 -0.38374907745269921 0.62991691548439255 1.4811689894214597 -0.55957877111754917 -2.4126605297185413 0.4014274776772816 1.8794837593544282 -1.7443619510151263 -0.72013640638208876 1.2554967992203641 -0.24969395231071398 0.27281717696245134 0.54684565486390735 1.631149572257786 -0.05675341702532595 0.37019399059054536 0.099568753444325864 -0.020713026236190604 -2.2271396492564239 -4.0080592229512932 3.4912938932818443 0.10919240921606616 -0.018740274290602991;-0.27165551200588794 1.015193911112964 -0.23167634295116563 -0.25300652758847114 -0.78188465116622474 -0.33144039607656423 0.11700840228725078 0.23504298574237836 0.22940565325252127 0.78181302873265812 -0.74901274506329685 -0.0937929266660468 0.38868310439707315 -0.96448283134645785 -0.97116406702945246 -0.52935658818479314 -1.2395205023246265 -0.71543237678572769 0.44123561216233437 0.32273321229592561 -0.29328250029321179 0.99674575873413063 0.15056123806796115 -0.13925737445097874 -0.50392525171108138 -0.41843420828537425 -1.303283748281977 0.78722305202456588 1.2734483543357065 -0.75241049164294271;-0.44982775725365787 -1.2038386376016783 0.52411297767429321 -0.82989259111046465 -0.76719928601798182 -1.1062297064510715 0.56179879958054157 0.66721867216714803 -0.12282268976198601 -0.098983320440138661 0.47486763891782857 -0.016402211342275895 0.037807748328396423 -0.13198771568013878 -0.93433064988818837 -0.64042042002835031 1.5411891270542686 -1.4161553593282914 1.127710428711211 0.10162047423032436 0.46627850585971437 0.041438889475242609 0.57860443269229644 -0.34207077484248233 -0.3780710644031603 0.55703034209181412 0.60517946160505676 1.0599135770615433 1.989749632124896 -0.64233916179095596];

% Layer 3
b3 = -0.14124442854979757;
LW3_2 = [0.60926402004936864 -0.078111915705135121 -0.0099449890239124133 0.0020137162220713891 -1.3109119807235095 -0.090886187131903634 0.14971163477146507 0.12865254950441324 -0.094141252495406849 -0.057126034875331813];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00111018595614765;
y1_step1.xoffset = 1025.5;

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