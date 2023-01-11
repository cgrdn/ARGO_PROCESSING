function [Y,Xf,Af] = ESPER_oxygen_11_Other_4(X,~,~)
%ESPER_OXYGEN_11_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:48.
% 
% [Y] = ESPER_oxygen_11_Other_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-0.9;-2.02];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.0415843642790311;0.00819772922900357];
x1_step1.ymin = -1;

% Layer 1
b1 = [4.3711406442464140198;1.1594281732163047582;1.5370492419431103226;3.0209537043686092161;-1.2400924427436583741;2.2267805895062648958;6.5037229631502500027;3.8412493693970990449;-0.22259528807496301028;3.0849160950247500601;0.54909497788971906029;1.7205395908676084371;-0.86755088774114008654;-1.2342888574453754202;0.17066555357803595006;0.044094895072166052918;-1.5702945764634090864;-1.775615276600962078;-0.56878201512197334999;0.33965903653914875093;-1.4377312713435574931;-0.18648038553580395527;1.2686302870351198191;-0.40088871453207008955;8.2721263111944995927;-3.4631216772559736405;1.3897429076853002883;-1.0723148770798411888;2.0041420751169747305;-2.0233119139388882068];
IW1_1 = [1.1317371425173998745 -2.518546003681857659 1.8041102566117335204 -0.94542025389384520828 2.0610577186695002716 1.1315902612939414684 1.2567540079618773063;-0.16062276445340251119 -0.090561883919545810295 1.0082974418617829393 -1.3815546009952002215 1.3122782543238231678 0.059601268542983996956 1.1526199671486192511;0.037139052283000011101 -0.057186630600795262946 -0.62961119683849231521 0.94707026845357422662 -2.6385074937554322538 -0.30054930356644360412 0.23242123184853294426;0.66722098234650328852 0.098373431041010553355 2.054119815360354373 0.82094547236098458498 -3.2417457990875204743 0.0079468418782976217585 0.22381158054461791629;-0.80461128669794979018 0.01686582425512636943 -2.0652092377197952544 1.8287656307323310045 1.0992483419976153414 -0.055002262834896467614 -2.9555268527420848201;0.036787447853876116544 -0.26524949235440792306 -1.8013366214856652014 -0.43030989596933832964 -3.7901243888966313911 0.13054827150833711591 2.3855286227187608716;-1.4480707133221695226 1.2900911327793302963 -1.4823645787673274121 4.1370672104525771928 -1.0503996077749873095 1.2049419811063857289 1.2238795267388062893;1.4551301593418703995 0.31672838190525598456 1.3462286709959891962 0.99404002091810828023 1.3274287866931255842 0.022137473694471790364 1.0024237624298932836;0.0073341633444081915164 0.098055059465687793852 0.3754180464315535759 -0.74990930949914891279 0.82884507782887018035 0.82177971497264112877 1.7113256747813927472;4.6020150262575025835 -1.7292159022919391109 2.5419027487827934308 -2.0908217907502146815 -0.39920159693920848065 1.4111738205667847534 4.629563014192824788;-0.15305149719369587347 -0.077037786484344006332 0.58164265518712165992 -1.1197591695304456305 3.5747361563270514395 0.19068070405287787517 2.0308701668916184779;0.17638869474043017416 0.13847447478580765523 -0.49047606908122193259 -0.021939545881100721431 -4.9052421186945780462 0.18898382345161127138 2.5271322422362336724;-1.1298022657882342834 -0.60549979572753231949 -0.31700546823541880803 0.51437170198444870373 -3.2901454031272017176 -0.92302445427417056933 -1.6094078314078854586;0.14406547919565854121 -0.41475093021961728645 -0.57436369167815692904 -1.0098576240874952425 -0.17869336826635467963 -1.4693832143481695418 -0.43633536212127255194;-2.0949988309957885413 -0.8897850396484479063 -0.62716176807067014476 -0.85845663958638251945 2.4597587086643124543 1.7248948940704493804 0.87011073599822463809;-2.1053364715394522477 0.24366282843566433591 0.66462585774239713032 0.51951706862848201496 1.5495136821274342331 0.66298665509564902454 -0.87117605394812203112;-0.070426571289800121711 -0.10007994307805860579 3.9126877484524529294 -2.8968414520261380751 -4.9696520672864421542 -1.8015546768741843575 2.1790926526847780309;1.0569370789109644448 0.050860534690405592717 -1.989116102353554183 0.27312278669543499365 0.6953991671872050695 -0.21049643059829847846 -1.2803826905046489237;-0.30193956839743807397 0.18098273130800165975 0.33693124287345965762 -0.18378567511416263325 -0.80654727578318030634 -1.1276357263406515674 -0.41838743511595383184;-1.6412847165786146331 -1.022967739927991504 0.70009262050903964258 0.12873042732138734179 -0.49241284598073820078 1.3503699760964555932 -2.5337056906353594421;-0.14720320790663132815 -0.024268327716904642549 0.76100554219967087022 2.0202057724005832995 5.4135584808199155304 0.0048897934335130352826 -4.3619921309517071251;-0.02494631334631080069 -0.026319821004265542969 -0.19070180047537099721 0.00057455317511937657304 -2.5354985897992223798 -0.2796908350575713631 -0.04431239183698691686;0.17756485538638946964 0.016545208271610465506 1.446374266614348203 0.24584021909652858939 -2.3373035819112435441 0.73580643818676005896 1.4090005048035327828;-0.21714498976781262951 0.72302222564965701324 -2.3537221776473074009 2.0775097959943065185 3.3745941864717630132 1.7375588139006239441 -1.3610423098972745937;0.77349419576482170147 -0.36655472979602876649 -1.5768865765195017037 5.9931872457624217887 1.7318712138921796839 1.7570722090328074749 0.53924198256525757156;-0.81152872261684616539 -1.0295210941064338872 -1.4820532465945823741 1.3380500560757573325 -0.29409344652660096564 3.1619436871927217858 -6.3936738406442010785;0.13596945870285556679 0.19009421698969897196 -0.24072476793658559302 0.32416736699544346223 0.64014245890891530166 0.90094211329387585696 1.0437364861410149963;-0.48437190575758110045 -0.050922407414875289766 0.2167229202897298368 0.39454145557616204787 -2.822791299618293781 1.4562668115468710983 -0.36894828799702811262;0.20425132603019877098 -0.22963090649749895444 -1.1365120068126519648 0.77497271380326637757 3.0064166968801164792 -0.89816177125275953319 -0.32232313896413017362;-0.29035241263260685995 -1.1198638671123979371 -4.9007506014077160117 -1.0505610097430897465 0.28215950774068965234 -1.3254046716342555712 -2.1076263438644140535];

% Layer 2
b2 = [-3.0584943673716904478;-4.5164223574225577096;0.78646309346130183204;5.4088386099573062538;0.965903340320215964;-3.2477694751195147482;-7.148676710692497771;-1.6846473763669591595;0.89498382601294335092;-1.1100087801717666292];
LW2_1 = [-2.860269374621895011 -1.0237968626363238567 -1.0347441353008202114 2.9877995963552290704 0.15647526349246201893 -0.70398380321141373894 0.12015095506353687393 -0.12002022115379872014 -0.89791473933911747363 -0.84927434733379292275 1.86182323444612563 2.1749264410398447822 -1.3376782635710777747 0.55756035997604791454 0.90977548912203420883 0.14344784302680035903 -1.9616785709427244644 -3.3316703577733566277 -5.7076653541115849322 0.36327878854171646861 1.7393448209477495592 -2.737804985242104916 -2.9729846866177100928 -0.030546627385581826691 0.92630668933527915421 -0.013377198047116220514 -2.699274650731846581 -0.58933829965897943648 -2.1667953353203177613 -0.32780330287280756707;0.80864912511509989823 2.6119763843240337842 0.91754447589819765341 -2.22978437665350393 0.86503250225747863045 -0.74841134834389211328 1.0791943862037063351 1.9284796269816693037 0.18189381837768775485 0.20251506572352970248 0.098862285716522085854 -4.4837053325134581527 -0.34636743805251368755 0.44182550006187265579 -0.061661825297125022471 -0.69573660120701319443 0.61054539542822727771 -2.1965451016061887657 -1.1294488143080594345 0.029680586570189858991 -3.0833104475082362406 3.8111206861983228933 -1.033755349355844011 0.42299273994961122947 0.46867465781388112367 0.3449869015393591809 0.8757719193601345431 0.15634135850912772581 -1.1401363141137623725 -0.59812620870210775337;0.99765020407986360063 -5.3593812802574811727 1.304638196624641866 0.86947600929460289176 -2.2778028780000738607 0.88843767069190493491 0.12706923753195525917 -1.1839966379495308058 2.1396177383909948944 -0.3141515792463914214 -2.4456645775607541715 -2.3389292491634305904 1.5696135771637134138 -1.4081196460859541908 0.55714600361030419684 -0.34909787047156570772 -0.21494691149509009831 1.2302563895719798026 2.2399426956748356154 1.4442221012325302532 -1.3244882354291001025 -8.2645808729130738612 0.13440455750333044072 -0.3351521524662268714 -0.424939687303934166 -0.65254174139408227528 2.1819260724448241717 -0.57834673565288963193 1.2920802998178058107 0.52163936923402254298;-4.4854765451558984424 -0.64532111579709994231 2.6709461846454654044 -3.7744420283795414583 4.6087678794690107864 -1.4944706696966194581 -2.4487532881930156314 -0.70690274603185176971 -1.0701309890168861916 0.021213794883190695284 -0.48386275617262980431 5.2941673539212938948 -4.7473130194307318064 -3.1196987228020098826 2.6077012093604130527 -3.2598790596954843046 2.4495358627307521893 -2.5811080834586035415 3.0844961706260973777 0.46483500874036004502 4.0822970146949275616 6.1008488382526948612 -4.9061346782577031078 -6.4118524222223873821 -3.9786015450095222334 -0.2127481481337343272 3.7549737249147452367 -0.13511978957759943065 3.4729592532693867035 -0.79097883225639076255;0.62153865690510512465 1.2441977887071626885 0.90025507629776124752 -2.0935205664125988712 0.4651015244877840793 -1.8648170749680554881 -0.82022538847218739999 0.38391268527236588337 2.6337865101755286723 -0.20107429389899561523 -3.3109798581307998688 -2.3090287701048550772 0.5821520550492526036 3.0066726070098082069 0.1727695287398952062 -0.075869285660668667193 -1.5305411641838531089 0.085217770568222245275 2.0517931222479472986 -0.16680533975646102962 -0.020716615310308977155 3.1880211210258631027 2.0650817959854519401 -0.045841583306539944453 -0.6217201944979379169 -0.23891894634150087628 8.2378535768364962166 0.38273437044904440318 -0.87644859465586966163 0.21985018352022503429;-0.31470660548116757838 4.6071014715798064287 1.0515642179066706507 -2.3727451996001320822 0.79972330490486387422 2.4362121618049745742 0.24109162827639432636 0.81987023265180214437 -7.4911444859214002534 0.44025660721885467863 3.1769524990423807509 7.602275394564115274 -0.61046282741080781786 0.93829202609712636374 -0.44256955107682671713 -0.87996997279776267842 -0.85157824370763735011 0.14596173111644344944 -1.5856609588602517125 -0.20070343056601916421 6.5727791428988124878 8.6052927680809752076 -2.3852913447311867579 -0.26409471281985413826 -0.81720123854987114509 -0.98075480524250868708 -1.3252058973125573349 2.7642398523445987912 -2.7416292480017756539 -2.4360747126165009924;9.2255430631741450753 -4.9248986083105990019 -2.2040643728549871305 -2.0296628035331130135 -1.8929084332849657191 1.5324923562512107189 -0.31851440007393944098 4.5635096919708582064 1.4282072146946327429 -0.76107714226044997918 1.076085103273713095 -3.6894373176676995563 -0.41748718145370222743 1.0695986085225490658 1.632853903063029799 2.0923107433867191851 0.76347719376213996068 -0.53941793206822485907 -5.0022257189017862444 -1.8799620179035056999 0.083041703859265458831 6.0863530836797004042 -2.9961101684788253863 0.79915130526281197287 2.2690890544318511601 -0.26030356702374285449 -2.3149688910840504619 1.8692477279697212733 0.72013372709395029325 0.60115795625431545091;0.88119915567822715285 -3.4682045054425887365 5.9608243966877498821 0.011416037552551576081 -1.0650758820727952436 -0.52147400074298755346 0.58473435449671251618 0.72096371412202830964 -2.8972380127746348855 -0.089443629340886315893 3.462029940254579774 -1.5505108809232885925 -0.27438576138760351064 -3.4881297483945967741 0.095882094916898960579 0.34096348680315152757 -0.05260252500058888725 -0.19565288890561025048 -2.0611161952191632274 0.027099065012099913391 -1.9417303570414079505 -2.1575354916653246562 -2.8521631980906638759 -0.225039388473355223 0.33070940675693910604 0.073806295698287560647 -5.5922309474323661505 -1.2714608416741099983 -3.1047718047934633745 -0.16269778336430407162;-0.28661814540800806261 1.7904944111941847318 2.0063246503783731534 -4.4340536404706245577 -2.2245867190133243874 -1.6424857197170286138 -1.9332113058203781453 0.58628366157788014412 -1.4982264032439387424 -0.75973371868985539734 -1.1708146818688891511 5.7203371968452438878 2.1980744526976896402 -3.7267568372727004622 1.2803842838345955712 1.002935284823472939 1.0710488563708580045 2.6188109025143067043 -4.6291616115665981113 -0.38928164002418136347 3.7738333828058361341 -2.1138657676560903553 1.2493639444554216489 -2.3983654309192194987 1.8573294307444436768 -0.27615428332327462968 -2.7963884931494353836 -5.3361467423286361722 -1.7291292873294150656 -0.63892450806163558763;5.8696808488806695436 4.3906300639749789028 -5.9688170360686010341 -8.9413479797923471892 -2.7143873194068044441 -5.5874947018312814961 -2.7255203494182831392 -2.5802803052382308202 -16.953397137663806404 5.4368897550170443012 8.9100384083215651287 1.7165580343289990051 -1.9238443251105024068 5.5807208555058798183 -1.9245853573125584202 7.070281692762610426 1.2372780838474168874 12.815220803868761834 3.3413900694854570261 11.576587648363588556 1.3799476154945289341 17.98334608952634639 4.4615805268557453545 15.495468564625740626 2.6801789879290716101 -3.2663370779725133808 3.3106719995352138497 1.2339813991125634374 -5.0911669731027107133 -1.0265868106560063211];

% Layer 3
b3 = -0.44612328557737618295;
LW3_2 = [-0.077670403302543766788 -0.5477735371007460552 -0.26207719101582738208 0.05671777283573336409 0.38156345088789284103 0.06654002702733667618 -0.084259698744161962147 0.29702314437942761716 0.058285286905545713454 0.040668889112321006396];

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