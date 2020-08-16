% Model Variant Object

VarObj_METI_Subsys =Simulink.Variant('TM_ModelType==1');
VarObj_METI_Mref =Simulink.Variant('TM_ModelType==2');
VarObj_TRAMI_Mref =Simulink.Variant('TM_ModelType==3');
VarObj_METI_Moni = Simulink.Variant('(TM_ModelType==1)||(TM_ModelType==2)');
VarObj_TRAMI_Moni =Simulink.Variant('TM_ModelType==3');
TM_ModelType=1;


%% METIパラメータ読込み
ALT_CNT_set_params;
ALT_PNT_set_params;
BK_PNT_set_params;
BT_PNT_Lo_set_params;

Driver_set_params;
EL_PNT_set_params;
ST_PNT_set_params;
VL_PNT_set_params;

COMMON_set_params;
jc08 = csvread('JC08_100ms_spline.csv');
degC2K = 273.15;              % ℃ -> K
K2degC = -273.15;             % K -> ℃

ENG_CNT2_set_params;
ENG_PNT2_set_params;

TM_CNT_set_params;
TM_PNT_set_params;
DF_PNT_set_params;
PTTH_PNT_set_params;
ATM_PNT_set_params;

%% TRAMIパラメータ読込み
% ALT_CNT_set_params;
% ALT_PNT_set_params;
% BK_PNT_set_params;
% BT_PNT_Lo_set_params;
% COMMON_set_params;
% Driver_set_params;
% EL_PNT_set_params;
ENG_CNT_set_params;
% ENG_PNT_set_params;
% ST_PNT_set_params;
% VL_PNT_set_params;
TRAMI_Standare_AT_Strategy_v183_define;
TRAMI_Standare_AT_StrategyData_v182_9AT_d06;
