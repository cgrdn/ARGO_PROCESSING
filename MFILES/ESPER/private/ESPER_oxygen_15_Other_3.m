function [Y,Xf,Af] = ESPER_oxygen_15_Other_3(X,~,~)
%ESPER_OXYGEN_15_OTHER_3 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:49.
% 
% [Y] = ESPER_oxygen_15_Other_3(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-0.9];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.0415843642790311];
x1_step1.ymin = -1;

% Layer 1
b1 = [5.9650269860492510787;0.78134927260234487978;1.1609607599423390489;-4.1309196977545257212;3.4638821577123075635;-2.4629048326306826056;-4.2016659788741383963;-0.60650674527498404931;0.47080486458023973473;-1.3899586450755163636;0.71445574200626937866;0.23585935059731322205;-1.4908171622049828375;-0.70732097695845230767;-0.46542605734889419544;-0.58855802574863069765;1.5195507174680498164;1.5382965060271478475;-0.20032925858774988659;1.6909569509790993713;-1.1476860705165989884;-0.93359527470231717938;1.4131551965496687018;1.4803917338938687998;2.6537761142696747463];
IW1_1 = [0.14817893886562369388 -0.39512809102457341348 2.2239063283282276551 2.7740367941513723871 7.17785740833844077 0.0099778407905651254894;-0.49139704083083490804 -0.30314925667761244421 0.035787431342817248303 -0.69692462209004779616 -5.1101013482944752653 -1.9203883149297518163;-0.67908438621533340207 -0.12295137496632212171 0.40860667745277434726 -0.9093446424646273174 -1.8522765138362440318 -2.799062083511442367;1.5877614630918188698 -0.72541374934333047175 2.146692581951096912 -2.4963363581192439256 0.36690844034619779501 -0.59458223850797053966;-0.12895454012444182434 -0.62070773256452493882 -0.55216403040752870535 2.881801824789244737 1.7424669469446254499 -0.63560741600736125889;0.45161888114539155969 0.49189311516448619432 -2.9242226676497526938 0.36309530125892780505 -0.65888472329272418371 0.49676135875265103881;0.11834392810829305609 -0.18753305281635895829 1.856194995002575121 -4.60048917271740887 -1.0782599331644666663 -0.8351876697395429483;-1.4688066391432035296 0.33398973486875749295 -2.3201692249830743187 -0.60192900432128115806 1.7150468955139688276 -1.413939880054654763;-0.59927420151485777389 -0.15313185712737142907 2.105265498364439658 0.21611783601805592547 0.83449619241365902145 -1.2969763257309512294;0.23817312082057504052 -0.10083288884087907022 0.57566578834879988946 -1.3315268647409601588 -4.5867218338340585149 -1.3705587048680627493;0.93600893734251089384 1.0288616086500610436 0.27558886431071755174 -0.1918479076962021912 3.3761019703805614789 1.244790769138928388;0.73171550101115245823 -0.19977064042645237274 -1.7667696382877711159 -0.72385423862562470187 0.50534721014019534646 0.48266659421872204483;-1.3618141443141849045 0.68499054588449537206 -0.72332533722766989559 -0.62088406782748417623 -2.9710627886454314961 0.6464181930942172194;-1.1370983020734177771 0.42515263372776496142 -0.75823415533310434267 -0.5207991823338273818 -0.10353345578450522113 -0.9564223711817100293;0.73077483205336624117 -0.099321050670228477886 -1.1909945907455599112 -0.44005619849364746576 3.0856824158215920839 1.7788673478380689907;3.6630526278292738773 0.4546823323507675485 -0.88278801087208103038 -0.15859530267277652249 -1.631713205707415959 -1.2997706490806044677;0.050954783746191903426 -2.0468296769430711635 -0.46177378240692878997 -0.5036012120467368014 3.1740690698046423179 -1.0321665138945541607;0.22430228023172177343 -0.063693477312848995053 2.9665164420559437808 -0.25473814759583279788 0.35309579718738964837 -0.23347015187654840407;-0.58142522230359972024 -0.099334657083248831255 -0.72151530542773734123 0.39567179092962823095 0.94708287606274166315 1.9784460896621975934;0.46234539228108689768 0.046039333532345731725 2.1489090050025292378 -0.16687296552515223924 -5.2844049732898685789 0.11891089975745651464;1.518890956751372423 0.32531511486929881594 -0.2892089853153571033 0.61539652154053092747 -7.3248297189097177906 -2.2756944776480314552;-0.78201718729706759525 0.29195109945267994078 1.9556011808167139687 1.842633944457602535 -0.030051920044677531835 0.29852866668736671718;0.53479005140693447462 1.0580814792504940058 -2.6431900626869309079 0.64870035715534168919 -2.1999311256161946382 0.65069722163270793391;0.51456234215772322926 0.71414583098866080135 0.15610595764056706125 -0.52715156310056454636 -1.3569805827059848724 1.2432009973049593654;0.87152562891611162765 0.44791764585233961871 2.3634866784849961618 1.6723555995877290581 -1.5781899198915476656 1.4845246814044497086];

% Layer 2
b2 = [-5.4258340544228769176;0.29292453683859343005;1.4435722618442654586;1.0884089893260078252;-5.4261591977786753915;-4.0684377391280861502;-1.2432949477004175964;-1.3723760734164736075;-0.68253922888596341156;0.57512857920905757769;-3.925232052106972791;-5.2592746156287155657;1.8256578466322921361;-0.31393369508513385702;-4.2012402710965810471];
LW2_1 = [3.2219409687707125656 -0.75975187948580835684 0.68093851053526088801 -0.75543460635610115705 -0.800354402593700609 2.1535251541889239846 0.30512402036832314556 0.092001597719469849213 0.70044016074545245587 1.297256952265235519 0.20560140649171046445 0.70914398295227232261 -0.40874530988281537747 0.32335979105679202306 1.4573012149218298461 -0.34525143064664476356 0.050232086770051607993 2.0206061752935715603 0.68425206133888127891 -0.21798305252417965461 -0.71193789844269617095 0.57402709064894130719 0.16738631901814349234 2.3694786514572467873 -0.6281080297512371402;0.31139194847477724704 -1.0987480429373146507 0.33400049428701544807 -0.15488725845755044186 0.26642862266679645522 -0.37373816439360268982 0.40268667806683494659 -0.55557649824986676812 -0.63690855333438556318 0.50313811305028721677 0.51863793567897165104 0.86725583897948987921 -0.24865018941508046368 1.4815177148187141931 -0.33526810318099231623 0.14061411871289755671 -0.067195485189446402252 0.027933869200905889207 -0.087156306792263535388 -0.054458233342618261874 0.38449785718655654643 0.59012395026346897708 -0.020320870972646398744 0.074135199419054290115 0.55690167886676344988;-0.18539553894211113771 -0.67231165414902627209 0.4485074523439790406 -2.347508769853638988 0.64993009129171497307 -0.4941552115551636204 0.85210987474449717549 -0.27957256498436106051 0.068642846500750226424 -0.72478013550671926968 0.16171231618618159276 -1.2127211084174502886 0.17247956749092863138 -0.091814997996194219754 -0.6694022444430633989 0.046202744594413536205 -0.22685565956792796971 -0.26721439407968888835 -0.49505499414540005132 -0.055974086032818268222 0.31068238868571773637 -1.5379708670637688428 -0.77109457121204239005 -0.69403627239859033704 0.030447320523896415773;-0.65733775107552705474 -0.65098083143478069346 0.5452141925281808188 0.29066312077005879155 0.21434593812558558334 -0.99277659753237623708 0.48623497582533825589 -0.81391273615011239251 0.29197847967136580927 0.85330104619811164568 -0.34861556216290934263 -1.3012087126590596853 -0.56015315674254251288 0.39979925292569051809 0.3345030653158478362 -0.17364779007550637524 0.2440195699360693804 -0.38464751071447100816 1.1754277867576852223 -1.072682434855596334 -0.01730536922022318444 -0.69836829378242737398 0.98507791246436549049 -0.32875326304180535475 -0.1233184700778207632;-0.8278535007397649359 -0.56836331064796008494 0.026646651577497612595 -2.0786031203893315933 -0.35637674766319832331 -0.66061284668311315293 0.92832559889725307922 1.0216825554498429884 1.5548229178655665894 0.118111331059605279 -0.11052515263308756999 2.7580684450351111714 0.62402832515940198643 -0.66430936567094345246 1.109666801401254288 0.72086287532558346314 0.85305748962369909449 -1.3666944932964448789 0.13856165181647456253 -0.70626276567923851335 -0.43345500506778811278 0.55375297704728498882 -1.6399005260082801794 3.6915420858727592268 -0.12651452110178379451;1.8571315813297764041 4.7291678739159248579 -1.9351015606645882716 0.89712891120674198575 0.013637972336521558825 4.1015275675207494288 1.2158175254172600699 0.24686454983260133766 1.5542650990301642988 0.50023063809013279535 -0.27899291814791504773 0.94723522364166357068 -0.91523905891960133374 0.35030306212209710859 1.2815900495585907937 -0.74011888093105271391 -1.0993993830352806196 0.50524788400103293196 -0.30116010971293355469 -0.22100997774295871867 -0.49370695919226187387 1.6729152396399558089 -0.022145185539336403185 3.1202162879427253195 -1.1832635855302451322;-0.68799053543220967111 -0.024729319159674027079 -0.16806695628027240597 -1.8788778898788598415 0.68069516459170709144 2.029421186275354394 -2.0957968533493174235 -0.10542694150137547904 -0.22828969523367489969 0.58053220457391541132 0.65097316052247000684 -0.9939658363172160227 1.0372288927508475087 -0.99349379425056827397 0.77048352829213895276 0.6626807001336550984 0.90921318190082345279 1.7165651275549842492 -1.6642876114424249856 -0.90290277362718962539 -0.45691006625475771852 -0.61087357290991151082 0.79847671372891593222 -0.82575885418172800811 -0.26596068361671504343;0.22796301802215435117 2.5487350928074707923 -0.37183978142744322781 1.3273368572867780824 -0.99986843943056868955 -1.4625499165608077945 0.76040450575197549021 -3.112090301959814731 2.0783800406512042969 -0.51015182751668863848 -0.83789566273327442669 -2.9524027881235692661 -2.191390534843235649 0.20659585353832618515 1.7765781103033948529 1.5109555784149391044 -0.59409888937981758517 -1.4184440799020281432 1.2564919177607067891 0.72283079050053455905 0.88807262562227196057 -1.5891830042014447599 0.56445980728664280068 0.64159840130203604769 -2.8732286702807936507;0.38422266629145640504 0.50828163137239923408 -0.20109215977216821081 0.81015602902568817356 -0.8771417472029853224 0.46839361376188543007 -0.50481921736113433141 0.16180311529125815384 0.37151968520481565283 0.53216057039473374513 -0.36637292092043954872 -0.1928109346492768994 -0.44193833477953647915 -0.13001997784650401457 0.46771535033400851722 -0.24714236397224556563 -0.00096632171927826804314 -0.24876457275960123239 0.34614200087415247786 0.47858035462847753339 -0.44373133148819005056 0.01027579645126780114 0.18568401856401389738 0.37128593618626076767 0.12143852349724607032;0.48365408893849898275 2.4695756801270074554 -1.8834950537207226784 1.5711869305376973127 -0.36093584575739678932 -0.4922206843487875183 0.043901252754155205282 0.40667991935406699877 0.10243392090673462957 0.10033387656689168876 0.53189123000238125449 1.1287489374622523552 -0.52555760322960820563 -0.011421068468792107062 -0.03533296524106803449 0.2561099195236413717 -0.2733466868265231331 0.025212816877196411736 -0.32147242014046140124 0.71746560237987300201 0.27838022157144720614 0.64126566030902054649 -0.11191647049385926305 0.80770956494286805238 0.23239391301641271204;1.4744699524246382971 -0.9596249085839387849 1.927598837132433518 2.7273960371958896332 0.17745000381975439829 -1.6492513878473757938 0.01238813279341542152 -0.32827811913942406274 3.7578290167066499272 4.6861700696496990659 -0.4710318416933151342 2.0903945298061534785 1.5815580032587113202 -1.5362563075931483514 4.5738956186189287934 -1.9392291317565164555 -0.6276851808797943022 -3.3999119025376192127 0.90796647573578537216 5.122954222660467849 -0.15059280507752595413 1.180762012328868904 -0.078270080648845052895 -2.1802590108713175709 2.3294929198111651303;0.66609636758371471021 0.017067781734864225646 0.047065745203043463096 -0.20207774998721400594 -0.34266644208492541557 -1.3476565197761072312 -0.43113817014884298073 -0.041598369568746441927 1.3822675084095630282 0.24465909238981403684 -0.71019361076035036895 0.41415210818389103231 -0.2416204973882994933 -0.7315857079646115313 0.52638269789390734754 0.25684189589759803818 -0.56910312840616872343 -0.74641810958541654486 -0.44165914078334927995 0.63890697907121296595 -0.084982581374762652948 0.067666196939423897683 -0.63350291497368727001 1.2563529688074228652 -0.58940127837878286687;-0.61351602459171616921 -0.4212408198917274027 0.62567651964700343736 -0.079974746996587769976 0.010865806825329097154 -0.31317361228690593355 0.76118472356082467201 -0.58431077099666828278 0.068921574845830627098 -0.476777387642703665 -0.76326019100626074643 -0.69815839413228697463 -1.1362159509400360236 0.71573624079528774811 0.1506101789496580301 -0.49252954927809095009 0.11754246475856282295 -0.17993783983125433146 0.57791018864053744775 0.10776617308555538899 0.083180399339983182583 -0.30337086213805936064 0.53821249072356447396 -1.5146620433228568103 -0.16960308335129406498;1.0785212831511528098 -2.7852234639668966842 1.188940109866835515 0.2108325223120557923 -1.8501583019377969563 -1.3585050951911086248 0.031723911784215234888 -0.39302603886815085099 1.0161548990151887395 -2.4067084823993170062 -0.55083723562685171782 1.0469041273904238221 -0.18202571234786649179 1.0232074592255051559 0.87760642580554837355 -0.091857063092982652042 0.29003816954399419537 -0.90680279965957821808 -0.74583080537815216182 0.42519584564756562894 0.42913385725466102194 0.43307323732897640145 -1.131142367033574736 1.909736861093137561 0.71923844161320327206;-0.97461324370227009339 -0.6621695452159487294 1.4888585835695264947 0.34085477252400092629 1.8653991500008852977 2.639391054072814935 0.26539611256702144715 -1.3891144893152076456 -0.54524849831345978401 0.21434262660032513126 -0.52404559966543962091 1.1337193917645371766 -1.2564604570143611539 1.0297284493623106716 -1.0054471078127438233 -1.307172910752701922 0.34068654973107648232 1.2578573719527741392 0.23649055053317194486 -0.41879972754967303983 -1.4402111237360382123 -0.47368413660158487088 -0.20077772191802703561 2.6501297395296639081 0.55989108846774227057];

% Layer 3
b3 = -13.340084335011585637;
LW3_2 = [-0.89880110277459190904 0.81450951355981393576 7.5718113724393472097 -0.84630777394138323455 0.5145050400781661093 1.4786904281145136775 0.2215248195226156569 0.12765983066590777528 1.9420336795044697009 -0.63679964892727891623 0.20600131248049910471 -8.5825794846995382414 0.82742210002698413085 -0.26122698066621091728 -0.17643443995556054582];

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