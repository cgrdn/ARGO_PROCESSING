function [Y,Xf,Af] = ESPER_silicate_4_Atl_4(X,~,~)
%ESPER_SILICATE_4_ATL_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:39.
% 
% [Y] = ESPER_silicate_4_Atl_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-1.99149636107278;-0.28];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0604107502911417;0.0470499670650231];
x1_step1.ymin = -1;

% Layer 1
b1 = [5.5283162621482553334;-1.5651538518138992107;-3.4965816127702655791;-5.8837988852750164881;3.0103320701276952143;-0.926317433663195966;-0.39385862278623956501;-1.4115997603227057322;-0.20843373376854074097;6.4175138416483896719;0.56822989251221378559;-5.7781803466756604948;0.88459861067285161518;1.5209015124508771244;1.1022675099237508878;4.9821267151495467473;-1.7963728972409382934;2.1378211261480610794;-6.7333644144743667326;4.8840634507097444583;4.8658905753970786989;-1.9605380941188481625;1.123855267081108833;-2.7241837325250757296;-1.4307716643790173716;0.49647079427660656403;1.7751883896292328657;2.1549995692577814665;0.48634585198391233618;2.0072604106194269491];
IW1_1 = [0.20616841429871360369 -2.1937012846205155014 1.6237859117204660464 5.6418700040236577919 0.51743289093858246819 -0.1972439952332749602 0.0028569300907677376566;-0.15164501697920027001 -0.15315325994149525668 -1.7243040609110855677 -0.90706827961935665439 2.3827207713926275012 -0.88014873377449520664 -1.2558811270479712796;-1.2914074840902733943 0.93339147631801555605 -2.977273749485993104 0.57738489280390037361 1.3081247240826292533 -2.2547188222203189412 -0.3334874626906374484;0.46754781471295875361 -0.28124910339339387333 0.82018569368370330963 1.0749830777761397727 6.6780835902584447794 -2.0727457553028298953 0.94816664541277351219;0.90986419756478242871 -0.29541536188953554376 -1.627317192078277408 0.79723815181628399085 0.38339623539995820733 3.0623251594891005567 -0.48157075387102277197;0.30951020250717226068 0.34208371128088321811 -0.097463300838117106206 -0.017300701032372807486 0.31195069064705088779 -1.5316856631125974619 -1.2563729600666972974;0.054532344976845600892 0.072342964726730518699 -1.1823205510933638696 -1.6360235897956860729 0.39816662167290600705 -1.8843257551225247592 0.99461487669501436049;-0.051850105479029427735 -0.026676029241695303068 0.26464433751541044382 -0.48861723008264840162 0.8973718138430767377 -1.4157835026413805313 -0.88173477729215887777;-0.42493097167553595117 -0.01405116835737752097 -0.1379183739411137255 -0.98733358327298026413 0.60084702057119065977 -0.34730308232250683975 0.66604293737691022681;-0.16120299853724687211 -0.058047222070267259775 -0.15777792212037741737 -0.79602739742867878459 -9.2135436342653456165 0.0060359724909005169763 0.42530516462010531376;-0.046425661532444761903 0.29825113645685152886 -2.5617545165733557333 -0.13827980304649831189 -0.81465839674703199869 -1.1583552980308713387 -0.87852520652891463726;-0.28321294190600848628 1.1596601138422151234 1.2440492964498688355 0.97881032722681982072 4.9344218632873619867 -3.3849810583701080979 0.34179332136772677675;-0.54421753214233759 -0.309793302748045285 -1.1457411322540025367 -0.36446922784484186986 0.32683863590391565301 -0.21940260440200892722 1.4500147486171426348;0.61604348280697807105 1.9033535147320974623 0.1959988397550581074 -1.5010209689715559023 -2.4983766859855598419 0.33905444742610574282 1.9632729624287437176;-0.41889758540723542879 1.2729014828017470862 -2.3672343459320623893 -0.57945690484268119747 -8.442476093019973149 -4.1734057738025862605 0.66087523988883345449;0.056070558464525535602 -0.81231363988707594448 1.6138689471417593246 0.35942337206164481911 -5.1096052322868432682 1.8342989823084736578 1.4969224406007739514;1.290702244743630267 -1.0113647873212971984 0.34515459163185829849 -1.1339189760140300223 2.095157539262948454 2.6865442303924811362 1.2111052900448930902;0.01525845853598668464 1.0223019327923021926 0.15045145533948264815 2.9372036821345544055 5.454502087706454283 1.9495381501344206665 1.699181200729728225;0.38691388452561320532 -2.7699690297430388242 -1.054694207551241325 -0.28328847260550205078 5.0526398486426016277 -0.90399789884167136567 -2.0834793571051086758;2.0309578293114722847 -1.6336679025615334915 -0.7981112769916441918 2.8963705939313504345 0.081545248704325778988 -0.80475232398441320925 1.9356862397408660659;-0.22165527803501261506 -0.23025180632324052099 -0.14603484266002664249 -0.95812957092134898307 -8.4370323190666915991 -0.086534511878449835165 -0.33750222330479784372;-1.3701251717241593742 -0.54509069578231394981 -0.54620598628524419382 1.3941421830650357894 2.1211070347027480842 0.13198723395544820214 -2.0228620926182125928;0.12436050900939304986 1.6020474326003117937 -0.92866421002268018103 1.1056672377662579709 4.4698134786080174763 1.0079561723326750933 1.4579973293536301338;1.2876752894511538372 -1.1037853330618592196 -0.24113520434608645693 -0.21034946800120007948 3.6292409631841411333 1.1634303093135984764 0.97968030495428004567;-0.15778859281423993077 0.19699687327457562902 0.30521102843297792662 1.518477365781088162 6.0534117657780681654 1.1894661879574295327 0.50142851494081353003;0.040523401410958628799 -2.8512502399808097309 0.67484378241354414651 -1.7782980415659881412 2.0848357794487548666 1.7804154445229403159 -0.42780085495121095152;0.18153080578649530286 -0.91503479245915686491 0.59873823654269864303 -0.27903262861117755778 -4.4049058583931746114 -0.40524602207484988758 0.15730879589297294685;0.72429056319895845917 -0.78592713253926682615 4.426864918052943132 -0.089086651612109060694 7.093909353933869788 6.3237546147859653445 1.7530492235266672552;-0.21525671305518162546 2.1006460814153968819 -3.0833712044569163702 0.10027831048916158174 2.5378495299311114586 -0.25898451577249381739 1.8400143515229421265;-3.2789955127812859814 2.5417690287295595652 6.2947587534353575123 2.6695586144117404714 -0.3522532920605525586 7.9478366491634835356 -3.190333004302896569];

% Layer 2
b2 = [-1.8372278860552531121;2.3601064649782235172;1.2746751634265640618;-2.717648550360251658;3.8857182355545898389;0.73812408659480377437;-1.4717205369069719101;-1.9423157322823261239;4.4282690697119297951;6.607802225590337919];
LW2_1 = [-1.3316903224013185714 1.9495713880462044454 -0.90925859352427973459 0.48813617600024500343 -0.87706631176715021958 -6.4034323720007320091 -2.112085382367220987 9.0913158667750977315 -7.9971520335761221432 10.813249866133181953 0.62213828702866968978 1.542954756406357042 4.1935546234094749352 0.67820924226598877649 -0.57673553021036738642 0.32215759210150324288 -3.0422014539203598993 2.5506647311454218041 -0.071022674224308621205 -1.0013511179679255303 -5.9760603425805127742 0.79790316261412852494 -4.2417861475571445595 4.6238190909138321416 -2.7714747694529653366 -1.0231648995527324875 -2.7374848937193538845 -1.1845165544016540426 -0.34651650925809174275 -0.22815491903269405349;-0.46459224986823438597 3.3376449950925821675 2.7007027758966559716 -1.6603914276659401672 -3.8841945023820465543 1.0119172651594117163 -1.4779613366844295275 1.1149163620495849969 -6.1137431285585916996 2.4803963812212939111 -1.2723548348721218648 -3.3895117832430128324 0.030387037809638084429 0.36886106717455696691 -4.2201767589187522134 0.15781749869989902813 0.74886461670358717146 -2.2154906803543377158 0.29805241748261041002 1.2534828055829441151 -2.3491916040061759929 0.96263287674017483653 0.45100271402266350895 0.29913554886119175791 1.1974320765191264204 -1.0022305969462901309 -2.7261347829837307977 1.1660179881504371124 -1.7037891978783992197 2.958992199586274463;-0.11075627512175587053 -0.026888691108080377268 -1.9106849699719294922 0.71094000378591193368 2.1661584222528866839 2.2617176903102849117 2.8519899740535743504 -4.6531174825694261443 0.54139184665178463618 -5.3470637201256261406 -2.4144380737956812055 -0.46061422223276854426 0.59028470028499802069 0.35104595834394486387 0.34719215764652561207 0.51420581115695340735 -0.27828491178995373723 -0.8519258437169060505 0.75750484858847655367 0.52334056069978707182 6.6416437244773192106 1.0490259462697593129 0.34508152943358555431 0.066576420227833568721 0.13771582220117292716 0.34028422721774892468 -1.6082075769279216004 -1.0616331790472821606 0.67452961472097516804 0.15949477202963147082;-0.38525168567915135664 3.1131263239565205581 3.2102344636670263611 0.15150598425056796548 1.5049099708247550833 2.8901545369636005844 2.2399659733827297359 -1.9681857664062367697 -1.4452536951687586786 1.8805211322120716222 0.90550621676956644102 -2.0340869384424737909 2.9658323029429967121 -2.0245541327670313336 -1.6672368167124032023 5.3107146591584779571 -0.69594423260436888423 2.6840445756248927367 -1.4592584922698315086 -1.1335664978336175146 1.2848274399287267222 -0.57915603180348063095 1.6131130942187628108 -0.35639312872039874414 -0.53179718472469927892 -4.2498667936798755207 -6.9624236825338368106 -3.0268989871576406081 3.9587808105700430517 -1.32511430187688517;0.22306656268894708983 -1.2505596932877380834 1.4517209178486960575 1.9716822070721629068 -1.7742576717572124956 2.9026565163802393599 -1.0903149004044356829 -2.8364785305553210648 1.1775546822798819147 -1.8731937212940845683 1.1959733374545331586 -0.030643854053571249751 -3.5762202039677664089 1.2886770683704096285 -1.1481541027730868265 2.8829684570919340558 3.2926749816866176523 -0.60597309862472281683 0.39723012921030426137 0.5554506385674263802 2.8438163831458647124 0.77931565399742563915 1.1254201864261141885 -1.0105681718070056441 2.2672045763820327657 0.53146323562874719926 -0.80142480057294829265 1.8048455133575480591 -1.5963766162846275698 -0.97029843847989694083;-0.072894945150514145471 1.5408471465440380932 -4.5802117359258938123 1.7691077868721349908 -0.30736903527482256626 -2.3947547772953110545 1.1131571876394488196 2.3665611328855731266 -3.2481844734306735134 0.71780161994027502637 -0.046362474904379037677 -0.54820571339441670489 -1.140819492786441014 -0.43012810887406099924 1.4947989501762151132 1.3729362381476866162 1.5874643790414515454 0.43514470844009095485 -0.63004318933094272115 -1.3140835349008155308 -1.0405049121876315255 0.92137772027773801042 -1.8796876730515481579 -0.44562744272926352318 -2.9010030748851862725 1.3117210959724476815 -3.7788813596905601599 -1.8949890856721109955 0.8855764755734226723 -0.41189138379514117494;-0.79377515919866115102 1.1570636172001829145 -2.1272173386676613838 -0.13661075853140269842 1.8322641164698183491 2.1065458128465777143 -0.23183429631635196766 -2.2740388183959310275 1.3502301607205537959 -0.76148660680260837896 -1.5842294754747021646 -0.14846171971563534853 0.093555413207399240605 0.26669059868973643557 -0.32243900732660324415 0.39452594176822108896 -0.23823873583327195846 -1.7494199088759558869 0.59788558393086277398 0.61917347164533931281 2.501300229082059623 0.57855406269587406065 0.48543668000151068975 0.41887723069109805696 1.8990718475753913808 0.48240752654135798938 -0.8065172840496286355 -1.6564513424974440792 -0.15581645563931986742 0.17928731245032267227;0.8512480836023572639 -3.0414420190948043832 -0.94253698525649443063 1.8127541201954866512 0.57396090524463783122 -2.5906070079207541568 0.35919038073533715583 -1.4458731647852125501 4.1620114026872920832 -1.0601184359251323297 1.5722364549744585194 -0.42955804501851957422 -1.6387587975943982421 -1.5902608295518345649 -1.5323864037531025328 -0.5330350283416968038 -1.585542006041301244 5.0405738080596060868 -1.3025718999802278208 -0.15854672428113950056 1.1781253445897994503 -1.225128565759519228 3.4507860857065404403 -0.092869103060354563084 -3.0667667497097657048 -0.073939047072937066907 3.2576745281488630468 -5.6228480258354656129 2.0630420495340695552 0.54237603495933095488;0.33197441492548135367 0.095503105191407311469 0.63213364587604681244 -2.495535469974477838 -0.14074042325880964377 -0.60256151690451598135 1.8919177336032881875 -0.37932168490181578102 -2.9377640013854970924 -0.82215839737841811541 -0.18123605249851648669 1.6112929205333874627 -0.24237757102765217221 1.3456901043261193518 -0.98847104478215974677 -0.78934511441498889095 -1.7031327730460326109 1.1240074039785934445 1.2226609110962411986 -0.41065074888159358579 1.0406527158220724161 0.28202024834666872266 -1.1443898489408870223 2.0072903854287669212 1.1290579221329632986 0.92663997055683477999 1.9324866127868456367 -3.5125139252916142141 -0.47150513138844862837 0.57608084829911954117;0.33785941240898359483 -1.4180337006710677095 -1.6196425574151502857 0.73090570598575443917 -0.56528709363171569802 0.5733331389883338236 -2.3825415286340625443 0.16827035459238012804 8.3828834113770245295 -9.7432600812128011825 -3.425434618884988236 -4.6341472530187175494 -7.0781784214458944859 1.0334317871050791027 -0.98448955024540929504 4.1137240856012233792 -1.304475366576535178 -4.1815571196503427132 0.44609722476766194843 4.0000518000082516679 10.055691298652268628 -0.46220500030829281268 -0.11530374787132702252 1.3876327258108254181 4.7971056261754965178 -1.7837798086248866092 -9.6264687707904119662 -1.6173692437066053973 1.842658828069521304 1.7529546201397721017];

% Layer 3
b3 = -0.060248625757494331245;
LW3_2 = [0.53086795087266447357 -0.06550640899672038886 0.32786255388344309747 0.0064703952737506188406 0.04948780762736600114 -0.058233337460886977488 -0.33621621368249954287 -0.052228807065262748688 -0.058815374626895351728 -0.30817368701956038279];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.0145232735458572;
y1_step1.xoffset = -0.52;

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