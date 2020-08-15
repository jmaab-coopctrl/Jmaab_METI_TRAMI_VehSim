%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% 機能　①データファイルの読み込み
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ①データファイルの読み込み
PTTH_PNT_Temp_ini_degC = 25.0; %各部品初期温度[℃]コールドスタート想定
%PTTH_PNT_Temp_ini_degC = 85.0; %各部品初期温度[℃]ホットスタート想定
%PTTH_PNT_Temp_ini_degC = -25.0; %各部品初期温度[℃]厳冬期スタート想定

PTTH_PNT_Temp_Atomosphere =  25.0; %大気温度[℃]コールドスタート想定
%PTTH_PNT_Temp_Atomosphere = 25.0; %大気温度[℃]ホットスタート想定
%PTTH_PNT_Temp_Atomosphere = -25.0; %大気温度[℃]厳冬期スタート想定

%**********************エンジンThermal*****************
%ウォーターポンプ
ENG_PNT_Qv_Water_Pump_m3ps    = [ 0.0,5.0,7.5,9.0, 10]; %ウォーターポンプ流量[m3/sec]仮
ENG_PNT_Qv_Water_Pump_x_V_WP  = [   0,  3,  6,  9, 12]; %このテーブルのx軸　ウォーターポンプ電圧[V]仮

%シリンダヘッド熱容量
ENG_PNT_Cylinder_Head_Temp_ini_degC          = PTTH_PNT_Temp_ini_degC; %シリンダヘッド初期温度[℃]
ENG_PNT_Cylinder_Head_Heat_Capa_JpK          = 3*1000; %シリンダヘッド熱容量[J/K]
%ENG_PNT_Cylinder_Head2Coolant_Heat_Resi_KpW           = 0.05*[1.0,0.7,0.3,0.1]; %シリンダヘッド～エンジン冷却水間熱抵抗[K/W]仮
ENG_PNT_Cylinder_Head2Coolant_Heat_Resi_KpW           = 0.1*[1.0,0.3,0.1,0.01]; %シリンダヘッド～エンジン冷却水間熱抵抗[K/W]仮
ENG_PNT_Cylinder_Head2Coolant_Heat_Resi_x_qv_Coolant  =  [  0,  1,  3, 10]; %このテーブルのx軸　冷却水流量[m3/sec]仮

%エンジンオイル熱容量
ENG_PNT_ENGOil_Temp_ini_degC          = PTTH_PNT_Temp_ini_degC; %エンジンオイル初期温度[℃]
ENG_PNT_ENGOil_Heat_Capa_JpK          = 3*1125; %エンジンオイル熱容量[J/K]
ENG_PNT_ENGOil2Coolant_Heat_Resi_KpW  = 0.001; %エンジンオイル～エンジン冷却水間熱抵抗[K/W]仮

%エンジン冷却水熱容量
ENG_PNT_Coolant_Temp_ini_degC         = PTTH_PNT_Temp_ini_degC; %エンジン冷却水初期温度[℃]
ENG_PNT_Coolant_Heat_Capa_JpK         =3*13300; %エンジン冷却水熱容量[J/K]
ENG_PNT_Coolant2ENGBlock_Heat_Resi_KpW= 0.01; %エンジン冷却水～エンジンブロック間熱抵抗[K/W]仮

%エンジンブロック熱容量
ENG_PNT_ENGBlock_Temp_ini_degC        = PTTH_PNT_Temp_ini_degC; %エンジンブロック初期温度[℃]
ENG_PNT_ENGBlock_Heat_Capa_JpK        = 3*1000; %エンジンブロック熱容量[J/K]
ENG_PNT_ENGBlock2ENGAir_Heat_Resi_KpW =  1.0; %エンジンブロック～周辺環境間熱抵抗[K/W]


%********************T/M Thermal**********
%CVTF熱容量
TM_PNT_CVTF_Heat_Capa_JpK             =10600; %CVTF熱容量[J/K]
TM_PNT_CVTF_Temp_ini_degC             = PTTH_PNT_Temp_ini_degC; %CVTFウォーマー初期温度[℃]
TM_PNT_CVTF2TMBlock_Heat_Resi_KpW     = 0.001; %CVTF～T/Mブロック間熱抵抗[K/W]仮
%TM_PNT_CVTF2Coolant_Heat_Resi_KpW     =  1.0; %CVTF～エンジン冷却水間熱抵抗[K/W]

%TMブロック熱容量
TM_PNT_TMBlock_Temp_ini_degC         = PTTH_PNT_Temp_ini_degC; %T/Mブロック初期温度[℃]
TM_PNT_TMBlock_Heat_Capa_JpK         =10000; %T/Mブロック熱容量[J/K]
TM_PNT_TMBlock2TMAir_Heat_Resi_KpW   =  1.0; %T/Mブロック～周辺環境間熱抵抗[K/W]

%エンジンから
TM_PNT_ENGBlock2TMBlock_Heat_Resi_KpW=  0.1; %エンジンブロック～T/Mブロック間熱抵抗[K/W]仮


%***************************デフ　ＤＦ*********************************
%DFオイル熱容量
DF_PNT_DFOil_Temp_ini_degC           = PTTH_PNT_Temp_ini_degC; %DFオイル初期温度[℃]
DF_PNT_DFOil_Heat_Capa_JpK           = 1000; %DFオイル熱容量[J/K]
DF_PNT_DFOil2DFBlock_Heat_Resi_KpW   =  1.0; %DFオイル～DFブロック間熱抵抗[K/W]

%DFブロック熱容量
DF_PNT_DFBlock_Temp_ini_degC         = PTTH_PNT_Temp_ini_degC; %DFブロック初期温度[℃]
DF_PNT_DFBlock_Heat_Capa_JpK         = 1000; %DFブロック熱容量[J/K]
DF_PNT_DFBlock2DFAir_Heat_Resi_KpW   =  1.0; %DFブロック～周辺環境間熱抵抗[K/W]

%TMブロックから
DF_PNT_TMBlock2DFBlock_Heat_Resi_KpW =  1.0; %TMブロック～DFブロック間熱抵抗[K/W]


%**********ラジエター Thermal******
%サーモスタット動作
RD_PNT_Thermostat_hys_off_Temp_degC = 85; %サーモスタットOFF温度[℃]
RD_PNT_Thermostat_hys_on_Temp_degC  = 95; %サーモスタット ON温度[℃]

%サーモスタット熱抵抗
RD_PNT_Thermostat_min_Heat_Resi_KpW       =  0.0005; %サーモスタット熱抵抗最低値[K/W]　エンジン冷却水～ラジエター内冷却水間熱抵抗
%RD_PNT_Thermostat_Heat_Resi_KpW           =  [1000,1000,0.05,0.008,0.005,0.001,0.0001,0.0001]; %サーモスタット熱抵抗[K/W]　エンジン冷却水～ラジエター内冷却水間熱抵抗
%RD_PNT_Thermostat_Heat_Resi_KpW_T_Coolant =  [  20,  59,  60,   70,   74,   77,    83,   100]; %このテーブルのx軸　エンジン冷却水温度[℃]
RD_PNT_Thermostat_Heat_Resi_KpW           =  [1000,1000, 0.5, 0.01,0.005,0.001, 0.0001, 0.0001]; %サーモスタット熱抵抗[K/W]　エンジン冷却水～ラジエター内冷却水間熱抵抗
RD_PNT_Thermostat_Heat_Resi_KpW_T_Coolant =  [  20,  69,  70,   75,   79,   82,     90,    100]; %このテーブルのx軸　エンジン冷却水温度[℃]

%冷却水熱容量
RD_PNT_RDCoolant_Temp_ini_degC       = PTTH_PNT_Temp_ini_degC; %ラジエター内冷却水初期温度[℃]
RD_PNT_RDCoolant_Heat_Capa_JpK       =3*18000; %ラジエター内冷却水熱容量[J/K]
%RD_PNT_RDCoolant2RDAir_Heat_Resi_KpW =  1.0; %ラジエター～周辺環境間熱抵抗[K/W]

%ラジエターファンの電圧―風量特性
RD_PNT_v_RDFan_Wind_vel_mps           =[0 30]; %ラジエターファン風速[m/s]仮
RD_PNT_v_RDFan_Wind_vel_mps_x_V_RDFan =[0 12]; %このテーブルのx軸　ラジエターファン電圧[V]仮

%ラジエター熱抵抗と寸法特性
RD_PNT_RDFan_area_m2                  = 0.25; %ラジエターファン面積[m2]仮
RD_PNT_RDGrill_area_m2                = 0.20; %ラジエターグリル面積[m2]仮
RD_PNT_RDCore_Heat_Resi_KpW             = [1.0, 0.1, 0.01, 0.005, 0.0005, 0.0005]; %ラジエター～周辺環境間熱抵抗[K/W]仮
RD_PNT_RDCore_Heat_Resi_KpW_x_Wind_m3ps = [  0, 2.0,  4.0,   6.0,   12.0,   30.0]; %このテーブルのx軸　ラジエター風量[m3/sec]仮
