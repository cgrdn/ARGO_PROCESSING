function [Y,Xf,Af] = ESPER_phosphate_13_Atl_1(X,~,~)
%ESPER_PHOSPHATE_13_ATL_1 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:30.
% 
% [Y] = ESPER_phosphate_13_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-0.28;-177.232103709389];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0470499670650231;0.00425400504498441];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.6178131146742003033;2.2610018776697087262;-1.6148897093847427442;-0.53844412883459347174;3.3160181930879284451;3.9386057457875098819;0.40413903499436321098;0.06431177584380465273;0.79411907015071403482;2.4908519047668122859;3.1214492085854055325;-0.93445201572962766079;-0.89697842052024434611;-1.4683355269928659581;-2.4356338528131789012;-0.77365594744737975486;0.35479023869411230319;0.55804879027210851916;-1.7653550555224548635;0.64036156884721606719;-1.1578003967838577104;-2.7341951193647910934;-0.5882706986564293361;0.80541236407613014947;1.9836399469132417472;3.2087410834575971208;-2.6219278273134278834;-2.7453686322657846475;2.346974579492861146;-2.7063922920908916048;-1.7962602621924770308;-0.56721567689813201518;-0.66748748281248315717;-2.7768011348579357822;-2.9024088381014094828;-4.205457991706392562;-1.7257303170455835506;-3.8110372415836391013;-1.6266488968299592788;2.9747027052655217183];
IW1_1 = [0.74148661149351735578 -0.66066204742204670541 2.0957006819659702579 -1.0257225230317046361 -2.7692048325695837185 -0.044177126580838811665 0.70274465424358345533;0.45972505717610651077 0.13996620056657357867 -0.28576178308353505919 2.7744103948667406812 3.0241160404308304877 -0.66318985684652120849 -1.6639450453989508283;-0.85423247706404692448 1.3059690957630794017 0.95482464885645745856 -0.38904339424724293517 -1.2098227755629489266 1.6200402518021308484 0.59160250245881162989;-0.11944310903225591192 -0.54909333097336809892 -0.083656574619931853287 0.88721688218190930542 -1.0762044160832178186 1.7910508285917756677 -0.0031698149912632702166;0.84597412373030866917 0.33302319201454072539 0.3304153661018457977 -0.82754797599557261556 -2.1249266604281205062 2.2614177883142954073 -2.7432342405548499897;0.031300438015127572677 3.9984153417838124156 -1.2967276913669214533 -0.96517123357458001198 2.4174659423388198398 -1.0777762643605504067 2.2427582263758778502;1.1039893353360701322 0.20563172073753527291 2.53693087775007875 0.31781866808854614126 -2.847282197232428036 0.94024337945442282294 -0.60478100029825121453;-0.9201958058613995961 -0.082523221413547245828 1.2131852804074849672 0.36865386621587015181 2.4767218885466646405 1.0073609228679842875 -0.13702167670736953298;-1.2915734850984206261 -0.32052976279523825998 -2.7927271114534506502 -0.4267622172888841936 1.0245161447288668732 -1.3406653987231791358 0.86524679555193384495;0.29881623179188593342 -0.34435857599575603327 -1.9450197781383105067 -1.1063201370073694196 2.122651007415274016 1.5238939739536863094 1.3409287529854840848;-0.11504357935913903099 -0.030468879181840630155 2.244291742391213873 0.75684494546854219621 -4.491538877141240782 -0.0098175976697365135992 1.5822134966558651925;-0.40347662357548264023 -1.6923083090984243348 -0.10349634866377119269 -0.12555899490377706029 1.4711951257586279862 0.42553553748627870323 -0.56878891089793393032;0.52490172676692226084 -0.090132011106366052844 0.30030235869637705859 -0.0055733452285075119059 0.98877487893742033176 0.28139148373191441577 -0.45034593651296594974;-1.2758774836014301624 -0.13880765355087951174 1.8010523425024929089 0.39193854569970276724 6.2214447322899495418 2.8593561667028728479 -1.3593846842666374997;0.59107801600324882951 -1.8057746117353943305 -0.62563874743715375271 -0.17092436097178742571 2.3264789064217694659 0.34230819989038258067 -0.24665888203599403705;0.061943671433850294727 -1.1038237128447345725 2.0903093424890366592 -1.2221411327575579797 -1.1907302322043589182 -1.2951371739636785563 4.0103349744636158647;-0.35049664405114688837 0.049415039762784537802 3.0114300211203741675 -1.0629158918972154702 -1.4372899850310159042 -1.074476406539292217 0.05018711283321995037;0.18373817596843020072 0.36524466668291610816 0.89460196540892511496 -0.48523105782288455945 0.97348845788597226925 -1.395555584683156658 -0.087884402784001378062;0.5283943441087266546 1.1110324097800976517 2.3173276831795899255 0.56377111950449720901 2.3965706347498474393 1.2601337104250143195 -0.79097885175998872143;1.0643285032412523883 0.30883423297012874142 1.0573589235438609624 1.1141992371768227876 1.0080902189243230449 -0.84697160825279915741 1.4382091865535415742;-0.30187885438470057897 1.8656154954310120164 -0.54228598422100382503 0.27158014923387796546 -0.46443640812929687378 -1.387601814525547983 0.99693569010004778885;1.1244172130271981036 1.131110722171904337 -4.0004182611815739534 0.4965174716338034977 10.401087013668799841 -1.6029855775075796398 -0.031465344640810105625;0.48931622883551045833 0.043395842572294195116 -0.00049723782584132152594 -0.049927779636913131867 0.44877539471969446483 0.28656791935045156094 -0.38609222966757716922;1.050058770152650478 0.47562756691306312673 0.91584860845997195788 1.4013898090684808739 0.95038875038862702382 -1.0821904068245091768 1.6857761584377346509;-0.13418461913497684024 -0.061726587437960361848 0.80452811580634087107 0.39103032458714770403 3.3480407902896605066 3.6588138170141486505 0.20180460420093537799;1.4539015973744002785 0.23145295546435901146 0.72772294235331491663 2.1377738389845131195 -2.772285254032501367 -0.55266090390916100539 0.087376636120865464052;-0.80125569035074428736 -0.061532113379239181117 1.0798777613879453341 0.17418528086454587722 3.1237845590881319069 0.17946352636171436501 0.27967238184566334258;-1.5941277480612776607 -2.0588418740751412983 1.2140201567568118524 0.40535349992428260091 0.69117201068974476463 0.97330500737687153379 -1.2137152331029998908;0.063175489498968812052 -0.43724265908818626958 -3.5523366045914475109 -0.38243609993084093368 -0.6631612393240420289 -3.1498812079676699049 1.4712870673636306851;-0.077882761137595735157 -0.60471680292125096212 -0.216680065240529518 0.71388566800305586213 2.0578365008163688188 1.8487891786879471212 -0.23724848460551786755;-0.14079191482594097251 0.35247462552882335984 3.4823815806496836167 0.29835475964225321999 -0.090030388010797893217 2.9025247274331844594 -1.0108348720743260962;-1.2412842660087655133 -0.43946395396913595643 0.70875599973959146904 -2.2775573386071092941 -4.4193237244940215547 0.61568007009667979901 -0.4173503760180254929;-1.3975851004342876305 -1.4357602912144331597 -1.5802402759194640325 -0.2725837833831652457 -2.6226898667079727723 0.30192312891010103515 -0.7458419158506592872;1.9119541843241876222 -0.32393488688470173376 1.8099365139978556005 -3.0362802115848768203 -1.7761328293776883491 -1.8791553815105173086 -1.277254851978803174;-1.0624965184880876823 -0.31673837916314057095 0.10358230955692952768 0.58941552436214916799 2.0863428926084850445 -1.4434712345046321058 1.9466694685035776935;-0.18499850707355744439 0.35255112304881425223 -1.1768769921955686275 -0.13670196424163269522 1.6349626765086262559 -2.2374390147342735347 -1.9134650835514819267;-0.40645474815104137845 -0.12221201385311232512 -0.033166597288315183278 -2.7284461698551902842 -3.5176462956328440335 0.82605369460114130842 1.389965968789959927;-0.68380670704395363213 0.33169399975362434674 3.8411159545996444997 -0.11529766561804713487 2.6556501338128426504 2.346393444459186739 -0.36511139527606645272;-1.2341282749621789172 1.5125079291333674014 -1.3647970108568980852 -2.575755385888153004 -2.5042667252786019461 0.72719218043795419426 0.2462181497521397644;2.6602038333020403549 -1.9082013905346659755 0.47269491115976364215 -0.090369713991985275992 0.77962113144217148886 0.27649736958815673837 -1.7051193614390878217];

% Layer 2
b2 = 1.0053875996593748532;
LW2_1 = [0.30219147160962844811 -1.7098474335249036482 -0.9364171986030679351 1.6576471870567999201 -0.80718637038592200295 -1.1726879112479535738 -0.75751484296769300286 0.6890011404772734549 -0.82878410219882925336 -0.63723934185502151273 0.21371492432688007912 0.53128663838013767684 -3.9909261175491197449 -0.19650530211260686109 -0.51172716038620946755 0.10586098575238013508 -0.09919195621890010417 -0.72418619256493621528 -0.37407721434548418804 2.5867423662461708211 -0.2736949223216859628 -0.28146950488783012423 4.7642915501038292092 -1.9896973436453853079 0.27947637834196725759 0.16068395131810303544 1.1060991059395188785 -0.33985491846865079069 1.154884067558414662 -2.2307487154158875953 1.5160401649229884313 -0.66384822973851020933 0.52348058474478764701 -0.013870256651373806533 -1.5286111870674532476 0.25563829168474677678 -1.5504285361664975618 -0.41059585905006301676 0.51160683067541534719 -0.81859457527978263247];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.604229607250755;
y1_step1.xoffset = -0.03;

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