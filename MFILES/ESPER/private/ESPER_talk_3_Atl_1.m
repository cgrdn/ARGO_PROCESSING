function [Y,Xf,Af] = ESPER_talk_3_Atl_1(X,~,~)
%ESPER_TALK_3_ATL_1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:44.
% 
% [Y] = ESPER_talk_3_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;11.29;-1.99149636107278;-143.241523403244;-0.12];
x1_step1.gain = [1.0000000017546;1.00031699124092;0.0153846153846154;0.000310077519379845;0.0705602618858232;0.0604107502911417;0.00458552991639557;0.0145655815308426];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.5876575845453815;-17.812878378891245;-1.3358368800497968;-48.807080975041949;4.2273813532758187;0.74910265775811458;-1.4617296561487652;-12.92116727548132;2.4488813246628327;-0.31847778439975205;-12.455668639965433;-5.6549152334350206;0.47219299692025879;-21.331603019428627;17.87437826806087;0.21358218571662332;1.435348934060984;2.3597327328740434;4.2627684808150947;-0.026860845333404791;-1.6352871894781487;12.074079546667592;0.14903771523710013;-0.38594790057765765;2.9092362482540022;4.367973554807759;-22.586558772054037;5.8158349181402054;-3.9024812571540584;-4.0817588487071044;-5.7612371109488301;1.6312682674408574;-1.6444711499991376;-3.6470208230066077;-3.7852547175608073;44.368752599974798;38.820842540291402;-0.26480087751090048;-3.112901253634925;-6.002520183009044];
IW1_1 = [0.77598836975929131 1.6781486176114071 -0.021347716415618438 0.029104935764887138 -0.66565842886366122 -0.31662412106206594 -0.12804867497525915 -0.18403733215911372;1.4030253266843522 -6.2783280730630588 -2.4153002342915828 1.6338248645969737 9.7141249906755114 -2.219632370978927 1.9657043762758097 -3.6786687649569489;-1.1478878036636573 0.39831354517126122 -0.14990758025106907 -0.48521410235891943 2.6426693432378965 -0.15123217143243609 -0.77816765550108979 0.37670239560983387;4.210364528753848 -2.2732985163772992 3.4476499155370055 -4.3760741757253614 43.745266715196607 -20.73759409731602 3.1457117996234718 3.9313001032916031;1.1740204292535941 0.22693439582231822 -1.0229650898134854 -0.096409275674307043 -9.1629456345203657 -0.47949170204722324 -0.76049264673332018 0.093450396544433559;6.1125975234462171 2.8886847445606296 11.01182262547114 7.6269894522352644 -32.100705393225049 -6.9246243174483384 19.114637154493924 -7.488115683238096;-5.0094126435270105 -10.195253978036822 -3.6461019346624934 0.9642752528025228 5.5922311058038998 -2.9303105966313656 -0.33806980116658769 -5.1840917884704938;-0.90124254645920066 0.049412958793997916 0.19653998168521483 0.18595819989221379 9.7280769154325686 -5.2074085059130768 -0.37574997836402069 -1.4603170697886705;2.1708988752452454 1.6590460076470328 -0.028717560127402796 -0.02793512153913549 -0.069605997816577073 -0.59277077925797417 -0.10805939347449926 -0.33284037222652813;-0.10990594553345638 3.6048399333743286 9.4741257269448234 0.033306814905801209 -4.35287095769689 -0.11705474745131152 0.43877122174678979 -1.148533779985883;0.74482660803770528 -6.127577434095433 -3.9883316643380669 0.0012142069062548661 12.514054308534925 -3.9532660933386388 -3.641223474262921 -1.6897213874765522;0.96314005740348918 -1.7177125442495018 -1.1776061797486057 0.46789323374363495 6.1335786030286163 0.030315710256464838 0.67157439187230783 -0.33914240214189839;-3.2983030669589106 -5.7696640194978368 -3.6043977255989934 -0.033942139434907766 0.17145567868580208 0.37268310278098776 -0.30747798657199854 1.3714669319006791;-3.132453841447683 6.2262255355152734 -5.0695128236551055 1.5312372324353023 32.489007306074427 -4.4178513334117602 4.9562900724032213 -5.5482590742555296;-0.78050794141559354 -2.7947483004081044 -0.61404681295612196 0.2702284435851387 -11.649668549826076 7.0078464886982825 2.0701146939702975 0.61578093622316932;-1.2536148701939691 -0.16617965173923119 0.10799218472406812 0.10075139081052031 -1.0254393390649146 0.52204528338691447 0.19448813703021284 0.15410537099341828;-1.5031200483936844 -3.0192286204772123 6.5275351590754722 -0.16737702123178796 -2.9278578071057595 0.00048478072879456872 0.61548009735610387 0.1826994136539293;1.2198657370754744 -1.3046759492989395 0.96122018110044649 -0.043533135303951621 -2.7360505240815867 -0.39827494398619329 -0.91731410047795658 0.8920316273769664;0.047569314599471689 -1.0950464649266451 -7.7362308363855199 -0.69186897261453439 -2.735263106881447 -0.15109022571619435 -0.6941705650425587 1.5246716814534711;0.1959167062457729 0.49003658488123109 -0.011650157316279318 -0.047408285273378675 -0.034207351476127787 -0.20230241204901106 -0.091218366908601897 -0.046114505238712661;1.6046983871387905 2.9054837465928158 -6.5997726439995983 0.18988887223125428 2.9596846041171045 0.012990784097602806 -0.58637805535540188 -0.23100031959463529;1.8502299236935431 6.45856340852204 -7.2685438095678636 0.59873461464598321 -2.1835236669630658 1.9580109669052626 0.047734505177358624 -0.48741089638144003;0.24362722183027505 -3.7741035300189401 -9.4203991330786163 -0.026892086186978782 4.2678182870300505 0.13492834933889267 -0.43375042146289011 1.144033165408729;-0.35337897769892318 -0.8176281882184242 -0.2864437145575876 -0.022305530325046945 0.75981334728999428 0.25292657488886811 0.21590755643205026 0.23112569650864137;0.065207016107677832 1.7275941403988941 1.0521981699039245 3.46273763066353 -1.9494799320328213 3.9573995710071448 -0.63311136959944447 -2.260076782419655;-0.025700931503767888 -0.96280406513203864 -7.7069562685661257 -0.69012530675179673 -2.6885363507732905 -0.14965967020754661 -0.68988995479510407 1.519084063695294;2.5585772991874705 -0.50922874143931496 2.2247656750763785 -1.2039480118127504 -13.877632791434465 15.240528426685195 -0.13480382403064145 -27.576554904245373;-1.0336897504094515 2.7277671986441949 0.84661690824782354 0.21819328523264075 0.17829068250496022 -0.52709420213770164 -0.017159165054102629 1.9136755740760356;-6.0280334353500109 -1.0728509459220779 -0.32372854588617805 0.54129865648962183 3.3479505618386467 2.3018754906902656 6.6087212262052004 1.8143821721705822;-4.8858298729037877 4.7742718872257273 -0.97859745152900623 1.3869036444774185 15.539626314216109 -3.9455173002075514 -1.0189461069997041 3.4712166814487357;1.0066733174498685 -1.8343267371260061 -1.2006819599150662 0.46206070865600973 6.133222063568093 0.010711285128979628 0.66428032058615938 -0.31342021791705066;-2.2550038795917744 -0.081029918244738111 -9.7814635250975375 1.669168828099947 12.927208918648924 2.2679875605042561 1.1253790253707556 -6.8848469709107167;-0.1876347869900255 -1.6352468908232536 -0.50260593396866915 0.29892819058574782 -1.4967475792803522 0.39955310143339851 -0.26417766110130886 -0.85673665252984943;3.4392246017680295 3.7691677425941208 0.63939835320894711 -1.0513313558893154 0.46368750627167238 -3.1006508766137526 -2.6168066388604485 -0.26399930170702807;-1.1203361202112774 -3.4404344468484491 -0.013241465652781375 0.030807060637347908 0.35566390776638118 0.59042775521878932 0.20576937538785156 0.1184891350588303;-1.5034045826235127 -15.961620830534432 9.1980590841318737 22.253891460441746 -78.70590312123359 17.643514005311243 41.076111255788916 -29.522701087712214;8.12413860401346 5.5713012516773075 -26.570333438088387 -4.721604459644313 -30.768610752295498 -6.0654089285324106 -6.9997394319467308 16.357923419895645;0.1792552243168597 0.92216335572622854 -0.091720422199599042 -0.096215852796429968 0.24932351540441131 -0.28174629255732647 -0.089024483729203602 -0.038769322740889851;-0.29363196858936036 -1.6136644491380596 0.048139647442659514 0.4789758433150561 3.1453610256955598 -0.8875981915978518 -0.20611177416596618 -0.36145393340400428;-0.26926177103463395 -0.33705935243367002 2.0745278334033328 1.0913318275716428 -4.1681881928492306 -6.2618065834991796 1.2415052586970594 -2.2090981816469575];

% Layer 2
b2 = -0.38687041225534402;
LW2_1 = [2.3764129333982065 0.033720647458375566 0.12742850280627654 0.0035046275664151151 0.035822352589943283 -0.0036806993474908976 0.016182922658362575 -0.080137323985319836 -0.99731358567326278 -3.2500070315105809 0.015712120333648029 -2.3329548153495994 -0.016083341764089071 0.0054499923820893791 -0.060046794731115551 -0.81592257595293671 -0.77807007597087741 0.094325500284078254 -1.4959978992008649 -5.4366916778185619 -0.77166648348098843 0.025599579652810799 -3.2644002854635237 -0.71623957676717798 -0.0087212363911818094 1.5094152320833014 0.0035849521217042619 -0.16975926462140128 0.0054778497984886267 0.0055460174874771527 2.324402110164542 -0.028783679627243364 -0.33332667040843983 -0.019454389545886287 0.77083357099931049 -0.00086633732469478539 -0.0035262527296397381 2.5657430311995495 0.10943310094149064 0.029651749815342011];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00111018595614765;
y1_step1.xoffset = 1025.5;

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