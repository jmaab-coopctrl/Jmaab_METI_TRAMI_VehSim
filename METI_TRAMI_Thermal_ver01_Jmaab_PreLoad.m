% METI_TRAMI_Thermal_ver01_Jmaab_2018b_Intg.slxのPreLoadスクリプト

% Model Variant Object

TM_ModelType = 'METI_CVT';
TM_ModelSlct = 1;
end_time           = 1210;          % シミュレーション時間[s]
sampling_time      = 0.0025;        % サンプリング周期[s]
% TM_ModelType = 'TRAMI_AT';
% TM_ModelSlct = 2;
% end_time           = 1800;          % シミュレーション時間[s]
% sampling_time      = 0.001;         % サンプリング周期[s]

% VarObj_METI_CVT =Simulink.Variant(strcmp(TM_ModelType, 'METI_CVT'));
VarObj_METI_CVT =Simulink.Variant('TM_ModelSlct == 1');
VarObj_TRAMI_AT =Simulink.Variant('TM_ModelSlct == 2');

COMMON_set_params_jmaab;

%% METIパラメータ読込み
ALT_CNT_set_params;
ALT_PNT_set_params;
BK_PNT_set_params;
BT_PNT_Lo_set_params;

Driver_set_params;
EL_PNT_set_params;
ST_PNT_set_params;
VL_PNT_set_params;

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
