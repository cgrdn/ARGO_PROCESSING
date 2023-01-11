function [Y,Xf,Af] = ESPER_oxygen_15_Atl_4(X,~,~)
%ESPER_OXYGEN_15_ATL_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:49.
% 
% [Y] = ESPER_oxygen_15_Atl_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-0.28];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0470499670650231];
x1_step1.ymin = -1;

% Layer 1
b1 = [0.059241003844662264155;-4.479669774968813023;2.0752910585046966396;2.6149744554504139593;1.5693567433776327569;4.2656500818062363933;-2.3981149209133429956;-0.46128575279101413642;2.6617778418118209771;-0.13127479896260610404;-0.88529296134973323174;-0.57259019858257209634;1.3944531061241516312;2.7554216898996739538;-2.0714833584980345549;-0.066142501685663573907;-2.7533342121530792745;2.5765649229891187666;2.2917198371240310451;0.50149504521964838322;-0.73112169633560564197;0.29250968978100871931;-3.5830746985407389005;-0.050406585149139815361;-5.4826988924982194007;-4.9849182919087020593;-0.30332621214785737696;1.4589496094828178219;4.6598923710410584675;-1.3464580761776956397];
IW1_1 = [-0.86537462069074555515 0.9353481123276184972 0.29943665231059296561 -2.648166948327623782 3.2194110286972610346 2.213262911087001239;0.97297378453515082075 -3.2191799590742711246 1.6955759510636254639 0.41476738529164897118 -0.8230255629161289388 -2.2326987844196493072;-1.1140259274573496295 -0.16994605487916875086 -0.34431367048660205255 0.363946259365782121 -0.88472116085619134651 0.15771183144920794539;-0.86870884946008808392 0.91243018442214018915 0.72144018520336183897 2.7405551418205091885 2.7850493861811362883 -1.8583680387970575865;1.2156719222657410562 0.96016789071076846795 0.67765159413131037525 2.8619332220546040979 1.5392043802699806321 -0.80145764201611091604;0.11132542136467488136 0.31620566127293026071 0.94505919639799518261 -1.5247697270824747129 -6.9340265023959535284 -1.5584761562364424226;-0.28690501109585825334 -0.030068132083949629385 -0.20602786783740359433 -1.7090548837275998384 2.4455067614855523495 -0.93993721218259052019;0.10475082868648961931 -0.44701660611225751962 0.93406067743916543211 1.8233890372231726928 0.76477029668253582173 -1.7002941925566048553;2.1094960157252322652 0.55342587938899912015 -6.7318320971695380095 0.11363975133354919933 1.2521727857993216748 0.82474196157799040119;-1.5242267872394104078 -0.56270155181644165854 0.86824757600147184355 -0.66971708921371209122 -1.672564979278091668 0.19875442626744652119;-2.3844621181129959098 2.3684231223202889538 -2.5696309932829586309 -1.6275704081094861664 -1.316077142595421412 0.35567803764055233584;-0.77916549778863797293 0.11518247172036333303 -0.090456049123616502627 1.837522811602587014 3.6958117454683918623 0.18149690925978828604;-4.3109414464587363369 2.452514314115539662 3.8925575873345761302 0.087627819007727106304 1.6515911143151176255 -2.7088307057422640334;5.715571370001035767 2.1527067537361626037 -6.6901532228638691535 -3.053113952257484609 5.786945732026008038 -1.9844643803080252997;1.0341830894832908516 -0.053138131319958946397 2.1142249830519750375 1.3152616831398624697 3.94912892023068407 2.2875350810729884188;-1.3069231606862794504 -0.78099174788803560343 0.80674367804814384186 -0.73757600820519375606 1.1109423760978263118 1.860465900564753472;0.052248198117192799772 -0.069394435016766800595 0.78616748842072403658 1.5339364516021478657 5.3571600676111135186 1.8770106981902576759;-0.11763916378841397792 -0.99118241407038865098 -0.18585284288593711954 -1.5172841956202904878 -4.8519824392030832527 -0.10572448845708221077;2.4696759995148305222 0.34852833071437144818 -1.9613953551868887892 1.4031228424016417566 0.57304130255708563002 -0.59986448100473965805;-1.7692354971804258312 -1.9517679241516694422 1.0608773715391814907 -0.82481814784106743943 0.36078747448764697525 1.8642654288917974714;-0.52102686564087541399 -1.1359237102120323115 -0.077013513120854859562 0.025510991295188998468 -0.26764652689526025053 0.39616127599519529445;-1.0058356646469241991 -0.089843977883369327553 -1.9402236017175757965 0.57437259683133934374 -1.3854785011057997313 -0.68954214764599885967;-1.928356263772319501 -0.57831283911750863691 7.7017568288336617499 -0.69989471831524685541 -1.1788338380773411007 -0.80344127189349523466;-0.22137943474384683129 0.013311337677937195439 1.1821739206078298867 -0.98854193978137316901 0.96545684094664940833 0.72245735784832010307;-3.7589164440468412209 -3.9679702657145345945 -3.3650332700973120126 -3.2861749453233484175 1.5822496886218029299 -0.28074777919489296574;-4.7853622724639430785 0.06303730233490992263 0.82774477202242424667 -0.40095005779902737064 8.7119846728762002641 -1.6632370421834627994;0.13489907419427407675 -0.63753856772806316577 0.73593520457623906594 -1.6982138207732395685 0.28849074940948027379 0.82958987937110861832;0.87108517207056612719 0.75145105603159279006 -1.0652368711975201965 0.37761839470881214398 0.48596456865473808273 -1.5202522237334414879;2.227699909718107385 -0.29436969093583703616 0.0083942604604179023309 0.31448921892129666489 -1.7617319497424230867 1.7052401893972388702;-2.8158439758530438013 -0.28062735534451238584 -1.2960812724377972494 0.49178874339658051884 -1.0154589644932867643 1.5214433478524189702];

% Layer 2
b2 = [-1.6633525287528863057;-1.8342715429606979427;-0.34831512473906639515;-1.7879407231765223063;-8.6340588151464476852;-0.33013719929665052977;-0.55488946138696848553;-1.8957117523965543171;-0.30127507018303922859;-3.7444785518909875499];
LW2_1 = [-0.78958634160953677927 -0.26394209693453257737 -0.92250590522399011917 -0.99101867667474219381 -0.21485639010205132005 0.61328214625031174378 0.56977474768284097628 0.074942615117937066982 -2.6372372767917755532 -0.84976227662328496226 0.75844207467366997477 -0.61002386463005131567 0.5754250756140115719 -0.54623545254285832407 0.67990812509047127143 -0.17516735436501415513 -0.046403859328175693644 0.82299520065685549675 -0.20666988137600378339 0.58904547516388061634 1.1093197225114941329 -1.4222436064467827155 -3.0399318984002543509 -0.96396327512660751058 0.36412227392363594181 0.62766808847556221362 -0.66935908185220427402 -0.051736092595948211803 1.3126892817174615757 -0.62600243221954798845;0.015058506326642105005 0.39833358334318086369 -1.5020856818040875247 0.55128854556889739236 -0.96108394590165757698 -0.49685022916173982033 0.44101473075928315781 0.10799863311981781899 -1.4859813877101519797 -0.13474287581846325357 0.55611587622519509377 0.42325794408676453706 -0.016709604697930528772 0.52019188904047464206 0.172961633772525325 0.99609927588107738394 -0.13972766205676354079 0.74439638130075858058 0.49508441005013209546 -0.29218027054885259419 -0.99104126291203031851 0.0040767353480739617483 -1.3754828245218224669 -0.19083747567229866759 -0.083945133345791900226 0.18058892484761279729 -0.65149027666894465671 -1.0298947286968453962 0.64579417611198641769 -1.5793186703477803956;-3.1696868754972697957 -0.47905649531138472241 1.1975871992682560752 1.5241542003529653382 0.29353805605846255977 -1.7514079127761346122 -0.47309474453560168561 0.76008346148534733366 1.1969307275130902646 0.86517763851600182345 0.15884938558769134964 0.26492403873645248291 -0.83500426874701128011 -0.59401241064407572789 -0.32632232552768691836 -0.083100653668246940442 -0.37891001809813407153 0.32111256940597215914 -0.017044270057709930838 -0.77380955818114571798 -1.3655572458770328659 2.5726211669861869247 1.3775518163872255695 4.5461891699747862816 -0.19359195439244819559 -0.40318706304110080163 -0.07885354443919638523 0.3939407745331002797 3.1210677847551235864 0.025852605445637642095;-1.655283895691266105 -1.5637390175589980235 0.92715033772658117517 0.24633215021183951787 0.95265053145487532671 -0.061366485789889263502 -1.4690346795873820973 0.0047489153741856852953 -3.5532900485899228116 -0.56092293954288507951 0.57173112554526162032 -2.0612374473650842965 -0.35587100614187205938 0.88434545323509972103 -0.36136052753968250784 0.42872582561714200899 -1.0674124303636165489 0.36066634804478903131 0.76673600054471080512 -0.81762655197735678581 0.14102136795361530641 1.3630625616906009157 -2.4475847781136925718 3.6159272938948148202 0.60449965672732985933 0.18156858486591048729 -0.69248369512627161448 -2.9790261540600200263 -0.6011288039843158959 -2.9497991059845221073;-1.0974203261533854725 -0.12759370220777940808 1.8806305521013653159 -5.0055986200405833131 -1.0891368043590121673 0.21023056269416948161 2.8182353552073164948 1.5073224860664020675 -1.2942923262941581353 -3.931209269414056795 0.79956944480440439449 -2.0583557632788491709 7.8188337026111787154 -0.85521109238297587929 -0.64235597413784184528 1.9488337822145969103 1.3079692798851452196 -1.6802548532038386053 -3.4717553363755886409 -1.0331155618849092725 1.2838119538746077808 -2.4704315850455151882 -0.70533344259771546536 5.464476722128624786 -0.4751311002512261239 -0.31145721010443150334 -1.2803416522471953165 1.7038667672138319009 3.1173428383693222443 2.8950841514691472156;-0.49197435343768702865 0.59643863742269864758 -2.1596613746430644021 1.3252714091223540827 -1.0163141428538184918 -0.5542550831455225202 -1.1911904703905535907 -0.3482750160378707549 3.1847198385890984618 -0.74194087342075798475 1.6962478130649176755 2.367105989792071874 0.25198440230729202138 0.33811605706453079501 0.10902501539668485453 0.73852362994658282691 -0.95897364176516497469 2.0244991978923088105 0.48515764025555480066 -0.62274688617644891053 -1.1591631452646034006 0.4779651425811490828 2.1696292210330474504 0.74240550125788218327 -0.39762320969487152666 -0.50427287143761023724 -0.52973015594475281187 0.44548750119395935654 0.13124053129660800954 0.48565770118456469406;-0.06486103079240398972 -0.20391271286626483361 1.955184954371801398 -0.0048973255038782543408 0.21215147793705604884 -0.14440496985216907944 0.37821131656202111593 0.48035039911550964087 1.9495621960399724948 -0.37503454968517813128 0.92236814147478585202 0.10139583136869116664 -0.40288819261880676192 0.33934389534850661896 -0.42939295367773422374 0.8419593155604482293 -0.06741461717931572506 -0.91109609903294730415 -0.76707665944042580097 -0.63427494235079062701 -1.4869422644738570227 1.0919067943507523299 1.6546983976487767976 0.48307805364286371397 -0.14353170936462059104 -0.25673408627909960478 0.88595197008140136319 -1.0474254554500195269 1.2225131466084626641 -1.1647496310569818156;-0.54771270215243117452 -0.66338235555510882691 0.21133094856826079022 -0.78852549203710298187 0.38305808006352592976 -0.16682024316619525894 -0.4475759558768016011 -0.42290133146379110807 -3.1072971826205852963 0.912588378534877398 0.14164487507843923075 1.9071764666469077643 -0.53149614842484504962 -0.096313017674579254335 0.43873324054300977259 0.2188065151572762268 0.22057712465879522612 0.64782236289434080856 1.2036476528359727478 -0.076036883579212635742 -0.89577077637101409913 1.0069685249415545325 -2.2810257734990946332 0.76144093993254735597 0.20216726883014765614 0.2765716221453432544 0.42983509841210770785 -0.054473932808029437713 0.098237783178835427766 0.61362890488823884638;0.72053023153666506673 0.73350091043328902174 -0.77139090889560124609 0.11286572507777835328 -0.35153743643519519413 -0.59088801349238495586 2.0129749202135589492 -0.3916322033408533021 3.0859908840135954478 0.2106279202140860507 -1.192864753167608427 1.4564083366658449048 0.19333830609867649897 -0.78486232589223969836 -0.32894105021732372718 -0.64811783070036455001 1.6716919056056351867 -0.37225508783968130899 -1.3813948163407370195 0.50098295661163982917 -0.0039070483787706196746 -0.36771533850980431257 2.2341654282722855918 -0.83410360127165217303 -0.50350832134355238967 -0.35777157296915018669 -0.058897450913497469138 2.4757412011890576053 -0.048826433757171716632 0.81686135064778164772;-0.25243994454844009834 0.054751180488072051511 -2.3994493318313847574 0.439123514228214884 -0.59140769251547875562 -0.76627729871867911182 1.0405360987246377036 0.63944196829278032723 -3.5857695957704978085 -0.02793650827095347719 -0.16890611837476518509 0.12571336878035960227 -0.22997766270162131597 -0.37151858344702226589 0.013660842680887587061 1.2582953532902823035 0.13661122500252415035 0.80466034459462310036 0.049542905285049371189 -0.36846037879675119786 0.096160868662705539789 0.24709011086135390656 -4.2377790838677675822 -0.1807117730814272738 0.062919520977236645387 0.27293999090126452867 -0.65675150504807955354 -1.1807978094418538628 2.1521982942831803243 -2.5863118518666881052];

% Layer 3
b3 = 0.82930023410195641276;
LW3_2 = [-1.4358286806354445542 -1.4509475705120098432 -1.0424877148508229219 -0.37627846944951226504 0.43628673949896168427 0.39184254378920441164 -1.365436461997877382 -0.22615984293851404408 -0.59567473610378507409 1.2106622152656267843];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00368391969055075;
y1_step1.xoffset = 13.5;

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