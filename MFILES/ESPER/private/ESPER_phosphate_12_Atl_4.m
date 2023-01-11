function [Y,Xf,Af] = ESPER_phosphate_12_Atl_4(X,~,~)
%ESPER_PHOSPHATE_12_ATL_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:30.
% 
% [Y] = ESPER_phosphate_12_Atl_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-0.52];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0145232735458572];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.5737631978549018186;2.4973824453514121835;4.2750607814239280913;-0.99746192480495587951;2.1699960865492622375;-1.6180111554189458012;-1.5941695089881646741;-3.0598664437421683182;0.68858979300915745814;2.899925604004160995;1.6370613968733265242;1.202255582534372591;-0.86225197672566422646;0.31866136242001463774;1.3725455838276430232;-0.64833504066525404763;-0.81764408451108094855;3.5689002075491575994;-0.45176816897099686399;-0.92030746815942621186;-1.9887022009915789056;-1.9248306495750242551;1.9513390778843702211;-0.67251550151293515434;1.4168095481642764;-3.1022036442534606238;2.4415082639913436857;-4.6894827659012818799;2.4710252130502294854;3.173980167018605858];
IW1_1 = [-0.2400736852062858584 -0.43675373581089377284 -1.2045255588961982784 -1.4334943096456405076 1.1030302561509808257 -0.77333349079721114272;-0.35572587699553870344 0.5507833347430559634 -2.7232486705396268256 1.2501982118008898581 -0.37132242814899979466 -0.34351513437541347784;-0.13700130861831946727 0.31687454733395087336 -0.42084651600607203559 3.4689143418647474526 0.2461312438094414301 1.4156701866738898854;1.644035055861702066 0.89016933022591748781 1.0807548463012011108 1.1933966936334643449 -1.1130726950327283209 0.063864885047414277075;0.89067039738066422494 -0.52845891629169738923 2.4987988821414424123 2.4914940002659613505 -1.3787551726215667713 -1.1499427593087068189;-0.38442737133632959301 0.95253192185591928354 1.220448262481589774 0.72770933755086231187 -0.78048234776270453139 1.4142541470462770548;0.23638883908454072502 -0.41046886008463895346 -0.22095870482789614631 -1.323038316559022709 -3.2971043167069122859 -2.3552061531362609159;0.10043137944133116723 0.36062299306042666647 0.3257338136477566648 0.58118443707770295337 4.3274198827082628327 -0.46919113910177712157;1.1638253228272246176 -1.5276531369596777488 -3.5765217229921564268 1.3179000374642064752 2.7212519138244495309 1.4337534038406940518;-0.82716820715124306229 0.30133505424084366942 2.6705188961894674726 0.21689439703457497055 -0.75609698635082311924 -0.7068574649531307319;-0.66090007126475192045 0.19502209389071376022 1.5221914850726709911 1.5250540452986440787 -1.2207394096530206351 1.1815809497308655818;0.021471465474515890465 0.14240316994682283847 2.568667199460922923 0.19020304317357378254 2.036421865802126252 -0.54461212132940983732;0.89699528500579439605 -1.9410631408173590895 0.040046246742781746453 0.51852081477829581324 -1.5701557325419164268 -1.9566415892326531889;-2.427027145800769059 -0.82600107186998972253 1.032169850588122495 -0.27022387766624578198 -0.94631321394087164478 1.3349567310868593051;1.2798976289155936659 0.78028428481994038801 1.9799450857702967088 -0.10264057974365728421 0.74720656343671199018 2.024365094183420144;0.23488597592920348878 -0.91469107531059934413 -1.3976637826358455641 -0.95758192292133603729 1.0782487292949323177 -0.53076615681505123767;0.39124030758232886118 0.332637397375000754 -3.0881555757984302524 0.40185054267272934947 0.97204448117132835616 1.6767383524698484809;0.3774649925141413398 0.32550407168760475685 0.91293713987058633386 3.6669303493303693209 1.0132743940452368925 1.1656409468885708947;0.58586758867660992944 1.0435218531598291491 -1.2743725480613923295 2.924248232280495241 -1.0960896232633796643 -2.7699494337667665;-0.055139770037338622921 -0.44184106918853749413 -1.0406222906472819556 -2.9599117036795026259 -0.53054055326615601196 1.2412559269815004459;0.59433660505549634756 -0.23955906942086283018 -4.5546883107025655235 1.3903041711265597957 -1.2215904182823194013 0.51539163161981627059;-1.1635221719390800299 -1.4963157802415010256 -0.29203427770727585777 1.1002789721019243796 1.3543110862235596681 0.91091821791806015796;0.45687951690605677069 1.9483120188833233932 -1.3706165931542186875 -0.71834005175090975825 -1.9797155891469759847 0.13387495591539372297;-1.6153841009504734672 0.32721318739034110923 0.71050511132792382174 -0.40389825616540692144 -0.82023600790890205392 0.54214291832692229622;1.8349894094443306436 1.9975053094898231887 1.5820652049384447135 -0.034353897686160678182 -0.77821700277612482211 -0.25759489959737214004;-0.014348007734313944148 -0.95106843206014268777 -1.7985122309281791342 -0.38063741283556823403 1.1172579937902922254 -0.6779473171466903203;-0.066669453811744119887 0.28223974607839158457 -1.4158458495190913151 1.2103443167790697288 -0.42836015383012226998 -1.2212164069116477894;-0.56637338909144918642 0.26620035004991360328 0.18277931953560155875 -4.7677843372843859981 -0.14252703135551936242 -0.06849591650605298121;0.76547010325213793447 1.43100693283946101 -0.92267897058855019576 2.3379276548897505172 3.3355567421984444465 0.84203986386224760619;0.87531398668831450482 0.47714245101505442515 0.94229591165092019267 1.9112631279433187625 -0.12167623844835781521 1.2473537502946618893];

% Layer 2
b2 = [-0.97126425660652793148;1.2916887275837349858;0.052287018454593284233;-1.0045803957231860259;0.20796868021841247165;0.68821238561287845226;0.83176115890630708538;0.87283031311747838465;-1.1862408832311750473;-1.0254065947327548614];
LW2_1 = [0.7008354861733190333 -0.6406494663989453775 0.67652702887018423272 0.12241307530726092123 -0.020908536340811023635 -0.38332595522757811901 1.6322348598921874174 1.5700043887162276057 0.67732139684681147429 -0.67385175348800574469 -0.46315962213774247713 0.92475792638851361804 -0.32159572178940365461 -0.02850957607337550187 -0.17546389752193350398 0.099289974857242752071 0.0069045147032324796776 0.25044606992955714686 -0.24849335276312692344 0.067139511133963630796 -0.56859117183375296189 0.86692717788786521904 -0.33008946764892138637 -0.27637587045805822594 -0.028528169414562980222 0.47117693839899466024 -0.0045048956224761453615 0.98683868231251126169 -0.33866925761845156906 0.099527762727180529856;-0.10554010635247224048 -0.22248647873759030968 0.099023365840010660333 -0.44663086287617770331 -0.46951096853169593803 0.26680413942746888933 0.91640472376475579086 -0.13057167091121379965 -0.13121994629710906355 0.18877881150323666537 -0.055986902832871388025 0.38537103424856400391 -0.35965690328109828355 0.021746749619055205649 -0.48343381402961171922 0.30546722429102662888 -0.85930110191401354314 -0.73422968147320932797 0.10573128959645357317 -0.60450633710665035991 0.38048970395351122686 0.44485186481242683376 0.0034399885372533630518 -0.18428298106055854277 0.44669052189613844828 0.94541887798889312489 0.49871888657790808264 0.0089686074611157115544 -0.20485824966159951743 0.70128024006557276859;-0.89362138336776830716 0.042252755618740922561 1.2243373516558486713 0.6162156224300777696 0.2779071270459330667 0.98418058622462423202 -1.1155662889714001995 -0.12755177537551629086 -0.072911408723107890006 -0.34432421089132875247 -0.38706452329237794885 0.60540095609739486004 0.34096593715673978453 -0.081123224783938741034 0.53903064935346900466 0.1347556283872173577 0.59779665886897159766 -0.002558697871407000779 0.15921648965028570299 0.49633310925886980902 -0.44361812302997594148 0.34546930518319590719 -0.011809738471916691668 -0.039938547355071199463 -0.1569644650144710607 -0.21655595367463983947 -0.014767537435790938777 0.58922510925406368365 -0.32994552074879102133 -0.43459571734369611962;-0.39046283648234109132 -1.1138468488716530835 0.31645990259981460202 0.22621835564636852411 -0.82207690289870438693 0.40170625626923350815 0.4072493559770801741 -0.61657478080010963417 0.064794955423165517816 0.081486213006058530461 -0.91634524222362556678 -0.1907036702643581938 -0.031413333358551752406 0.051770265501191195523 1.6670247416646000183 -0.9865552267017242416 0.14975443303423596753 -0.34437105646835403094 -0.18064816074050879524 -0.58233379855860434304 0.38266069405128488867 -0.35831634324522548818 -0.26643001657479242761 -0.2325526531018518861 -0.080903134853469546584 -0.81595931391673748312 -0.47402174071360647645 0.010314645892971520402 -0.10294854643218742662 -0.92932600544003340914;-0.080175725326802851911 1.3025792406274592228 1.2628202796379530692 0.6673412539368112073 0.4722579209758877572 -0.055644562457408661138 -1.0987660678252726409 -1.3631691390867546332 0.25197118841862498062 -0.47938583417365188133 -0.68835681739058662831 0.63166371125722853286 0.38480971827928933671 -0.1329868393779855551 0.17251664419638146342 0.17718240375828606115 0.27425140584434970492 -2.0111050897273368143 0.3425755096672825073 0.55619386558957173428 -0.09369871634176313302 1.097317722692984221 -0.33965262657079625663 1.7442221903917511927 0.57100741544172228803 0.16681715661101839676 0.020439497391615824018 0.56537602654365060051 -0.33071395249376817072 0.35672773295710302754;0.67273052975947467136 1.0309919536358675973 0.49475682665617376488 -0.71918091955058249809 3.3034091307863522324 -1.0206171371639027878 1.6217128849882656016 0.71943338022974279156 0.09023127665369096162 -1.8391652712107631196 -0.31064150219916064621 -0.82935362582885607807 -0.85375428630435257205 1.2544890557439747347 -0.25073451763452486718 -1.4810801354121483353 1.4163371451898731923 -0.25178741668318982416 -0.1139405464953146957 0.094665447605658564756 -0.16459738729832590343 -0.90661164660659654402 -1.1759783529382148437 -0.38204955773680665532 0.043542310981466061937 0.74430970915455973991 0.77376379404884287894 0.026138762638298659868 0.57867106682732460943 -1.0639379989117887515;0.55514268834631630423 1.7123344720997450974 1.7139737404085870764 0.17353580291764947319 0.43033652428733426554 -0.41101395750840141741 -0.91667778584701031797 0.60790428775749383306 0.11623166063779952206 -0.60101870434751514249 0.96276750926448173562 -0.31880133310817720949 0.3556011158913516268 -0.40065319071260779848 0.6549163017725582181 -0.5297713896240673348 0.11739989245742510349 -0.943394497159473433 -0.61809898185838807461 -1.7838069089695678393 -0.20321029837785908878 -0.069025380160967458876 -1.3663965166614959745 -0.53318002550497745062 0.14162529649232599716 -0.784430893459029277 0.39163664842891576789 0.73127542554599289648 0.29932541925129418914 -0.14929908812800540829;0.094540784502346819629 0.19184241758114448095 -1.4258710978780468892 -0.62180141082272077924 1.3406439438026658273 0.13833622887508664756 -0.62113264425555680948 0.8794161219142574426 0.46868742696919701851 -0.61846306653193594549 0.10285658647771378504 -0.76652314316242442516 0.27708572433205275187 0.059743368862675477748 -0.20494248077415333498 -0.81608515076719756465 -0.3343672020690786062 0.35685475675135275297 -0.085313530989760771872 1.2795467734687464567 0.38321204822005350277 -0.40387198869502921594 -0.061136077333627997232 0.78999118049447392131 -0.59647976711329120381 -1.1765303642207765034 0.58464287364096012567 -2.3006444338050919818 0.0086118636459699589303 -0.45843614108175700927;-0.11552187364056624996 -0.7251297166295233021 1.3650750555904114236 0.01210901063540889902 -0.71182068197050130109 0.097927808364684565401 0.94993891425241672177 -0.33782150438151381522 -0.35626722589144171893 -1.7295686387757769342 -0.053449793988816336754 0.82073028955598870127 0.11121566490454143361 -0.28157994260439217493 -0.19412120576178373832 0.51983400900290455127 -1.3849248036553900576 -0.45010896936291550086 0.52471505571068022267 0.35850030676538535701 -0.69560584170980666041 0.27695461473557092535 0.71171510656838532505 -0.64891128537587750014 -0.078258674056636307048 -0.80435429574777517203 0.10476524030569178692 1.6619261603300043983 0.29456018447396564719 -0.2807003895373588187;0.4641111490974523246 -0.98352625688575223695 0.51652028173748421036 0.55679976658958174607 -0.13627038724612783316 -0.41591831631899700561 2.2347486754696870292 2.472719953369847623 0.85925497512689541502 -2.0405455996370163163 0.44504884837894964633 0.23513061040154606407 -0.12971861468840845122 -0.26685372619861491561 -0.92370211074681474184 1.2553948684639362199 -0.70872294742992159033 1.6572732712892579432 -0.39123269340444410958 0.5100058438802173022 -0.60007100797882151344 0.63246137719141215516 0.096555021479184335864 -1.2723497470243791962 0.36566744974530646095 -0.52216647114594172407 0.49129059019046783519 1.2334449428309499641 0.10491088332081788259 -1.5135221061473653759];

% Layer 3
b3 = 0.84386370949979994105;
LW3_2 = [1.5111360585247441968 -0.83537339987010972298 -1.1618917790305918203 -1.0209657024093612421 0.56765534824661012525 -0.24356024041218837795 -1.3421380093736900996 -2.4814594415719803955 -1.9780323319880199762 -1.1824465763886988778];

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