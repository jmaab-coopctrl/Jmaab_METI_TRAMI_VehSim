%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% 機能　①データファイルの読み込み
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ①データファイルの読み込み

% %***************************フライホイール***********************************
TM_PNT_Flywheel_Inertia_kgm2 = 0.06;   %フライホイールイナーシャ(kgm^2)
TM_PNT_Flywheel_Init_radps = 000*(2*pi)/60;  %フライホイール角速度初期値(radps)

%*********************************トルクコンバータ特性*****************************

TM_PNT_n_TC_min_rpm = 3.0; %トルコン最少回転数

%回転比算出
 %回転数上下限ガード(0割防止)
TM_PNT_w_ROT_T_C_UL = 10000; 
TM_PNT_w_ROT_T_C_LL = 1;         % w_ROT_T_C_LLはゼロ割防止とする

%回転比上下限
TM_PNT_ratio_w_ROT_T_C_UL = 1; 
TM_PNT_ratio_w_ROT_T_C_LL = 0;

% トルク増幅比テーブル x- 速度比
TM_PNT_torque_ratio_table_x_speed_ratio = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];

% トルク増幅比テーブル
TM_PNT_torque_ratio_table = [1.9,1.8,1.7,1.6,1.5,1.4,1.3,1.2,1.1,1,1.0];

% 容量係数テーブル x-速度比
TM_PNT_torque_capacity_Nmprpm2_table_x_speed_ratio = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];

% 容量係数テーブル
TM_PNT_torque_capacity_Nmprpm2_table = [24.7 ,25.0 ,24.7 ,23.8 ,22.2 ,20.1 ,17.3 ,13.9 ,9.9 ,5.2 ,0.0];    % 適当な値 

%単位変換 ×10＾-6 Nmがついている理由不明
TM_PNT_ConvUnit = 1e-6;


%*********************************CVTプライマリ目標回転数算出*****************************

% CVT プーリー比遅れ時定数(sec)
TM_PNT_Tau_CVT_ratio_s = 0.3; 

%****************ロックアップクラッチ****************
TM_PNT_tau_LU_Clutch_s = 1;    %ロックアップの遅れ時定数

TM_PNT_Gain_LU_spring_Nmprad = 200;  %ロックアップ時 バネ係数[Nm/rad]
TM_PNT_Gain_LU_zeta   = 2;     %二次遅れ系減衰係数
TM_PNT_Gain_LU_damper_Nmsprad =2*TM_PNT_Gain_LU_zeta*sqrt(TM_PNT_Gain_LU_spring_Nmprad*TM_PNT_Flywheel_Inertia_kgm2);     %ロックアップ時 ダンパ係数

%****************Driveshaft************************
TM_PNT_Driveshaft_Inertia_kgm2 = 0.1;   %ドライブシャフトイナーシャ(kgm^2)
TM_PNT_Driveshaft_Init_radps = 000*(2*pi)/60;  %ドライブシャフト角速度初期値(radps)

%**************** CVT ****************
% CVT損失
%TM_PNT_eta_CVT = 0.9;
TM_PNT_eta_CVT            = [0.70,0.85,0.90,0.90];
TM_PNT_eta_CVT_x_CVTF_degC = [  20,  40,  60,  80];
