function [Y,Xf,Af] = ESPER_tco2_5_Atl_3(X,~,~)
%ESPER_TCO2_5_ATL_3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:54.
% 
% [Y] = ESPER_tco2_5_Atl_3(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;9.1619;-1.99149636107278;-0.2178;-177.232103709389];
x1_step1.gain = [1.0000000017546;1.00004398834998;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.061098595529566;0.0461352500991908;0.00425400504498441];
x1_step1.ymin = -1;

% Layer 1
b1 = [-0.082320941167346798;-0.64303108362483641;-3.0601974682411055;0.20810025271658744;-1.6648811874859517;9.3444895008780158;-1.224590266932815;1.0615578790030711;1.822484597970693;2.8402108486827724;-0.013435550783746371;0.68346724627607902;-0.098299680822593313;-2.7126062190768097;0.82888632049124777;-2.7830518176033046;1.7878583992644672;1.6855839848876308;-1.17314862643409;-0.58747906450684595;1.755264284955306;-0.062745671938655628;4.7885558197026565;0.18020340342516852;0.46951895866191895];
IW1_1 = [-2.4958901722174804 -1.2567217504785944 -2.8336706205710169 -0.31220388049005121 5.8359266376820829 -1.6261099118659383 1.1579855204755838 -2.1037374867433134;1.1192695918314846 -0.54017597607087353 -0.17377441209665728 0.51287150209726984 -2.5405738321565536 1.0940781833428479 -0.45249664857002991 -3.7777711605798974;0.12793603606965709 -0.37784223280801216 0.55503928228237287 -0.17565143702906039 1.0557348385342542 -2.4204468248293942 -0.49486101850094122 0.96911078180505794;-1.4281508135180587 0.82408857786859946 1.113914630272937 0.32434706629355187 2.3214633260711226 1.5761720173754445 1.0873345172295616 -1.9825229018747992;-0.10660543187635878 -0.15439003516493841 0.95565461937905483 -0.23806802683706177 1.5326224147065253 -2.7116810555276851 -0.67697443976545024 0.10361517324509076;1.0510832833965 -0.4713127340910746 -5.4434985160318368 -0.4113388089931006 0.14201628266164792 4.150824473520359 0.001140121270124559 -0.30631205099780545;0.29346468434418926 0.055750402430230259 1.2075755048817338 0.56567459441827339 1.1794567009844643 0.34561967240318991 0.042840252317638237 -0.45891409197804561;0.88726408565797521 -0.34386423795816695 -3.5688177633592346 -0.28012151571541777 1.9290924267097429 0.79290981270747929 0.16833811844963961 -1.082334433736607;0.33384632968758238 -0.49428274234895342 -0.90285167068331362 -0.61476791187326574 -2.0843731616482817 -0.7625798401513646 0.059961647514308949 -0.85918000252940552;-0.91430844629785279 0.29970980923221996 0.37662760568109188 0.2267893909524844 -4.180982979146104 0.54419625433013841 -0.67172668377506262 -2.0629946280861553;-0.47966584202761192 0.1575276536568764 -1.1088397525643481 -0.88460807302905664 0.1036959200772869 -1.2927830006662955 -0.40768714413243168 -0.41416424931590085;-0.23548160169268434 -0.14188858965828072 1.167217988467022 0.27227535706382749 -1.9292484328256436 -0.80162020412954982 -0.5531838037928406 0.82787725459462902;-2.0218281971079022 2.3371723366122992 -1.5823828930644719 0.58308905549202039 0.55999241540227518 -0.45071456696059159 -0.051349553717954938 1.2146889606922404;0.96948055485489604 -0.22811898370393588 1.2237461250293549 0.70685253122091962 2.6861459100560561 0.60028184951194208 0.22466606941519468 -0.40906595173215543;-0.13742797378499405 0.39586059668583307 -0.41828609999211569 0.39142184718490741 -0.79204239791996478 0.81539420335512158 0.26198562807834619 -0.56016003689607952;-0.43160925800456829 0.076275757895283444 0.80685871268708165 -0.61789349084556866 -2.9102051695655762 -2.2261099040653276 0.24118867484285342 0.11453152239759939;-0.10355039687301194 0.47849512393372728 1.5727705880779685 0.8053145923624293 -1.5474207872474759 1.323307241636595 0.1895439358317752 0.85341829655142931;0.70667837286577062 0.76040689724449861 -5.0943557767918426 -0.53683867516799577 4.3504538768206329 0.32973131899024388 0.78119618776132316 -2.026547978257371;-0.29694461522408588 0.34536910809958654 0.31670456382869933 0.36429187820164521 1.3804204944544236 -1.2517953494348373 0.32081251602958732 0.51583170545833723;-4.269884864542969 6.4398375126516054 -9.6509821797314466 1.3976027463539975 -6.0209926274934142 1.0075279802475074 -1.4454703337082131 0.66395821989759618;-1.890917905319744 1.9174288801180703 -3.5005204983229046 -0.33776487224815421 -1.9223519420136861 -2.3187314749883314 0.036352098270543851 -1.6313629501352414;-1.1781349457000778 -0.027625729852458602 0.59738083481173399 -0.75646691606356731 -1.290269852799264 -0.86744204136622749 -0.63927978126342233 -0.104221323438251;-1.337857001254863 2.0023735764291213 -6.4634776513562064 -0.75984277398887479 2.0428490963929304 -0.65743952688384633 0.35552521005595367 -0.27859024055014103;2.2544672561977799 -2.8481996488202466 -1.5483909880855007 -1.6368161165640285 2.6529900826848274 2.5317596810977729 -1.5345386477224703 -0.3926065918970017;-1.5869897997644855 1.7664757813723717 0.14166468258281154 -0.08156686126228084 -0.861590981661989 1.4253299901057184 -0.22839272444904768 0.89736560104834362];

% Layer 2
b2 = [2.9775348374385064;3.1102126056866437;0.38579740407408225;-1.9814993938767571;-3.6116146977980699;0.41379362586949225;-1.1003408561453993;-5.0289990527242425;-0.33856578157205519;3.0627770548214306;1.7312323863866419;0.88266404856497671;0.59596541226860855;-0.69177070382290395;2.2732766638478505];
LW2_1 = [-1.0223121841534257 -1.6992158994654394 2.6747011730592196 1.1955900425416448 2.1965080815027798 0.85888396100388043 -2.6963646353464523 1.1838260424360043 3.1679992357781082 0.97213813004725136 2.5188303615798153 0.59952828164049143 4.7014469529990475 2.5752970301499736 3.7635024701493318 1.7999571124337903 1.5277529935282523 -2.3384483009059704 -3.0480419313836027 -3.7028980391284612 -2.8281935317398013 -1.6525913921334654 0.51963549646057872 -3.5178110054486891 2.1912041168408862;1.323793007985931 -2.5614069377731012 0.37549510217981608 1.4504559839327027 -0.74661539711474945 -1.1319743323326226 0.46778745086636914 -1.9980070575950688 2.5172430745425731 1.7146803360362226 -0.058756999034006517 3.245800752629163 1.8604387993831135 -0.0091840367777037517 0.77690538070719739 4.0483752747178174 -0.50438005849376077 0.23041829001850617 -2.4697442661832518 -0.018399099877679854 -4.297784721969955 -2.8464500987455654 -1.2254216945978691 0.69289084547906177 0.23676821616920091;-2.8546415459978336 2.3581152166004218 -1.7999456936966265 0.36568083300382481 -1.7150677528147669 1.8067359835454446 2.1301680125048481 -1.8521495057829278 -3.9832345344950415 -0.44307669815253198 -1.7267708826905488 1.1302671095061216 -0.35499328228809568 -1.4539228164556381 -1.0315907904662558 0.69346908788171824 -3.4683231025194048 5.0462196008612805 0.98750539737469079 -0.53601963987430512 0.78994788727996479 0.78818986474688291 -0.15748699575014069 1.9887423055708842 -0.81545493787409817;1.0059195412188513 -1.985265774108161 -1.5494528365103122 0.3911077384903805 -0.63535753429248354 -1.4871919387603036 -4.3595808167498484 0.25834824652290656 -2.1365124499642416 1.6626514536905941 -1.2417556022761636 0.15092688600920656 -0.3813606888128156 3.0148408124515402 -0.05720962267744302 -3.3230620351080695 -0.32083813943620193 0.2429002180954625 2.1524406437287245 -0.42131880681564526 -0.15251467812217101 1.1782287013982691 0.19553825159005805 0.98117309274069486 0.77086283330576877;4.1465782716933735 2.2616938219760461 2.9572414605010611 -2.3752385801230398 0.26999189861133865 -1.1241044130987206 0.38768836108315874 2.8487532787632821 -2.4192701391946358 -0.72588433702432464 3.3678255771319683 -6.1691686096521217 -2.8752570569916949 0.15794610419682098 0.36566198918491422 -0.6078969199708566 5.2090737196655326 -0.46350981937882274 1.3996714712218121 -1.7924998269586121 7.7094422876189652 3.9809979891687641 0.74455334337672663 1.2741178448103294 -5.3491210480018285;-0.9368434939610264 -1.9393008278020092 0.22255873225315523 0.81324130660237581 0.96788549689300296 1.3434768434549673 -0.71147306998959903 -0.55695878559538581 -1.4019036844459678 1.6709750446398139 -0.15204198978132666 2.2226964821163673 -1.3418198108274395 -1.4369028141915274 1.277334968107751 -2.3463129905576796 -0.22951990312854845 -0.48881804516902083 -1.8447560575427853 1.6412462671986516 -2.3302643125871749 -2.3053220795008862 -0.88360119698579664 0.69249549323921922 4.1458943896740568;-0.77026452191370109 0.18090040444271785 2.2212572821630503 0.36393621762270195 -1.3294999160936301 -1.9183750445378958 3.8745041998640755 0.77716727927276674 1.4497026136767721 -1.1191763736363176 0.13690691653483322 -2.6401624047012588 -0.60945652318535359 -1.2973693167646181 1.0631264067473867 -1.093642416252091 0.44967981496152598 0.95216954558912259 0.57334748497625487 1.6762290983500241 0.54202133355492832 1.0578553632248522 -0.13151862356800922 1.6820904009226827 -1.0522445820648332;1.5430140146445011 0.48403006188356296 0.86640373079734712 0.86185093066046781 -1.0212450466847118 -1.0949424228257838 -0.41989069918740851 -4.9577621203069171 0.058411460202712109 0.0036703415355978253 0.60461348951609428 -2.5376181394373378 0.46671394449663395 0.96674971960280121 0.077353342659465321 -4.4305001788030474 0.89995213248541106 0.02155426463991186 -2.4016860177138666 0.020007633139225746 0.6048900678912158 -0.1999853055880485 0.54212443781985231 0.60006914800548483 -0.65709975396088405;1.8133737963910179 -0.89590251422139977 0.69679937610757137 0.13518716084370908 2.1530094895167839 -0.73585900961542816 -1.0314556800928967 -0.32371997358786808 -3.1249644457201087 2.2861317954983629 0.44917636018094437 0.92224328098118824 0.7535555539595572 -2.6908414835633931 0.33476150557223094 0.90473885818832267 1.2863927049105393 0.42581747195842956 -1.6676318379596295 -2.0636647947887683 -0.98400937420548251 -2.2281301096786428 0.088927194774808954 0.48929482734261476 -0.67304869748688567;-5.1473234714860654 -1.632080083783743 -1.3309564967711043 0.082603277383855367 0.34853750104398717 -0.26110217485376153 -0.53139501534639844 -1.2940280811394855 0.62863853042159623 2.1211600053789414 -0.29691816309196051 2.2578902698543533 -0.26093298843642904 -0.43619960432868982 1.9630494825987419 -0.71251752902477772 -0.48849877832439392 1.1917015804288311 -0.68953219609451011 -2.3170513978384819 -0.57553990762558371 0.15506580740379936 -0.021285982562452614 -0.71477558593020418 -0.35163831309923393;1.7626650925766247 -0.99701926098520699 -1.8046058392326556 0.94137607303583071 -0.91001087239934131 -1.0570856419533201 2.1180731644961557 -1.9388407920241366 -1.4340493488514523 0.73370084752977216 -2.1117295107329066 1.8805585464899699 -0.67211830337330336 -0.79092007605476866 1.5953994290071192 0.96233132766648888 -4.9789783859959877 -2.3021435424459611 2.4822465388805002 3.0900097206332577 2.778777587936371 -1.0159071566559743 0.25077841556753444 3.489551662171392 -2.5060358547811785;-1.8803782691654363 1.0422945600320217 -0.8141005948495118 0.46858192068971521 -0.30259670613943856 -1.4315404257489144 -1.0143188959563501 -1.1234730043632728 -4.0235415187761374 -0.37981882617583523 -2.5915976407689172 1.8636650001626942 0.87015867094791988 -0.74728155358290804 -2.1645956929707775 -3.3853986679743318 -2.3011239151865306 0.41899343476724049 -0.59802322921580298 -2.9516525946379053 0.22372440971618299 -0.48723885690024432 -0.71332806282898709 -0.014504014324220205 -0.94496853137668624;-0.018967674534470649 0.055149341066672977 -1.1979501093553844 0.23708789630981655 -0.94198128581115514 0.75467951652229948 1.5919222006397384 1.7274580086899389 -1.4907748306591972 -0.072681453314830613 1.4242828902561677 0.94003739514068785 -1.1299702133020331 -1.569851109749141 -1.6304430404810319 0.82973070889806411 -0.53713211513718973 -0.74973103427590626 2.7648966925931369 -1.5376045845881634 0.44596044107822991 -1.481901032030819 -0.49742713940921596 0.8978394397552133 1.5618445161703356;2.5187509937129859 3.0458904388863735 -0.37397894028169587 -1.4279023567304165 2.2426671295349503 1.2404462223292285 -0.1914629648301695 -1.2145999500488611 -0.39470735932924644 -0.53771878302793441 0.78328054615161502 -4.6823364803166658 1.4333671661932277 1.0795928787161753 -3.7964679827897037 1.9239922239344696 2.8301546053873832 0.74263619135190806 0.64223422013062781 -7.267285017883399 5.6185314159764177 1.9121283720458779 -0.10667693161050633 -1.8428768404722635 0.73687902506269931;-0.31825682863008747 -0.82764253157368317 2.538303359200329 0.76141073717530861 -0.24837165742855505 3.0156283105193493 1.0222731258963262 3.472541297440034 -7.2746808141734727 -2.5213643018006455 5.9746484301631764 2.7442549480654947 0.63629472430545764 -0.19046620472727557 5.2673148714793392 -3.5986952705392774 -1.9540952844300041 -0.38626773341128451 -0.68146789104355465 -0.054036584730537136 -4.7579169562153067 -2.3550177049103067 -3.5598712901604617 -2.9695633281790279 3.9555353479776674];

% Layer 3
b3 = -0.034398130224439348;
LW3_2 = [0.068884597682062648 0.030701663954535139 -0.034598509359563136 0.048533787246168268 0.020099246146327923 -0.042837112604570793 0.24957667379597795 -0.12099495593643814 0.14327079819504995 -0.058780654058990744 -0.0056775369347187108 0.10480699080361329 0.7374402613229567 0.025766709804423062 0.016969960565341589];

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