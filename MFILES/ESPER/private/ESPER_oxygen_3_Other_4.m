function [Y,Xf,Af] = ESPER_oxygen_3_Other_4(X,~,~)
%ESPER_OXYGEN_3_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:45.
% 
% [Y] = ESPER_oxygen_3_Other_4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-2.18999082656054;-0.9;-2.02];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.0582073296585987;0.0415843642790311;0.00819772922900357];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.3549694605163855599;-3.7325717589804523477;3.1412436231687532739;-1.026030247041430199;3.3838298853523860465;-2.184187330520699355;-1.0752117594058672179;3.249813982526001066;1.6266288228131162708;0.060811329730492871826;0.59770846914639919056;-0.49732343138007428784;-0.20026902359442855239;1.3683224840384455856;-0.8452817307856185236;1.7254452027508639933;-0.49124641123137724463;-0.80120461972069212386;0.24395464784409970349;-0.88328681294392230594;0.16736735677660069532;0.67122263833489459461;-1.6188489834786543575;1.3846011668027076169;-1.2480581469070965994;1.1174748448197748818;2.0452837898499018898;-4.687727330888558086;0.70243040708636061975;-5.2728896748197273681];
IW1_1 = [0.12027320723268501712 -0.70131987583886967741 0.68828147305856945959 0.95476259358353288142 -0.63202396844628272454 -0.93765806744794144567 0.35522582322758561313 -0.068083393821453244699;0.12662781795749850078 0.29729920399666481812 -1.4518053079092607671 -0.87007763196233645075 -1.5090321429178370494 -2.2709312139994848323 -3.085537289199189015 0.39232164337245900576;-0.42218780091682095446 0.77781263249757826017 -1.0820567422854479034 2.8325328923169430517 0.42688855914787265933 -0.88238362458701846691 0.20412535775179441178 -0.11205888193800125907;-0.12915288342341388339 -0.38637647500592042782 -0.076940581025770449219 0.12394754299663378327 -1.671207079787980998 -0.25428173386526725652 0.27746478160610466013 1.5831772274718343141;-0.54469888719580172864 0.079968658159913913464 1.1914337767943545821 0.39215347717633353142 -0.2229435805321828834 -0.28627541477531531777 -0.51162145530548253092 2.4344297684562841155;0.027650388119773626483 -0.7534098717431532144 -0.979645960288940576 -0.085704326808556316464 -1.9247810980172477269 -0.22789729841771888541 0.55046169697579883096 0.14593328591874768496;-0.028476830794249403944 -0.069414111652077975512 -1.5193108987719723402 -0.50411961302676899788 1.4809336247646629481 -0.36721006283765472711 -0.080077863576727831285 0.20930037662988959513;-0.32998407797134760022 0.15003649737277605092 0.91649986054919974077 2.3925284033326823518 0.0012217698209153070223 -0.71530786356112430191 0.72723221767051193787 0.23514825094657468285;-0.42160502955170253703 -0.52015208301886461939 -0.81678886918592230604 0.051311284070938066593 -3.742020971972255694 0.62190701399719561238 0.13515199505377559208 0.31841473394933411667;0.61342293220775134799 -0.089412109877419612691 -1.4235980022482659368 1.2217747326248105111 0.63315561848645807164 -1.5957289721495224732 0.32018345890356009198 -0.65484735180741870941;-0.4641040221877735239 -1.1834902227045946965 -0.28750074667847369536 -0.39580441423360562814 -2.0085712363840326766 0.14980305033189625363 0.24504538291008828854 1.1540252000390756049;-0.050461857331863139986 -0.37463475936673684696 -1.196736782223693174 -0.30422691187418759995 -0.11761972613274347677 0.93341774515026043613 -0.54153593055800686162 -0.1464663861777959486;0.18973977289708984784 0.86623666373827346021 0.99008156840842032054 -0.038068310202928140606 -0.63565803739148862839 -0.23554907675770669906 -0.26209098988409318398 1.676160061421313241;0.13199074261747581471 0.32685846575894622612 0.072023868961242909492 -0.32840996812031281182 -1.2194645053489510111 0.86497235409614903201 -0.34869976612786102166 -1.3051894884446177958;0.14197932733189033705 0.17804384339828602246 0.67966110967626103267 -0.36092372439719849764 3.1949696980516395506 -1.2753790470599117857 0.52808119812943621341 0.27229245287087716632;0.067898649686436829409 -0.10287150660818192294 0.11954588342622148034 1.1833375256215326043 1.2971508113142518059 1.0621600823673333913 0.28553558108451793096 -0.81659302463863914223;0.12858800632925501684 -0.064260374786755988796 -0.64946370573329459397 -0.042726708753207200131 1.1450607247426625168 0.73954907732135166665 -0.82604426948711284773 0.4382851669864725741;-0.0088493591812988815076 0.14962930916736472131 0.48720052255467449775 -0.2289326157208429191 2.9246413333255798506 -1.0858877190970126492 0.57824384168157705322 0.49362962789110381712;-0.27409205776623540851 0.080384991055140575522 -0.79622828270994761013 -0.047171731405002720328 -0.32015803751710669722 1.0711034436179711626 -0.79347048757483473747 0.48843425585345834339;0.27290794841566928808 -0.083695481528586482267 -0.90675759456265525582 -0.76581204525628499002 1.397205182151416869 -1.0907473608952680255 -2.1133366462606058001 1.8789363821834632606;0.1685142188524398621 0.16895095800100898287 -0.7672662078433448718 -0.10962877163156853344 -0.17389226435335333742 -0.55642302344521954449 -0.67556845040778223943 -0.40892550641442376724;0.10406668998581043717 -0.027921610090123880066 0.10454760925740620714 0.13818558579700346289 -0.26056831558659443449 -0.43239342908034222868 -0.5185172637225433645 0.45721206913092121704;-0.54070411692081443711 -0.57513774827112429389 0.76888743128817582662 0.14130885130472356503 -1.6245280657391811818 -0.43196062254336592412 1.4508957649933278411 0.12005885899688058249;-0.070177490106036591322 -0.071061246981568376713 0.21436782686830468947 0.71045593956812058689 0.75467713494386690076 0.72984341323894263986 0.83875629518141914254 -0.50178342572531642318;0.44947666996486579372 0.32474576641952312972 1.4748204172482446417 -0.25964045343450320447 -2.1765433769540223352 -1.7994790948377867856 -1.0407686176714556758 -1.1234029526342594885;0.43806579901513797992 0.40536797735232649176 1.0082800081740301845 -0.1062067394367825629 -0.88228946844700695262 -0.46992962742705923773 -0.61840421594130834393 1.1021510798497020645;0.80337107228591309038 -0.22553028485357690114 -2.3410340309871617848 -0.51567173141155842053 2.2606370538035349682 -0.98412018729008132745 -1.8181659675786852048 -0.25495929460118482712;-0.070016901003521633817 -0.26755004865760168009 -0.030187443585070927038 -1.6492263767654855577 1.804865441321183317 1.7658554494727618511 -2.2811834560507429082 0.44068857666989846855;0.5285395110799741003 -0.34393965076812660353 -0.7816171550559550818 -0.28994827977469439517 0.42667787602325446539 -1.5947891733529162561 0.2041720319985023957 1.5217965048780159876;4.1976147203943847686 -4.3340575199375317439 0.078040926119163078756 0.96884204149676422801 1.0837045198036820981 -1.4391504479491759039 -0.31316049000474743824 -0.37547525129105069341];

% Layer 2
b2 = [-3.1057274481040679781;1.9123724484675466151;-0.63290976326386483297;-1.1180049326871259741;3.7954134869792355289;-1.0069539404436147478;-0.71784320037425075611;-1.93849964159807997;-0.71413501513465749149;0.50145128939845839966];
LW2_1 = [0.33434530638575771233 0.36580291260975816847 0.60182587861781888794 0.167732639399590433 0.033001562069707855718 -0.66335525431841635413 -0.74777754743123558967 -0.37004357689046862845 0.15361296205648469759 -0.24802673998931704102 -0.15934346780635350038 0.19016691018582912442 0.014275554836633223832 0.052330821487875635312 -0.43716783224643424033 -0.69725454028281874663 -0.67140388463447187029 0.30585172173401908857 0.2294709064005246435 0.4925194617089702076 0.64770099881555154298 -0.86588836643195399301 0.11112335384695661011 1.4659294279775496594 -0.024859947563055592029 -0.067401450491957198841 -0.036567644298090347388 -0.16281302136617714638 0.15258644375323895948 -0.06786082884334676546;-0.56442684145834309817 -0.41218367007722062079 -0.82876594973034689584 0.61076746077854127126 0.33233206751183774763 -0.77932756185981033603 -0.70434335149161175771 -0.61339886806009091824 -0.73163709894813666601 0.74468412039757014842 -0.43318496871794431868 -0.7440657878480106957 -0.7039084979776069062 0.33085476679194913974 -1.5360193865579458983 -1.4503276129618167811 -0.099648956489782031243 1.1303856711904318733 -0.39629407409094669079 0.16107984767748662058 -0.92337439897362882935 1.0626449885286759489 -0.66434866401587666651 -0.41832308017591379734 0.075543763397859162168 -1.4800760846106468804 -0.15889936676073979083 -0.47871629396053416716 -0.21556653063532540959 0.007648456160688551532;-1.8363574134741336152 -0.023974478953236580403 -0.9571773359743127596 1.4347788287734206669 -0.90179888634490423804 -0.24227200370440107879 -0.57965263417038970228 0.87336719381567728959 1.5348816538228291506 0.41993334482597116653 -0.13900741594329041328 0.094431193911407487751 -0.79400982267169939455 0.99885253988765621003 2.1642069311833171952 1.0678979016210683461 -0.84010378137807606436 1.3323856846211967753 -0.26085809683991573182 0.17484637915753500903 2.4574424492958573119 2.2677575950130739457 0.15254057165248435801 -0.7123877753427190207 -0.020400674727745118225 -1.5649678493569298965 -0.39444478296184537491 0.18933221089019069971 -1.1099834425642700619 -0.16567754744922544297;-1.5062524841578932566 0.25724589419460247575 -0.35092632093982861763 2.9955767561123702869 -0.83853661830533121613 0.24282886660227534503 -1.2561014855801220236 0.027182680915895977847 1.7164215767213872876 1.1025383670337169928 -0.13626299603710995134 -0.74440722662175395907 -1.0136770562645851523 2.4744857150720935834 3.4251079964640855913 0.10825300407598302532 -0.28035918790367914122 -0.41931058198339254961 0.35683712929495325916 0.14873038964107149207 2.0868746186873727844 2.8297272691379755649 -0.34950633183599039144 0.68309194698301312076 -0.21868827112878128083 -1.9984954093969524713 -0.66872338144365495172 0.15904721852462927467 -1.3737854399375311054 -0.2463599035376843327;0.48524741198710907852 0.5642923612585445392 -0.16570529833711444834 -2.9723863208180900664 -0.87761874372268355859 0.055097973461013326213 0.81192539428147292302 1.6878486887874932787 -1.7460339157570057278 0.66079039969407193933 1.0448784157078445656 1.06333613963924134 0.43443338560775096591 -2.9794767663079269049 0.070423394275600140202 0.19926698353814212283 2.2123687376935037285 -0.15858752793275981974 -2.6687153098656333228 -1.4896995008268403282 3.5372176544292135425 0.42784864207738976249 1.8975689064105267789 -2.683176713303647265 -0.072611096697690294399 2.5435716292576668884 -0.93728609797665085601 1.2007619188975067193 -1.6653609656293868468 -0.10048368232729050498;0.55919395772161994973 0.99223240112899591114 -0.20307660176683725584 0.03306753402263452879 0.36259744374124225352 0.1591080483487556374 0.45871917744048390508 -0.098356966792569180957 0.10925270190402662507 -0.81129584668805099223 -0.60335221066184419048 0.47136468170426570889 -0.3283981692967620214 -0.019291878101231636072 -1.356851813502498949 -0.29722279470986900929 -0.69909239310829918157 2.1432710759363207131 -0.75772597703115762702 0.20504309029087330885 0.81633094845086406899 -2.466864191288133501 -0.48641035912524632767 3.6547554077941009076 -0.26353774684466052536 1.0975175282692206657 -0.10186939250579769844 0.27240399447117658038 0.76764364909323945518 -0.013016764893580791071;-0.082293167287920312991 0.21113012154019222821 -0.47331441934749773903 0.95954961063131150034 -0.19950765753106300404 0.28003621598256428493 1.0396762129486405435 0.89870548043616571565 0.6087966560063450272 -0.77134946122507963562 0.61849819599338018428 0.98071848605797928844 0.78280987981890726157 1.1475315928392231246 0.56435920719248355848 2.3383433458206166478 -0.45843313035661431565 -0.2768382495803540233 -0.47416464116955242547 -0.14674853216784913834 0.89781559415001022106 -1.618875675393485869 0.33073455158630310491 -0.84719663028225045132 -0.0088877885782757768546 1.6134064714856972689 0.0091836257793026319224 0.552169280629827397 0.15000309021026231315 -0.088200977722559553706;-0.58673319340788543386 0.40112557205207094446 -0.60242670888175331445 -0.60931346572502509407 0.20720043399075957491 -1.0129115488625497488 -0.37168544069691938914 -0.69121617917393274322 0.64591595325153250418 -0.48820625795397282198 -0.44752643569450312189 -0.99620181464464396814 -0.48257720048111352185 -0.29798700915617964968 -0.25569172509700499596 -0.70540089074916023648 -0.87951900399368165839 0.59201122875284561964 0.68061714696650743583 0.45757206965032781731 -1.1557227780448469101 0.62097570539871427275 -0.7447152478912174578 1.7340582078554529488 0.13921966824478049229 -0.96069192818175519477 0.18864664588806775991 -0.19000128604450461367 0.22726312204229748293 0.015511513195145813782;-0.4967073377693731473 -0.3523826288804811635 0.24924643861588108296 -0.74939357751526525231 -0.19445150591041301946 -1.0236633764430862481 -0.67619234168762920589 -0.37688098122122831724 -0.27178361909215964509 -0.5398733498689319843 -0.50560144909210769093 0.20574118255040035885 -0.041980535784653931486 -1.2248659101156706974 1.4729658864551522512 0.12186890191845480003 -0.73698010481413323003 -0.92744756087824564705 -0.67416530653636597137 0.25330744690314926926 0.91198091724117191781 0.50650846441828145661 -0.91400645214883313727 -0.68627222261946874138 -0.88398670611735630231 -0.87572342882796228025 -0.95068971409589120292 -0.90366762601694439194 0.39489942167359648462 0.1174390531104562152;-0.23595648951201417254 -0.49211260617497054604 0.39579491146273548807 -2.1405502173306643066 -0.17023450667711459428 -0.31141914802887521452 -0.10912757144572533818 0.16189663541062213059 -0.11991762384041057543 -0.63629549588717637665 -0.33313457509073135521 0.083379995955446095657 -0.062282304385727162155 -2.1725816559290027641 0.57276462915923864738 0.76468433715745087742 0.49941422161170007099 0.44010282501858372095 -0.39905288196986049565 -0.08507627863724562256 -0.26168717077228426104 0.12565353977453350143 -0.58553084902365348796 -2.0672987990211666443 -0.42154603140261875938 -0.50525950775339267818 -0.31894489127591457711 -0.80897155566154976825 0.29780012479367623524 0.1465338172392501026];

% Layer 3
b3 = -1.6663034480127596471;
LW3_2 = [-3.466801424789329733 -2.1674580264793821271 1.6476746845731797819 -1.3156990767507239504 0.19965282714102508543 -0.58837522087614246846 -1.7412116331627458532 1.2682798662830125913 1.4331271892611110452 -2.2148518208329259771];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00454442172233583;
y1_step1.xoffset = 0.3;

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