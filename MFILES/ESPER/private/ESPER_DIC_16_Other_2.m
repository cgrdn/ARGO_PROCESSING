function [Y,Xf,Af] = ESPER_DIC_16_Other_2(X,~,~)
%ESPER_DIC_16_OTHER_2 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:15.
% 
% [Y] = ESPER_DIC_16_Other_2(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 5xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-1;-0.999998793562952;-77.961;0;29.715];
x1_step1.gain = [1.00000000274156;1.00000063368067;0.0138606862425759;0.0002963841138115;0.248478071810163];
x1_step1.ymin = -1;

% Layer 1
b1 = [-9.3810003295587360839;-5.8312625414928289658;-2.8133856811496449346;3.7943603908583711792;1.0397063547483229584;2.1444990763863116534;-8.6207931309714727064;0.14691208961325358251;-4.0167617077696986527;-0.11317109457848742449;0.55147777749700943595;-1.350756262941174457;1.0619271076878817883;0.012725573914151331462;-1.2519582054934497162;-4.6911935238059658815;0.85539210883047556155;3.4843058852282950966;-6.9497506849387207239;-1.4268865682464813016];
IW1_1 = [4.3201911548732478963 -2.7512981164071685924 6.3292185440244645989 -6.5973679992901432811 -1.6972113335592733385;-1.2765977301948130407 0.75459326118008185347 -3.0498022252766134876 -2.9530476480447109822 0.94760741996169173262;0.69873756884554838464 0.3238053478303440369 3.5328815649347355965 -0.97534262808443983328 -2.9424305764824967291;-0.28284640148851825092 -0.020336192760617224917 2.5201492544941483942 2.3454531434596144202 -2.652117413160926418;-0.48010793932129569583 0.33982707019380475888 -2.970481939398239124 1.0288145194650983871 0.26681127222013645284;0.83261616247940850588 -0.79660340197787105065 1.2243762004060341209 2.0554732768021364286 -2.1802777117104068516;-0.50448742296258430873 0.38553273015877237428 -5.4316733613028977956 -8.6060036374284809568 1.222428274507035395;0.33929650805586630824 0.34510031569069166135 -3.2554442590857748385 2.7177624245837850303 -2.7249830144563986778;0.67751648494990368565 -0.087083714318727370451 -0.84543964975956176211 -4.7302766323439833229 0.54581515639914823801;0.24422660259483724987 0.72138319351645741051 0.35861323981647730275 0.012396982342964121479 -3.5559640660203264417;-2.3131770937378690611 -0.96202677192224328451 2.395608741641647832 3.2571691956187991401 -2.9087547809071168103;-1.4669114218081671375 -1.5487392441108946972 0.09891087694085516635 0.34135505555313488957 0.14186033873320288978;-1.6977470972314188113 0.19029281510571904867 0.104615277292694972 3.1403320474315110644 -1.1752026492859672935;-0.54416153259302768586 -1.0522392413424579427 0.10723708077288385265 -0.65535069216361163669 3.7875850789447587097;-0.12964920118821340878 0.14395713268825535702 2.015077867612936835 -1.3055609605468214696 3.0054308271971219568;-0.15834391745044523736 0.32936661228804076096 2.5897456242448364527 -2.6876823512783043491 -2.802588555975933815;1.7937894490695014404 0.059991395385399721996 0.13277503150836322821 0.24792189983076257098 -0.96388057289648276793;2.1626172758257991013 -1.3998714591576826294 -1.4755588230517493464 2.0765763510420298665 0.99954130744095670558;1.152902718910521207 -2.3553051570876197829 -0.9622638357619485161 -5.2480348769405935627 2.588253386640994691;-0.67806270085841002793 0.62158290434421481496 -1.3172330867208863481 -2.3150819471268455629 -0.92713860957972893395];

% Layer 2
b2 = [0.10531260937989150861;-0.23109907075873181714;16.548006286757178884;2.0392097359602612272;0.24170729521897843517;5.3624434256829340839;1.7230462137553685942;-3.2808976670888805316;-7.108912788834118146;-0.35828885535180665656;-3.1366984957526642397;-3.0802922845326050627;-0.41638231714434920105;-4.2357339049179962842;-3.4655198234484489994;-1.6767419674863557333;-1.0898185600729006772;2.0207514202209200249;-1.4914269238260822181;-0.64179411936342012357];
LW2_1 = [-0.70850734643777546484 -0.024747370433581713373 -1.2796522681191300208 -0.49800250107813509581 -0.50252708933450096485 -0.14764778630356459321 0.80591141106412556017 0.14228703297599143429 -0.92621206774288677988 0.75835724056435416252 -0.052023413316360629655 0.12047981412275995949 0.29623165093617770394 -0.1229794371516291368 -0.51408963106152882894 0.59727925054171238095 0.037169849495959493557 0.092985473634742105142 0.3041433917343873139 -0.28568367440944464342;0.86796455706431940857 -0.1570443335166182286 2.94234467461968352 0.60390730209670584472 0.75722762774737206737 0.14552564088988920177 -0.78703141643342100497 -0.1198430659643063001 0.94377780910108988177 -0.92424402816063555566 -0.014129570953924228821 -0.014973217940859782915 -0.24359159385161113787 0.14515347942397199832 0.5640310553691308959 -2.1711444900405254543 -0.12745069838425171493 -0.047374054847986193928 -0.31696431178991901767 0.17892759149287060239;2.0184363779714407094 0.77979265765045513437 -2.2732015689765225908 0.20910463088421063493 1.221866089991100468 -0.3307441797164672459 -0.68608391429657189509 0.8726769777576726117 -0.47767168809281529418 2.5219221010009729156 0.5810980835454506721 0.48515897064211532808 -0.33750921480041096157 2.7161918739000312506 0.27554629537153674246 13.324187493343918831 1.0640385295728889137 -0.29614899877222844449 0.094233541809315840565 -0.32859590616376915806;0.40452279385467421191 -0.56953461896539370191 -6.7790967438123530542 -0.64329406681141731994 -1.6297458066222252349 -2.3131106236855480951 -0.271435915695704022 0.496803773296827067 -1.0302387936508798916 0.97928463975922963591 -0.84209145151423780984 0.37292807678835965257 -0.10815428155441526858 2.2974871753952554876 -0.18301680451475266231 7.4572648182888574553 0.82872481443318879446 0.30604108463564089204 -0.005417005131564709558 -3.1611715664387900482;2.3518061337066398231 -1.22426072109032269 -1.0180922876370492869 -3.010096948220666313 -0.74643512544354106986 -0.92594874716360908717 0.43114251028128169896 -0.77793731784036046495 -1.9387769102604677229 5.0920843097621713014 0.86328816887366699451 -0.40720860370734690559 -0.91506302634490443992 4.3990349561555772695 -0.27626674332322220806 -0.40852880600060187399 0.7529876626886583546 0.027560507392086163597 -0.45878935095148781764 -1.0677518582858518403;-1.7506064314116132064 5.5854646587051952622 -0.69029750436539960567 1.1094061158369776798 3.1112700223876039729 -4.5945549217217989124 -1.4412880946740176391 1.1029468455103519364 -9.8217336245366873015 -5.8671364089199222747 3.329886860312351704 -1.5723815349945642339 -9.1526552219222558904 -3.3151802191386914309 -0.44226341295920729157 1.6498732276520065021 3.90360039535447223 -0.54766757353158945776 2.3512331849338012901 -6.0844784305154391291;-3.2379954315687200506 0.93665449403944844864 1.2988961715862652468 0.52817492139826827113 -1.5331688821908076026 0.42562956422102604659 -1.83839375283336115 -2.5154297971510426457 -0.65616693603103970478 6.2062518212216133406 4.4630795925523889522 -0.026400715193168607792 1.3279315707572769689 3.5630891974328520178 -0.62193746797604454457 -4.5158412931305509375 2.1383185928402350662 0.31344573073481196701 -0.40894512421501066912 2.1945666785285187217;-2.0129809405454608395 -1.0148138938850257418 13.217698423772993976 2.3601610770856482624 3.656655582926615633 -4.5677001658057561073 -2.663692937623872492 0.69547297187232670623 5.0581624464665386753 -2.4905190612596146416 -0.27857555207017220544 -0.33450526506878952571 -0.34793357749959585856 -2.9520892136950802609 0.2977289223247827632 -9.6767636374270491473 -1.6007300341350236828 0.12717776754919168924 1.0052072301357761752 -3.3359804070090972594;-2.1663919424466113739 0.2620979946686707307 -7.1985512065261927361 -0.5076217625590944138 -3.1476445511353929874 -5.9711972181931507464 -1.0480431380973123101 -0.63530286903891564076 -1.9798420228616544492 4.9914136363976417954 -1.5876137132391483497 1.3994851971736590457 1.536701748802781875 0.72365400354905184965 -3.0438265067002658881 -2.7047561482523274634 -0.72071950724720490467 -0.28685399866747857134 2.0786942753437123166 -4.6021931460194069885;-1.0703501400116055553 -0.27290725496045947773 -2.3628481574002768717 0.19701700201312077887 -0.35504006317392960979 -0.89385843426059730099 0.39587606808024639049 0.26407097174791888117 0.093794564260647472764 -0.79132700228384666996 0.34149286874479573006 -0.8949156516003339279 0.049929618216804132202 -0.78970794495996576856 -0.25638330909523437962 2.2508610337744121566 -0.22363472091095676353 0.17252396080520310262 0.26937894003389439845 -0.39837236517173513217;-1.3433851785959587399 0.070511566703891456753 0.060076350373238635028 0.44005723583596101367 -0.2056729421419594972 -1.707067066265190336 0.18282767482397055403 -0.23985499069001578465 -0.67214539633391190421 4.2975619020574606921 0.67611314068961569923 1.7985539959908907193 -1.2563195551163481856 4.3349280538404704188 0.61423187574677562406 0.032401484435280243634 -1.6877480442862256016 0.77303370729488740665 1.4914625029874291062 -1.310930368742617258;-0.43238411669157383876 -3.654253510791458659 -3.0747580391399274014 -4.2357580898543893966 0.86513550919759429902 1.1684682631588996227 1.3376064244457168684 0.71374936329324667472 -1.1795380876656671454 4.0702678592691006187 0.86432599107258634152 -1.0935513036698263356 0.18792231788353785937 2.457151986824243739 -1.5695443482650486278 2.0582022978456051554 0.95197284883732002925 -1.2001212315179408119 -2.2387424193322464916 0.98733398707277253425;0.55633580929262527182 0.8555444342439045835 -0.028465938856117031092 0.29110493945501880741 0.18758254304181906646 0.86085745091603249612 -0.67427282269971278161 -0.30912839876929754102 0.40637651738008528923 0.034458032160433145485 -0.11591590031888616974 0.3731591329465951401 -0.20350269610938748199 0.0484329214802664762 0.2183608099678465142 -0.17057310589041441151 0.13993793973340754033 -0.28969278999470066127 -0.21173998531417931313 0.8814888100687883199;-0.23052002356935594185 1.6148747284495257315 -2.6970840618179257042 2.6032833396930090686 0.60795148108261709563 -0.78534614895487209196 -2.1638286101524450977 0.193272662722846017 2.5622582862986478247 -1.4582483526214062852 0.45150115540559249139 -0.47453735691271575758 0.28880396868192304005 -1.3902635343477665053 -1.0180491799559967525 0.68293339003048858515 0.19086031100393591187 -0.61890461418816433703 -0.50030225473110900847 -0.47356486122593871579;0.15422395081096498815 -0.16223658365504978196 -12.092267162663610236 -1.2830182132081540125 -10.507483847551426948 -0.57438860467046037872 5.1638276559306657276 -0.93109529997078832597 -0.79732190179869633084 0.14594392095851579927 -2.3155169917115987488 1.0171766694788877405 0.7694690046848255971 0.5499404108455329121 -0.77949579421809911395 9.7044859966047152255 1.1699726564339238966 -1.638603509104717082 0.24263262089810552768 4.503980895189890532;-2.293379130523163667 -0.55266503855931126132 0.48484413987035052118 -0.65332923566687162165 -0.2069892881193494405 1.1305016380599735015 0.57383262577203486554 0.24698223990843656828 -2.223373219227728903 -3.2237830303621120009 -0.9966296566615152619 0.16333926681090807365 -0.35397999300112414911 -0.92566021706977086314 1.008168393721597722 1.8661558925963193101 0.77663607210554963522 0.10221850982576850819 0.2988352900937653045 -0.1470737303932358464;-4.9984362388978444969 -0.77611144472685678064 -0.94115292316986376431 0.81763698303669063439 -5.7479556223852723562 0.83106129787260463182 -0.76567288002376521217 0.41007268497259957707 0.13891307903315439076 -0.47865739835632314936 -0.097245102479532705142 0.9739412132627780494 0.46089929481994806881 -0.55185169482304852195 4.5374148162163434606 -6.4121086361180088531 0.097910935089315281887 -1.9883344432236116361 0.031308351390592230323 1.4543675830461852971;-1.258621365371943801 4.1922529888937010156 4.1144863013446748568 4.5996816725765299338 0.63358434567874222232 -3.8029694880615361186 2.326706688970149095 -3.1552278108295248593 0.1122130784007625004 1.3179284775410931019 2.5439173781185400181 3.085269226004391907 -1.8619024797321068743 -0.74054558205285292427 0.95471630646326843816 -3.6825336819563028179 1.6502034996065366723 -1.1441334432332579407 2.5339687625541542637 -3.5361666761295182937;2.3040505579594716679 0.33665013023999457165 0.9389658413465357123 -0.09482421404015067834 -0.93089733181292899644 1.5817313575014217975 0.63832725306844151358 -0.30983563304367112146 -0.024486694437428947052 0.66182984712213632772 0.30226128144826186483 -0.020414090004997477446 -0.027182482999663328677 0.47940223391962549782 -1.4893989660006092812 -3.824526628461176081 0.97333578029354994587 1.2123739976737279989 -0.59484919842476802199 0.94175549936420133168;-0.040746832421511988698 -0.53716534192829368255 8.8661914507280688014 -0.26631896453974868155 0.3424411482444669752 0.013114482712748769949 -0.6416024928173399422 0.05729251360388114972 -2.4148676481285304973 2.1321446181839434075 0.054004562562352941002 0.87240986725612901242 -1.4084489285137742343 2.719240294964456961 -1.2555615647600459894 -10.1312740280784368 1.3881052625079743912 -0.96335871519919236139 0.42244513820989237907 -1.0307256918520055766];

% Layer 3
b3 = 5.2592216034226968446;
LW3_2 = [-2.4164220032681877903 -2.3084743332868478127 -5.787942230391294629 0.34647142949682840918 -0.20432575938765890067 0.12170871248441632317 0.12590869242275651296 -0.18071304259418111138 -0.08472120690217903316 -1.0576393556421284092 -0.20451753587022722392 -0.1673697993242168891 -1.5322177661587084163 0.2873042744420343797 -0.34630168101595087959 -0.25613338003451679992 -0.43190196287602256042 0.12996579140959219067 -0.22602861385760425472 0.26020539686424221104];

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