function [Y,Xf,Af] = ESPER_phosphate_15_Other_2(X,~,~)
%ESPER_PHOSPHATE_15_OTHER_2 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:31.
% 
% [Y] = ESPER_phosphate_15_Other_2(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-138.904784718693];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.0042772329208737];
x1_step1.ymin = -1;

% Layer 1
b1 = [6.6084748890928439735;-1.1725850014700536228;7.2284501524006445905;0.68694562684533400088;-5.8803727896706829981;2.7521838436307319853;1.5906949484753380997;4.3385756600000124905;-0.20541473283959055252;0.61839769700068014657;-1.582732862183930056;0.2485181030058946916;-1.416875246529420318;0.48175420819649789062;0.804275713464548625;-3.1687327447526958402;-1.1536802011947466795;-3.5194193308185668378;-7.4816611850230172465;4.8571584880581131216];
IW1_1 = [-0.15999752236566666674 0.73653782621331320701 3.0022028913710752107 3.2206579422715857497 1.5965313719513232193 -0.14229465984602449047;0.32576878679081794354 -0.12648592142812747907 1.2153686753349552951 0.29480342952833038517 0.76557653276253168073 -1.0392246002612643974;-0.19993151622237803622 0.075017522603630634737 3.6776159283363631936 3.8356306888884632578 2.5793129895552135977 0.95207132090332424745;0.0039033412096247110945 -0.05294761041079061592 -0.20421081797913315237 -0.054237655276089813405 -1.0404345047676923919 -1.1279866647151486347;0.67854040758473654904 2.92487711311943821 1.1776344418689175253 -1.7823430551602550409 -2.874811925414034075 -0.97927589379567037131;-0.0760439689510350042 1.058906493835399143 4.9906828841757189252 -1.2780254356456537401 0.15453688351115202337 0.27862301889826168733;-2.7811990689949124267 1.1468198274799936698 -1.8205128920144135751 1.5151325503598287447 -4.2817699614869972891 0.41532698997500194782;0.17887654663209481831 0.16409511711902058373 -0.61307232094925179222 4.8453282942055420079 -1.5951053911708126254 -0.079295192194502206462;-0.19152353370818858691 0.074243576859886473152 -1.2572884384803106883 0.16967227667441636685 4.005318345886907494 -0.53054727937996248865;0.42192943879149535924 1.2731345210175055715 3.2779799654900489969 0.33765906066096212923 4.9010724798723384055 -1.2542763662355322918;2.907308410595187631 0.80297020862838441868 -0.18844503881540641821 -3.1563554910147431087 3.3670118917997466923 -0.45889538696843545917;0.082440556998594524685 0.46975947519060590185 -2.6181536865261594293 0.15151968057573150794 -1.6385497573255927151 0.40795644857591734089;-0.14330851960165794101 0.059117853368958583893 -0.34072965256281845248 -0.77172070180845575571 1.6727745701464336037 -1.8541250092308370068;0.56885531365876984555 0.14373835075405130834 0.022778312483542943745 0.025161466449539718337 -5.6155524211834606518 1.3790366113748222521;1.2233241187502312819 -1.500525839306462883 1.6779325012035994913 -0.32160227782857847556 2.9226174651163736584 1.0928317718628408617;-0.67325805328471766131 0.20551524845028482091 -0.99934841477227875917 -0.78708245678566413073 -2.1460138801975747747 -5.7152125252006236167;-0.17522833594435138771 -0.0099309203196651357065 -2.6751756335395828756 0.50100401945424921646 -0.51537346853672783009 0.060518418011957210434;-0.63226096910267504114 0.34493042209922947228 0.94956145980372252957 -1.8863482215910880591 1.6406118638836770796 -3.1684304023417766416;-0.24110683189017750871 -0.18965478446423156278 1.2843444026563584082 -5.5024669031169111122 -2.8227994354890779682 -0.032921012252175668733;1.2801733603729705813 -0.52255477792224169775 -4.0857000178370501686 -0.43360970093095102529 4.9538869595569039461 -0.60249551249082389237];

% Layer 2
b2 = [-2.5917170262816395798;2.8191530961285895529;1.4478233257573138726;-0.88036388237633445009;3.9587530135622981398;1.031597604194679052;3.2731481543742826368;0.20648190809812697055;-0.38788257995699276792;-1.650237148891808614;1.3656985256537692575;-2.1916628344961726071;0.84721435075211293242;-3.0696218646222148685;2.1409237727163081821;-2.5501230056698998006;-4.6034064440985460465;-2.7505989612336958494;-1.3404031795981128372;7.1371384016707315467];
LW2_1 = [3.1696108491570962329 2.7243017210224906854 -1.852856760608158293 -0.052274004509406647723 -1.3905556302511434819 -2.6592197826273329397 -0.30325186836022671732 -2.5503185872431575199 0.30235421669885098606 -1.0131149385801530016 0.35844257780130861502 0.70062594277350820349 -0.5027347378963030744 0.088335187217476865418 -0.31986915096388829349 0.26223204660153925927 -3.3409065672002968839 -0.14651445900309253978 2.6743822352549817545 2.6654672431646040387;0.47702348562341767568 1.5018337458103319104 -0.74875808119370790283 -0.99693227896695835177 0.14171903214412362448 -0.08284533449078491929 -0.17926191840031013847 0.57151077472542510804 -1.1869152623980987471 0.077793612991597593798 -0.024958705724370835316 -0.87594262571663839001 0.42259468125856175513 -0.0017404367781333226865 -0.062609301105794615272 -0.48005304613800392488 1.279805930148322668 0.48564523460788017184 -0.74979659162896472591 0.62424440554469262654;0.33095774010489864558 -1.9895781985098761613 0.62450666833561929714 -1.8259303253131089484 -0.41884526943285138589 0.28286317395023824472 0.76405007006752101439 1.9051443234543294913 -1.1087273043107954695 0.26378919471533240904 -1.6210608159151795871 0.16754623079497316107 1.3180524518716734139 -0.93105978451513915495 1.0597532441988974927 -0.14501528820832640387 1.8660659146309208634 0.51834987465376536342 -0.2653984737732530963 1.1146857214311494122;0.066720627916600966367 -1.620390741307118132 -0.37234111266487301961 0.055683890484331678705 0.82294315736406054018 0.38562037188851988612 0.072050641215962912822 0.46616377291284993856 -1.4039651033488464993 0.14308977348389972928 -1.2893676811748400191 -0.18426960037649145474 0.89758725630466773548 -1.3179979915491286668 0.17539140486550494624 0.38122468926086328089 0.42197456689720691525 -0.80564163062843852092 0.68375601714280076493 -0.74627095383588859523;-0.23710833458124164208 2.9989935622695980122 -0.50980453005616621631 -1.2059688934193484311 -0.3120576497835974572 -0.17573545499262982483 -0.14211391493440730938 0.49449509017891940532 -1.1193516866204678006 0.10952353914689812175 0.013775484273979007183 -0.7534858977614787845 -0.042000596528016083397 0.023519745749117505762 -0.045589158007755155311 -0.16182658525419738038 0.89136782298432515326 0.57565968931940125763 -0.21597579781906006691 0.88473438076479316017;1.4918200556357212871 -2.209529098802870628 1.4199920336343045957 -1.71983863886805044 -3.862806379620391084 -0.41202827071093617306 1.7004951742089335909 -1.3191169578169439358 0.81374072269084374298 -0.90258989695757452232 0.0366442531409799932 0.51718480074241168776 0.81666894008079882195 0.38779697676129865069 0.15580129760909411374 0.021737897298051644945 -4.4116775022701713027 5.7064391570896946249 -4.4606379467245771409 -5.9849605415716071732;0.63365826054131524359 2.6746599331945004607 -1.6913223090086562106 -0.64407596884226814282 0.72779371341898857484 -0.18456393980393281939 -0.15952111594489573609 -0.17199931106335145103 1.1861519007893319699 0.0081766335583178390012 0.074190443258102839463 0.37190127146911089451 -2.1711364637566488156 0.14826905476924265304 -0.057443139526248486459 0.11562482205429586157 -0.32842853677256539369 0.25117336770119097489 -0.27084519344984619993 0.49019224166351227367;-1.071548134913343775 -1.7732524783122245449 1.3028343812628844223 0.39969279581951350222 1.1490937832899608129 0.16445658312437302917 -0.15449019672220404287 -0.7876058855542847903 1.2530232726587304803 -0.11897774757705512072 -0.00093161214902860321665 0.7226578741274939377 0.49554865271510595282 -0.058465926755604753773 -0.062487544873828106129 0.68945231357372560588 -0.54651234755442545943 -0.37609003803140261812 4.1486435542312207758 3.71815618667425829;0.90317970911179124016 3.5342258045477215056 -1.9244561286766626029 -0.48627092008773253884 -2.1077973701301835341 0.099188324599704114082 0.23733381941182496444 0.1997541810587677158 -3.4494686816490656156 -0.096747951378032145953 0.21494763592683782671 0.78952841263032780272 -0.22311215514869436882 -1.0987524572503126752 0.28440107648499524107 -0.29764258748293342949 2.7973401882358444048 -2.213708920243425915 4.4233139119046906984 4.3460366157505099238;0.38233843362222580398 -1.8586539101482659753 1.9833839788793776737 0.20445221209716465949 -1.124000550263217546 0.13264074082337246052 0.30243815651220945506 -0.20072602505174472198 -1.2683784920922263062 -0.020822151100484791175 0.024644849742739359522 -0.20258129484509870832 2.2980059728603778879 -0.24174232446836765864 0.011988985575435907871 0.15474946855478394214 -0.2117531051187327984 -1.0717544777133847234 3.1372984368504601704 -0.65939104883756494146;-2.0997186501106104295 2.0648376322278707562 -0.52785253515575947247 0.84633733267120370147 -0.88725758610538785209 1.1163082082407471685 0.15143640129170682362 -1.1368675568483967986 -2.3492987766098654134 -0.066660034163041809174 -0.045775843585323577889 -0.015063919306226093361 1.9784930127122049015 -0.57630382896274268134 -3.3524147057228102266e-05 -0.033773270478776359904 -1.1288759316526915111 0.050077167787681578504 0.21561151264294450836 0.56421087516224477376;-1.60073818676933044 -2.8130420989285429556 1.6183179941391989676 -0.10289405189012505726 0.34690751835872180031 -0.064950784269380196223 -0.19735349068885768564 0.37801742901676937958 -0.023968314337796371716 -0.27986231322704485658 -0.15811545243993427312 -0.61129496786409132092 2.2751455402132902961 0.60734721191011564745 -0.14900451242742651647 -0.17057460335572785515 0.0046740815035382216047 0.137002761541248963 -1.542442865534208174 -0.39971975371255857867;0.58802837998901180683 0.16495705378944980346 -0.36689743320612827615 -0.55856820275063245873 -1.5518373462205294899 -0.41756077348666004179 -0.094216182879217028057 -0.82755268274863047484 0.65963556189093852655 0.12472063162340453479 -0.14722096840077461555 0.3673637260619667666 -2.3671125745839280974 0.21722217761024062432 -0.19479758272423067234 0.67929087553460809623 -1.5520285746880606581 0.98947950304270837485 -2.4955822318721865294 -4.2156635805677087347;0.67809306037621253083 -3.8147168573768039934 -2.3241646278729630737 0.48825482998097297083 2.9989055246032583213 -0.68187595045932525295 -0.81982229855792154716 0.74676016017046153994 3.4900379874249969347 -0.49863275993854533352 -0.56226104977167579158 -0.78281689371143925449 0.15839555478635480856 2.1659495695822443828 -0.31908132333320954332 -0.79865321641862951907 -2.5042695036790303398 0.80501792885673384426 -3.9452157419042741537 -1.4473153777888894123;-2.8631178975034252687 -2.7308722672042549107 1.7741633114215740186 0.030277280180066295373 1.2228752532900315497 2.2656858382282862863 0.28017461494148654388 2.532216376737054464 -0.24660912929582495812 0.93498364443497627985 -0.4008898961257971183 -0.72421655049951683125 0.52004496125674648521 -0.06179317787128257855 0.29469776582948131738 -0.24081949633496663177 2.9282697609059917809 0.18360394347222167011 -2.8100367055494546165 -2.6950229339181599464;0.36880357910062078197 -1.9533387360140939126 -0.32019129952525882121 -0.330883221654878934 1.8492754194186193928 0.082182478613569850956 0.57054477046220264391 0.36193191405020724849 -1.7351802737168615653 -0.018849360043363062173 -1.4191709207045959396 -0.22319473390298721904 1.3555986908708630434 -1.2704709922404739952 -0.054043122833777129665 0.26624677034711846657 0.42760114016272354753 -0.5990748434105145348 -1.8505526284715607677 -1.092884186215876241;-3.2122792515666791502 9.8849669323314497404 4.5800615799784143434 2.7469639490082373712 1.7158705427257314735 -1.8965325995616695298 -0.66233294029177969264 -0.72723456953795473368 2.3675817065520479154 1.2070818281066919564 0.61451538589269294466 4.5858549515510924621 -2.237620406155771402 -0.10785267615809444874 -1.1854970024337281309 -0.7724572811371113179 -11.646050896004028985 -1.1676587427647331374 0.65175671065718265851 -4.6828431209060052964;-0.16553218903338254298 -1.7787303819232160862 -1.6039743904732195467 -0.27412479314879173442 -1.2244939536324053186 0.35163891870098162862 -0.25549025301109962172 0.041674811432271557932 1.9881070040670285604 -0.010322616482753767253 -0.069355697535557564448 0.34015708548181339266 -2.4558935310716658584 0.74763518778386184316 -0.041503728606941514556 0.35974204298073059194 -1.4796089551444631116 1.1533610963134639515 1.2166617375777535326 -0.19646260037620724703;0.38394235193815245966 6.4777789148544204778 2.0377630819524128469 0.41704886377423211474 1.7843020779198286441 0.66040056743452446586 0.71720369746098489028 -1.5564208383369981803 0.19620275462307709691 0.17781999528029268642 -0.61052074280086321423 -1.3355145164949937531 -3.2860735141466550502 -3.5888866354642376955 -1.6841811507894253186 -0.23539997808938264989 0.35892152176515490503 -0.78090376005630568468 0.68114877008736429698 -1.7850901807897840978;-4.8971117197428002399 -1.8867538411400339715 1.378961676460918051 -2.1094015982988576496 -0.78280677877280768762 -0.12250509492201641648 0.84758317922251480425 1.5433789408720195446 -1.0281541696185436674 0.10233475278647939655 -1.9183033390127284257 0.38817702934212106047 1.6503213899507047646 -0.73762215904401762234 1.0778313743081553433 -0.018523561688443414275 1.2837381727662033892 0.37889954201344627771 0.2536269201756365943 0.71941293239903048029];

% Layer 3
b3 = 1.1792028903113636051;
LW3_2 = [-4.5197358796878184251 1.2675271145561799457 1.9832593026916323087 0.73352457350976141282 -1.0275176050060814692 -0.11928375913830385757 1.3026342466435978373 -0.42200847756384934906 0.26936001638385259627 0.90373126406981130199 -0.38020613582553508536 0.8624985920642904702 0.40652892423444975112 -0.26176328328487480368 -4.7090334884460558484 -0.62089668891883298407 -0.58598257471973724808 0.80485288390330389507 1.3060002665076027029 -2.0884182736822505255];

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