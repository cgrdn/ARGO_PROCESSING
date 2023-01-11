function [Y,Xf,Af] = ESPER_oxygen_6_Other_2(X,~,~)
%ESPER_OXYGEN_6_OTHER_2 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:46.
% 
% [Y] = ESPER_oxygen_6_Other_2(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-2.18999082656054;-0.04979];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.0582073296585987;0.568038194888224];
x1_step1.ymin = -1;

% Layer 1
b1 = [-0.056882265565479726843;1.31533381013635009;-0.49892196430940760621;1.6381262955439810369;-0.14500437306573865648;0.37457502211550075533;0.16032663362400387252;1.4388484828804835036;0.69975175332549532925;-0.63895189612179925653;1.1779071541644725585;0.68736984724626992715;-1.3683131401119210668;-1.4584600338162476696;1.211387486089398946;2.6294864146433081231;0.61569340725811827486;-0.051115380550019372252;0.35152155193425904667;-3.4187461856657179737];
IW1_1 = [-0.40615500197250103964 -0.33922612323451745153 -0.22616957865084807988 0.34678302530496424305 -0.01040054292874626439 0.46836349302476693035 0.13827710637535711724;-0.054715765399325662355 0.041616423292666369915 -0.18327316567386472967 0.99172106905128598608 -0.30422208751019841344 -0.54146809803021433982 -0.33006900375011971605;-0.076431134457020918904 -0.19360011135044510877 -0.019252605386384707975 0.39600984182900844655 -1.6294646032959496651 -0.099884678642809990312 -0.50726408076323004082;-0.45279482834820850012 -0.29226392087144670295 -0.03541613207253032497 -0.39297544342967694053 -2.6134950018251754678 1.4522385562879669418 -0.45846559580522305843;-0.13638919771833615813 -0.20752562927783949065 -0.21902204073725928257 -0.74525543213001399501 0.040317631662359111611 0.10691679784510675633 0.3071431420093416742;-0.072811487736223964862 0.3573559819449009245 -0.16478421990049574308 0.096085102765790852963 1.2415650465148173609 -0.027034171023645560406 0.09882031729955574606;0.11417161990351815115 0.012683583501096688459 -0.39070793426339706089 0.31683724936340540435 -1.5160868084262126843 -0.73894813085823729537 -0.32788953266365927774;-0.011764239204066034156 -0.03962026179457270314 0.13404268458317938895 0.45774438119391824831 0.20379365036737018269 0.17267933221490461282 0.3703100444622424714;0.029542370587956820471 0.024937957525373085493 0.22315165924363980499 0.5121848427109644275 0.99189072137714684452 0.23704988911218000114 -0.18294687875909215746;0.50873608056054653304 0.67003504471097896644 -1.0009348026867959103 -1.5883646547344789646 1.6271914080987348594 0.30773671862830564994 -0.41470581906132075733;-0.058213879096188789197 0.010810538551511148994 -0.18266559608240803825 1.0320957798426939611 -0.31769130331091716135 -0.59620340756747347566 -0.27905233003164470196;0.21679143289381813675 0.28513006489167186386 -0.17701466639399657255 -0.34505326811330938597 1.6525856057486154604 1.0020955876147159547 -0.64906746646499613451;-0.33575939991760778147 -0.32004754007486718725 -0.97826437199340043893 -0.02719120395211674715 1.8925449898197332921 -1.4803696673863879774 0.79136846032252661232;0.059544326383419159121 0.28001755943436418272 -0.5145775485944860117 -0.78988983471028306749 0.76609695022229884476 -0.86254970100864847282 -1.4707272820034837935;0.20056599219850190785 -0.064110296063726729399 -0.70242763821857667761 -0.59254287960142681957 -8.3753712749180113661 1.8184029700435802024 -2.2529296127036189112;0.083658391205871512897 0.2511782963241374067 0.07818067968341678442 1.1368162010812490337 -0.91236978234840726554 1.0073080720793865517 -0.17885647079689859229;0.01492578603894595575 0.030616562540981814844 -0.24464399926020558018 -0.87082760825760918699 -2.6960006245635153022 0.70947436395260998765 -0.18331196570601146489;0.11186422465541873139 0.10631632026232303023 -0.0023150946572325780022 -0.34307440719308918142 -0.11718656351577431962 0.069575779568593856816 0.28201162134455215469;0.033383346660030142894 0.19816298911823176931 -0.12024013465639298015 0.34940561094933875186 1.4510596228380479022 -0.088041050536310089258 -0.52327438693225247768;-0.041219869637879318069 -0.27839379833507665873 -0.062899927855767645557 -4.4668182295036844565 -1.4642771323961916163 2.4523931568181618346 0.54231273956065584319];

% Layer 2
b2 = [-11.631229819188551033;0.46361556649132007468;17.08252349098435019;-8.0150502285651690215;-11.369494212952265144;-41.287492367939655935;-42.77729283701288665;9.2774604535110345438;18.56556574171890972;85.516518546287827007;-35.524714112859314241;-45.826303238676892704;-39.762728577894598914;64.354338538962508665;14.813635377629658763;-27.87717780672227974;21.277133493755989946;30.226496780702714062;-129.19107001148412905;-20.02995463754607286];
LW2_1 = [-7.297841285569757197 -32.124377786003485369 0.47927602126958024353 51.933018142496166547 -45.837008807600071236 -6.3948007017135237717 -3.07279245067070228 18.677311566097785089 -14.072346199591425631 -7.8173201335597681805 -19.6181577395217559 -6.8232135712038308739 12.891105506870310649 26.749532837598408719 1.3743260008426885221 -5.346811559119502455 4.3442604881873245759 -20.162298219151839618 -42.679681268404188188 7.1151354210757569163;-3.7425855424137761673 3.7777285938492943806 11.306307277515159626 0.50708696884023662932 2.8868882634023282918 -11.662500517048279391 -16.645669581491663536 13.851420396766542353 -30.33276937384926697 -0.67816889451824613477 5.3478040839265119644 2.390506438735226169 2.9897627476449089023 -1.6732764466775187362 1.1195860627601263992 6.4164069861434622766 -13.586103014254248933 16.382232657925925423 23.099395813288051471 -0.86230362857483044969;17.289587517145978524 -22.88881637240785949 -2.2951540529629506082 -17.285098028865625963 -13.862971763663294311 7.820862837372006382 -2.2069429195035596969 4.9221133227325992721 19.385650161453163776 11.172444591602609165 15.474449571888925448 -10.989737132366448336 3.598196202907020691 7.2950000345987717765 -3.4990442924061513352 1.1271680575494045229 30.905318776199123931 -8.182344978453745199 -18.172111430726747727 0.20241260826150742069;-18.39397867689978483 -39.322497993827063567 9.1762566226201816022 -7.1502591755209659041 9.3768911007840944905 9.8085197921899780482 4.560925532927128323 34.138160016368850336 12.547312198350605073 -1.1592085635643400998 17.57847146607842248 5.5938536219646595171 7.3338763400702031703 5.7484924441146807439 2.5568417161479830568 -0.43375238839419166803 6.5025029848434598989 -33.095127767631559834 -16.911245304299590941 -2.649997190233044364;9.4515401978342286071 -32.069548056949784609 4.0176213982806245895 -4.5879880204489102979 -4.5649083246299015926 0.91437556436538336424 4.4303716165287179152 22.021976753539714622 17.111216114204879091 3.8913234623262731304 27.352893485543251728 -2.5991859511440233987 -3.0920227474668822154 5.0436097606384429071 -1.0028517582680571696 -1.2539972010765694233 15.49614221351875365 12.025138305686878581 -2.3686298302542496685 -1.644575581166840772;5.4632432075733747823 52.908716731431645997 -30.583028083156921895 3.1708947016572128774 -20.515233630873748183 -18.849289248057278456 1.2477612507871886915 23.855960754495988851 -34.084554400030704358 6.0404133069851653204 -55.48609088120003463 -10.737337754027397096 -3.3054671100221875157 -0.14514113188854141367 -1.1914548234530657478 4.6778011505256982261 13.395450388875719483 -17.540007253589145364 23.410207886715664216 -2.7209954894318344465;-48.956235422053602235 24.723339546344199391 -28.20622591874732521 18.503261612780534051 2.1905568276091664792 -1.8206109797736951261 -28.172735965257828639 -75.712409452068698101 14.30908412754777892 2.5135330662291108794 -2.4496835119530406821 10.793342410682281951 15.339156294544869397 -44.048921362110256439 -49.107330437242026733 8.3961678127477874511 -30.878154145111992079 7.5571829932847052191 -39.565647167883049917 36.610219366375474692;-0.077877862479269643892 -7.8397507057238646766 -2.4627932174210731553 -0.63282283722545573657 -1.6281076369862945707 -1.2572550117750063148 -0.4136667043707089042 -13.292329644325954874 -1.7932955725060422125 0.14998900092873818091 4.7599663423255051953 -0.93191485436555387967 0.12004995263426901375 -0.98284258594099083162 -0.04825098684192161147 4.1815139441701916212 0.76859149119056602295 -4.349361051446900106 0.96396659417021313132 -0.61281248885672479076;3.4178072461874622334 -49.296474467983230738 10.989565477366802781 1.5343209040128891196 4.0499156680497963023 3.3594026637746856601 -2.4783116554174773327 -12.627829306210035298 14.760192798999769437 0.50518857538992745226 48.535012989665865746 -1.82832335959926362 -0.13169287161790346752 -0.63610730305323737177 0.92075309608101818526 -1.5055231340811896512 -1.7674324264741958501 25.809721144566704965 2.5816948480674692945 0.40387453324499722473;27.286991995925959031 -81.769222193219761152 2.384187912349466032 -5.7483710892220685196 27.885510560770260469 -13.209410839383407321 1.886017139433117551 2.9691053128632529656 -79.007264836633439131 57.127207110841467852 -7.4893427675863994963 -101.72643266931109451 -108.51523642369771494 17.905040704902351223 7.4513216915646331984 42.11578843712197795 -65.765779186183834781 -25.397721413636251242 0.84690359106154744495 -65.210296759815975065;-63.883587102293930116 3.6601369805950776382 58.285968577670601576 64.364509685834676134 19.679747910787241949 16.139084370897116116 20.723842890868301225 -45.266816618329897892 -72.025154366263080874 -49.412929867129896877 -36.48528645285450267 37.411667268929647889 56.799915178317057496 -33.373099369098298439 7.2092553929226443898 25.535407465699623941 -26.59000003542761803 -30.412798259433614589 11.852993180869034973 -24.756770305627068041;57.086398395625252533 121.28203806835594492 -1.3831352279495678914 -4.2966142134671079233 -7.2646161772228401432 -4.7235605170852901225 39.136433395417135728 -26.399492957388570602 -77.521315189037309779 -7.4908347430125159505 3.8019843070423648967 27.876685557705158658 -13.473884778579341415 -28.030463923871806742 -0.28794508452124506492 -11.364670809036223176 -47.978767871629131037 41.370559055497636791 3.6628702534199555352 -15.870340953841820308;-30.232964129526184394 36.359216130513090093 30.350233105812932877 0.20820215771128905424 29.633511325638583145 16.048218429302608001 6.2601440759687276838 24.127200627495469121 22.013353273734526994 0.0013389060473357220979 -19.809876541297608554 -3.6975795558348574232 -2.3976364230782412079 1.8705701715276628061 -2.0071531038924197432 -12.648369398159923449 -0.63031556307843528142 1.0891696436695696981 1.7298941112878842841 0.99977103338333717097;25.582784808903575424 -64.212475838787284488 -8.2315333942435078285 15.292362362853157975 4.4560804082004787929 -28.729646278524580083 -21.497559244713873028 -25.916377939158067534 -24.863286160215114506 -2.8717383749471414589 -6.9535531550771221276 -16.884641434169452623 7.1774210328179552931 -2.1143165729827022581 -11.916264406055022462 33.576482035795308434 24.084741974352670724 8.764118955245765008 7.4771604554413801935 -9.4531973108780746884;-42.31425423184641943 0.63753355254116239603 -2.6615871301160312079 34.993249968651838344 6.5965121025057831261 25.069510370703390834 8.0771267342861694516 -33.23364926807928299 -14.013414986562255038 46.548347623972674114 -45.551645829799269904 26.349076709823133768 -1.9805889147127273553 -58.477697341976352163 -40.437786956254718973 -23.248602031616492525 -37.289438547483491959 -35.643555523850388056 -11.535105077990609246 -1.0979063535911430805;11.286318040965459986 33.189707727159579065 -7.2887489290884142079 21.514308266464553299 22.548702663628404252 31.799937675672854454 23.287105576789457473 -34.112963252166146333 -4.4826442397153254404 -21.556594202703752927 -7.7203348948093912796 4.1718519142891743456 1.3843610927662326482 -4.0342742970355178755 6.0313794800020046338 0.98410648636739173067 5.2625226564171461163 -14.392944450992587235 14.372052655948333921 9.410426131085984025;5.4284393760545555097 -12.825822028974615208 9.5391848819255304903 -3.6151348889212346904 2.4285054937796815011 2.5731423660385015495 -5.6288447068581426436 -17.010808689956924411 9.4137336274314762363 0.85723519366605138714 9.3273010685770412209 -1.4810434049273704105 2.3958725241387197613 0.50755421729027061506 -0.48425085689409641532 4.0923989224713102075 -3.2535284277790954555 20.160574796646947959 -0.69414814859125029134 -2.0103443727363052851;17.584326719184293353 -2.6100982499857487973 0.84806640312749226318 13.383051468427778374 -16.645150235792534943 14.659366094816538961 2.8497117085568972605 31.166267254081088112 40.237589210840518206 -10.682812301441142466 33.836042719295583936 6.8713241592557423587 12.033824961415733767 7.6362421052063647053 15.442642111521044157 -83.092182997520737331 1.5130479819274160747 59.869628694251765921 -25.753252755323003953 7.6432206202080701374;2.5616007636643485235 147.88402814991650303 1.4051455992092529712 6.9244165852323282806 8.1685957307451637632 -8.6702774112115168492 -9.3619695961331306222 0.25790834882338675715 10.224027721619169284 -9.6693105376822217067 5.4550511935945333875 16.430731760146759513 -3.6884262468188797612 10.682958108886898785 1.4403063712971038157 -9.8382186086510934331 16.355308865280122177 -14.714835975076157482 -2.7499849321950957659 -4.9853077739639193311;3.8221205070601271814 93.606681469246552751 9.9198150931406008368 5.7244198041189138237 -0.33883630513809687157 -7.3460122101766005542 -37.281511539395580712 -13.883734484395562347 -12.964412251916410668 15.224840807573155388 -24.495600999015707089 2.3145845713027646262 25.526600471719252283 -15.639001213243382438 -16.841653571343023543 1.6101828098950443646 -7.5453779891696610704 9.5613958803829994793 -6.2022844997687798241 28.777330893374280407];

% Layer 3
b3 = 15.116487264591999207;
LW3_2 = [0.017043777427033099392 0.11903381427217567257 0.33837188685849955982 -0.051231170144943195821 -0.17285064479206069255 0.050478914203588430565 -0.009499529481479505183 0.77022228518692881227 -15.619558150313823219 0.0093167387963680840801 0.0052275250573568096332 0.0048720229926602562354 0.098651952039637197389 0.0034197738290262509435 0.0057492138026585693639 0.0048814774297560002692 -0.043826691006447218713 0.03118196865056716699 0.014932430493927808385 0.009354600750214924279];

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