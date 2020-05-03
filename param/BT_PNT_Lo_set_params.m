%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% 機能　①データファイルの読み込み
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ①データファイルの読み込み

%********************************* バッテリ  *********************************
BT_PNT_Lo_Capa_lo_batt_F = 48;                  % バッテリ容量[Ah]  55D相当
BT_PNT_Lo_SOC_START_lo_batt =100;             % バッテリSOC_初期値(%)
BT_PNT_Lo_SOC_MAX_lo_batt   =120;              % バッテリSOC_最大値(%) ALTでも使用
BT_PNT_Lo_SOC_MIN_lo_batt   =  0;                % バッテリSOC_最小値(%)

BT_PNT_Lo_ocv_SOC_lo_batt_OCV_V_table_x_SOC = [0 100];          % バッテリOCV算出テーブル x軸SOC項[%]
BT_PNT_Lo_ocv_SOC_lo_batt_OCV_V_table = [10.5 12];              % バッテリOCV算出テーブル[V]

BT_PNT_Lo_R_lo_batt_ohm = 0.020;                   % バッテリ内部抵抗[Ω] ALT_PNTでも使用

BT_PNT_Lo_V_start_ocv = 12.0;                   % バッテリ初期電圧[V]