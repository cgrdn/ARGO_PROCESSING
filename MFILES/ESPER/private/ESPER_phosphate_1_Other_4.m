function [Y,Xf,Af] = ESPER_phosphate_1_Other_4(X,~,~)
%ESPER_PHOSPHATE_1_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:26.
% 
% [Y] = ESPER_phosphate_1_Other_4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-2.18999082656054;-0.9;-138.904784718693;-2.02];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.0582073296585987;0.0415843642790311;0.0042772329208737;0.00819772922900357];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.300732241416463264;1.7591031667580894204;-1.8291660473925959174;-3.2282037626740152092;-1.1402962454249385704;0.41552758861664340628;-1.2192707426323323716;-3.4012786704116999559;-1.8924871911874880936;0.72709793973907121956;-0.20947087608291398153;0.56236265483851655134;0.60715809283636501537;0.23860431425899772395;0.43766080243284916085;-2.3889013703092158991;0.25391045214941615482;0.10960044219285260125;1.1354991134323182411;0.23865326007910081518;-0.13576485313127475973;1.4045510652973740573;-0.96951751372396255402;-3.2017058154981716811;1.8019421623157443335;1.1295723374826125429;2.9550599358503757408;1.5295771500133723553;2.4202050899344231816;3.8144801604895319791];
IW1_1 = [0.067453786731375267594 -0.1313277020399100381 -0.76408055449354062016 -1.0074094452553938872 0.11282517103833814009 -1.2178673410889875317 -1.9095365266058272891 -0.080290840187823023233 -1.1870747333919793309;-0.25546576426964573425 -0.72683945666951232933 -0.81735156276773135442 1.3256298127191865621 1.3588061268301316886 -0.60677691310477410713 -0.41519237014089804827 -0.20962047391961258214 0.51902072705278956555;0.092338051222816602825 0.10182756288003390333 -0.91677898997005291548 -0.11345990399834367246 0.17374799857828129857 0.5980678508194903209 -0.25883909226298434936 -1.0583020641102436343 -0.54391403415526351495;1.514866887063794243 0.49878619504958626729 -0.61629331158734856899 0.31881245456157919493 -0.071152313350565002392 -2.4301589145945823311 -1.1302521675271077761 1.4837423206464799286 -2.6618898651490425777;-0.48343072846638657225 -0.71001706152200250166 0.59474531939575203676 -0.22508138070125416341 -0.63642537470788096421 -0.89457728766459920777 1.0420834823132334446 -0.66141687095393353335 0.19213367949247653343;0.23164401671363551993 0.57307581204223889682 -0.73082947402345288523 -0.11522963337897934588 -1.5635407798921630018 1.0120967307443422545 0.010023192554717997443 -0.80535566859128138173 0.83530509556884480205;0.1370777414408465289 -0.65695720394743173376 -0.13099327060285137492 0.14965188149281027918 0.83265621064411654562 -0.28408739829629714446 0.36714629391226416555 -0.24954710170872199115 -0.87398563363422332451;0.21054033824372761496 0.68007918348652729446 0.58373739218274356411 0.41112375781362819893 -0.0064538369219807939156 0.22589748740660614557 -2.2324032874909738311 4.7266795810044595072 0.2376291176937313232;-0.15842667326769599434 -0.30296625894363066189 1.397274516889078777 -1.5892998344570641311 0.04882402047743695378 0.88044294409956824765 0.68759611911332818579 -0.94891197995488485439 0.33011102318649337972;-0.34398396148014842577 0.73990595739567854849 2.0045308312240601722 -0.9240984143328706546 2.6274288006387247485 0.77277026266911896801 0.51538941662220660866 0.017039686933360359555 0.84044515129532504361;0.15947037575061703829 -0.3594647702367390063 -0.86943721637536652835 0.36327846116783024666 -0.22097075377073599478 0.97800079021473851348 1.162694362992488184 -0.42922282447182086296 -0.49428660140721492056;-0.62196114567050031496 -0.36962448325647173641 2.6537534730636278546 0.66951395730727047972 -2.0979408145716473832 -0.44487601463009668334 1.3568934977096465122 -0.016881837375895956954 -1.238636774852539979;-0.50359443046576468639 0.16800586646630008558 -0.44458248333870015179 0.90055956744092013899 -1.0714643533685703769 -0.77669775959638853724 0.12881628984343510003 0.0028531754825700363434 0.14122160937316938223;0.55752024480519346561 -0.25524464636145355323 -0.50573083181793587748 0.55629759823139734998 1.9237194501177805606 0.93905161115511703862 0.78379218563397079489 -0.63628220324853768108 -0.21503661207888563611;-0.20949698373625924575 -1.5633793957701129784 -0.88948361479840865051 0.82182661892526087666 -0.85034400005192245509 0.061338257273619987975 1.1036603608209836214 -1.2814925760110074116 -1.2629781173473919598;-2.4661757459468978126 1.2473566684940349258 -2.4513746925253636633 0.95814271721996291387 -1.2346212289713194288 -0.86313412117869514617 -1.0385838125885002992 0.6007235105679792353 -1.4134998188373155692;0.077743567871032689953 0.39022600611256319514 1.9199931912366594577 0.81173429695208920709 1.2401329462034018647 0.43065667033145599296 -0.46778249804336474726 -0.062250810178837455433 0.64666330388588710854;-1.9294133499764587469 -0.57655941452755743448 0.11912603490492712499 -0.055346797350760722212 0.56340533194169695186 1.4780962683373470856 3.1627882862512861628 -2.9942757488783069419 0.21838852021196664133;0.29445910718972412301 -0.15302682992436006382 -0.86585639981534967546 -0.14994835282801011189 0.04362839499349958905 1.2475843454075667971 0.86431216108480002358 -0.18176429137869065666 -0.46207913778443676645;0.025900164223886919246 -0.26413489472662260438 -0.93797627579430231659 0.016916290451848094156 0.66597327002179207422 0.28528129208151548069 0.46547673669697203769 -1.0021434956096662017 -0.49556613596577214764;0.66302735853062100269 0.3190556285803568537 0.13366002273383345567 0.082278595474342991478 1.5974461322298700861 -1.1212935616519095205 -0.0011658546300334457924 0.17171357675387155517 0.013252585752188390453;0.040945330421593942316 0.33297122452869631903 0.16957296907836355571 0.43264911743670980693 -2.1111365036558353836 1.6311324062068479623 -0.44522761596457882671 -0.63898449898978371131 1.6464973339213748726;0.027414814464139427436 -0.012864109029413267268 -0.68834031540081841438 -0.099077906487836375771 -0.47306552427025966301 -0.449070759517406215 0.42198757062339087298 -0.40852062371602826385 -0.588316726878833407;-2.6270874508575658979 -0.15857232865174547554 -0.076826122320593950854 0.65793767347818932212 1.9065766813354458886 -2.1514216825083805062 -0.86251792704528962297 -0.22499489107501130514 0.84708903906841948039;0.34697672825336772773 -0.16517046394132411935 2.8185293028153175499 -0.70265462376054044213 -0.043170561047101367602 0.059179041365384571494 1.1209217396930926114 0.70468985092864711017 -0.14153151243441883245;0.2137543438070185764 -0.30013104355310427085 -1.0426928736791352126 -0.030323776876459408725 1.1578448534324801145 0.94472651985090649873 0.79494379188043262641 -1.6945904796453767904 -0.1963448729276956739;1.3244139856921315346 0.16113650653818845093 -0.48043779647400047805 0.21127447150181055679 -0.084040296563633418159 1.3561589435363465839 0.52454602468157229822 -0.0023576744020782185174 0.015071179763839794019;-0.26802435401250296332 -0.65914997031668509653 -0.85883898863848251448 1.2862914605122550693 1.6077914546890266223 -0.63013658337187639091 0.4375248743667330964 0.23682608370088842342 0.026526436628236074733;2.0237197402940507729 -0.2899718100152964273 0.74906930752662315154 0.53211148950721010031 -2.3457332394655212582 1.0827258006864961537 1.4464334386879060812 -0.035183326202007453309 -1.0716018022727498149;-0.35678853762144829842 -0.12130671900188476353 1.081311370456724319 0.88121201903528134647 1.1917625371612186047 3.3935724799606732383 0.96782429032932615343 0.85848182735590550241 -1.5085430182576240465];

% Layer 2
b2 = [1.0455821933420017533;2.0471652473543260342;2.770881795801348968;-0.74587255817833986171;0.22274053189709147604;-1.74580522189063303;-1.3550940122130565868;0.90624350126476294065;-3.005648091475181527;-3.3050731282613945439];
LW2_1 = [-0.17330665438095294029 -1.0955788075252494984 -0.85128097343443742684 -0.24701044107614711365 -0.75483769580575788005 -0.0021819531218154279012 0.53230417003360719352 0.1496465491660606828 -1.0620284631467082903 0.37090835444554248745 0.21904330646194380972 0.26148688300165917608 0.34770025872941850986 0.83499345666376489916 0.12146583067673207001 -0.025206669467396750767 -0.64609375232092214336 0.16378017705949304839 -2.1603701055614132898 0.52793919845936809754 0.14387009975265618866 -0.14813265319555987687 -1.2651941427657258377 1.0621756626290022041 -0.20492079002281943234 0.80361993559141808863 0.3175002448025909807 0.82122062041554710898 0.49368565748259202186 0.20010517124599389027;-0.25573502808372305939 -2.1142508931603560818 1.1375978057618887362 0.86082734507007618863 -0.09938622731598983906 -1.4474088861165463893 -3.8648770935681886485 -1.0789892056905672213 2.2828463143634638577 -0.30117673942505429618 -0.98856048342675528762 0.10974451591720681132 -0.52714672860972222601 1.6995093416469464476 0.28927343777553715665 -0.01594876634744457275 2.6586946846314369886 -0.32557845767318549512 1.3412063984119697579 -1.420769346014714829 0.2597457018183525479 1.0506825896382385732 2.8241389993007808279 0.41009865059501621198 0.18246983502540825572 0.47768192126437242218 2.8147230195400729791 2.6316063208153486208 -0.46848416329305775374 -0.46775897380763892253;0.02453113794771008549 -0.53659606261400039084 -0.83805265130990602707 -0.010580553052701901356 0.12363720910552376819 -0.2076619595799591711 0.057108943877682970258 0.64904945652077061791 -0.65978819271159827586 0.4517320851824630501 0.72888089879565365337 0.010257926154851292055 0.76750731365467195211 0.128372432777103751 0.40653742766943989917 0.02639417248940250163 0.31768057314127784441 0.053969813861881779649 -0.77166134381193340896 1.8707052001235118244 0.69171558047439030137 -0.55837452364969164531 -2.6226710656182361525 -0.13194045610055687989 -0.55113252971160930915 -0.54758587616580622903 -1.7145280349643814422 -0.3091459698146183932 0.54060514666580783416 -0.4017317335103382514;-0.089364477757850890871 -0.17184361223266264584 -0.19108006807352717615 -0.17705880518899971832 -0.47330026059355917445 1.1097249753080040691 1.174553532788229715 -0.035463464998801673411 -0.60921207628800133627 -0.11967110646667114549 -0.025430902164363972107 0.267177965758182423 -0.43955192851767715956 -0.6041999639481544504 0.011469595900817400672 -0.20071691660013143976 0.003092000831881329577 0.084027344616583815595 0.52475065434353163063 1.1377771361581310305 -0.41502166074050389488 -0.41374792092531431642 -1.1764790621331446818 -0.091279939461362785691 0.14468932258341743458 -1.5878738258288747076 -1.5647725523095619149 0.34982259375119528766 0.1152269920749550286 -0.2832914349731024406;0.14193729693537907033 -0.066791173359173686142 0.087114830359769773738 0.12237169474553424853 0.31946259055003711769 0.12122663813234134389 -0.10735909193803062911 0.55538934456323241218 0.39596647188735617506 -0.067715133070919711344 0.66658854269401635051 0.23397653763291773044 0.080019611695442527388 -0.89296526273565968168 -0.077085458932341810456 -0.049677289497029125664 0.38860488824436778543 0.019744550332251586955 0.85938111462284383357 0.84973876173559292901 0.82746693617277444766 0.16603704208259081887 -0.17246509383403815785 -0.16959959164289209466 0.16130624320629308177 -0.68711918460721388424 -0.10010995778154505031 -0.14831344009446517651 -0.22156127301907507787 0.067517676266933793205;0.21981120824977437578 -0.25422596120407792153 -2.0120937281399213781 -0.30548803103141569659 -0.10099465745254355975 -0.13830422634554689898 -0.72551666459818953125 0.034988243236809893344 -0.19619282117829656142 0.38061726704231751972 -0.72929600518675308241 0.11649956667324151693 -0.27336196055441724928 1.429852234280515777 0.19111773271248949646 0.037270496725310471586 -0.56712655170485715139 -0.13573857482384454887 -0.53742702464921288108 0.20418513164622464906 -0.73983558601961474377 0.055877695955060611988 0.69547539087693432958 0.4044271087336747672 -0.57158394059671080445 -0.59552010951798306504 0.79355182383968803084 0.62853791938156089447 0.52929540019622711711 -0.48118033318801256559;-0.39130674340607879413 -0.11739156100216195655 -0.69911958811257124413 0.14574701062351838599 -0.34785498945721304853 -0.16803309489990908565 0.561546712820459204 -0.31589446855044106544 -0.0043755556040956109301 -0.44707139655286737279 0.82997680957814667924 -0.42005938909098688994 0.054976508025485273934 -0.40936781201590827228 -0.0021719320031437761541 -0.02078968257170383041 -0.16962871289229633498 -0.086412244278598684954 -0.61251755048642075874 -3.015507926751091361 -0.6951739982971878451 -0.32531153129391093826 -0.13382741299365261134 -0.11573850810078910312 0.4883724391209953164 1.5674600859717666701 -0.64411663307589350769 0.23743026063584643515 -0.37911270286317760858 0.053215418515783374787;-0.13735848718359841558 -0.34844333082200334983 -1.3737721460764626968 -0.14925083101497793603 -0.028924771814936973968 0.029036680698475401258 1.2590685328144930466 -0.71744313142499693825 0.02816121937678303308 0.42848112505047630805 -1.1825819159235029243 -0.58063338355655380596 1.0697583156102241642 1.1768918818020313033 0.62692992635110778021 0.06533491084646400604 -0.62906300542383353225 -0.1245972515319923174 0.080949975346308294943 -0.67965822471418180228 -0.12807057225277460044 0.077045995622155027949 -1.2152752493853864468 0.22933926064061729844 -1.3845831112247988237 0.79345517863865355768 -0.037161646899370209818 0.1245956968691267347 -0.33261908835071224422 -0.23410723383099815709;-0.39541267554638342974 0.26668166431976997321 0.021679440861489703701 -0.43204238542814482615 -0.37012274060286937116 1.4714652380316450841 0.35404557789279023083 0.027731026947965288498 -1.087842561914360795 -0.3011716880208019087 -0.23151351542543685547 0.23407627643673270534 -1.332345193515304782 -0.57509163056876233533 -0.0034555093549033040652 -0.20209467761540234054 0.23331817136037888427 0.22883223243684625015 0.66903068147708188995 1.9949587325477153854 -0.44828001027887870444 -0.75913452050180152408 -0.59172769983605177924 -0.052644060696160135948 1.0149263271015467325 -2.6532820088446156248 -1.0929634100826655096 0.27257930094666510401 0.2471926485030474796 0.2216487283975520084;-0.038331792809648573828 0.71008603289951477411 0.92365003890587782376 -2.7406199602940253257 0.93972477801023479582 0.51710911293843031533 0.61372516770257068419 0.13779609120297631186 -0.81524758922993079135 0.71666899698966435306 1.0958688349454834832 -0.06959346579133773858 0.41319431691499169945 -0.30904466605535091395 -1.7487731351759239207 0.4180741508483326041 1.3695890003386952394 0.056069319527502478606 0.15737603848383671656 0.5263449169607525846 -0.89230629537472716528 0.048164450200999464613 1.0689059078550597892 -0.48929172231715595265 1.1906805975925591756 -1.1485082139227966724 -0.15938402333257423171 -0.8436197692492960476 0.82295736570901967255 -1.9539931841601083651];

% Layer 3
b3 = 0.91984578942793415735;
LW3_2 = [0.70601189480199466608 -0.11515871511697570173 -0.6896633655382738981 -2.0884998673421177884 1.2218250396559919846 0.65141361574886924579 1.112070393070138774 0.56475091593064596918 1.5891880279031533885 0.22707613557967423756];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.568038194888224;
y1_step1.xoffset = -0.04979;

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