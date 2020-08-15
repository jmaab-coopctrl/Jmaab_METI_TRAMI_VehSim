%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% 機能　�@データファイルの読み込み
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% �@データファイルの読み込み

%*********************************オルタネータ*****************************

ALT_PNT_Gain_Alt_v_del = 100;   %オルタネータ目標電流値算出Pゲイン

%オルタネータプーリー
ALT_PNT_eta_pulley_alt = 0.97;  %効率(倍)
ALT_PNT_ratio_pulley_alt = 1.12;  %プーリー比


ALT_PNT_ALT_GDCurrent_A   = 0.7;     % オルタネータ要求トルクガード値算出用電流[A]
ALT_PNT_ALT_GDVolt_V      = 12.5;    % オルタネータ要求トルクガード値算出用電圧[V]


%オルタネータ目標電圧遅れ時定数(sec)
ALT_PNT_Tau_Alternator_V_tgt_s = 0.05;

%オルタネータトルク遅れ時定数(sec)
ALT_PNT_Tau_Alternator_trq_Nm = 0.01;

% オルタトルク下限値 [Nm]
ALT_PNT_trq_alter_output_LL_Nm = 0;

%******オルタネータ軸トルクMAP******

% オルタネータ回転数 [rpm]
ALT_PNT_Alter_trq_Nm_map_x_rpm = [1200,1400,1600,1800,2000,2200,2400,2600,2800,3000,3200,3400,3600,3800,4000,5000,6000,7000];

% オルタネータ電流 [A]
ALT_PNT_Alter_trq_Nm_map_y_Current_A = [0,7,14,21,28,35,42,49,56,63,70,77];

% オルタネータ目標電圧 [V]
ALT_PNT_Alter_trq_Nm_map_z_Volt_tgt_V =[12.5,13.5,14.5];


% オルタトルク [Nm]（13.5Vは12.5Vの1.05倍 ,14.5Vは13.5Vの1.05倍）
ALT_PNT_Alter_trq_Nm_map = cat(3,[
0.25 ,2.05 ,3.85 ,6.81 ,6.81 ,6.81 ,6.81 ,6.81 ,6.81 ,6.81 ,6.81 ,6.81 ;
0.28 ,1.76 ,3.24 ,4.86 ,9.46 ,9.46 ,9.46 ,9.46 ,9.46 ,9.46 ,9.46 ,9.46 ;
0.24 ,1.55 ,2.86 ,4.24 ,5.74 ,7.35 ,9.12 ,10.96 ,10.96 ,10.96 ,10.96 ,10.96 ;
0.25 ,1.40 ,2.56 ,3.77 ,5.11 ,6.51 ,8.09 ,9.83 ,11.50 ,11.50 ,11.50 ,11.50 ;
0.24 ,1.27 ,2.31 ,3.41 ,4.63 ,5.88 ,7.26 ,8.78 ,10.46 ,11.54 ,11.54 ,11.54 ;
0.25 ,1.19 ,2.14 ,3.12 ,4.23 ,5.36 ,6.60 ,7.99 ,9.50 ,11.17 ,11.35 ,11.35 ;
0.26 ,1.13 ,2.00 ,2.91 ,3.91 ,4.94 ,6.10 ,7.38 ,8.74 ,10.24 ,11.01 ,11.01 ;
0.29 ,1.08 ,1.86 ,2.73 ,3.65 ,4.59 ,5.64 ,6.80 ,8.07 ,9.42 ,10.68 ,10.68 ;
0.29 ,1.04 ,1.79 ,2.56 ,3.43 ,4.33 ,5.29 ,6.33 ,7.53 ,8.85 ,10.32 ,10.32 ;
0.32 ,1.01 ,1.71 ,2.43 ,3.24 ,4.08 ,4.97 ,5.96 ,7.07 ,8.28 ,9.56 ,9.92 ;
0.33 ,0.98 ,1.64 ,2.31 ,3.10 ,3.89 ,4.70 ,5.66 ,6.68 ,7.80 ,9.04 ,9.54 ;
0.34 ,0.96 ,1.58 ,2.22 ,2.95 ,3.70 ,4.46 ,5.36 ,6.31 ,7.32 ,8.53 ,9.19 ;
0.37 ,0.95 ,1.52 ,2.13 ,2.86 ,3.54 ,4.27 ,5.12 ,6.00 ,6.98 ,8.07 ,8.86 ;
0.41 ,0.93 ,1.46 ,2.07 ,2.70 ,3.41 ,4.11 ,4.91 ,5.75 ,6.68 ,7.69 ,8.56 ;
0.43 ,0.92 ,1.40 ,1.97 ,2.65 ,3.29 ,3.95 ,4.71 ,5.55 ,6.39 ,7.40 ,8.27 ;
0.51 ,0.93 ,1.35 ,1.79 ,2.30 ,2.81 ,3.36 ,3.96 ,4.66 ,5.37 ,6.17 ,6.93 ;
0.66 ,0.98 ,1.31 ,1.69 ,2.14 ,2.56 ,3.03 ,3.56 ,4.08 ,4.70 ,5.37 ,6.04 ;
0.68 ,1.00 ,1.31 ,1.61 ,2.01 ,2.42 ,2.81 ,3.26 ,3.79 ,4.28 ,4.90 ,5.54 
],[
0.26 ,2.15 ,4.04 ,7.15 ,7.15 ,7.15 ,7.15 ,7.15 ,7.15 ,7.15 ,7.15 ,7.15 ;
0.29 ,1.85 ,3.40 ,5.10 ,9.93 ,9.93 ,9.93 ,9.93 ,9.93 ,9.93 ,9.93 ,9.93 ;
0.25 ,1.63 ,3.00 ,4.45 ,6.03 ,7.72 ,9.58 ,11.51 ,11.51 ,11.51 ,11.51 ,11.51 ;
0.26 ,1.47 ,2.69 ,3.96 ,5.37 ,6.84 ,8.49 ,10.32 ,12.08 ,12.08 ,12.08 ,12.08 ;
0.25 ,1.33 ,2.43 ,3.58 ,4.86 ,6.17 ,7.62 ,9.22 ,10.98 ,12.12 ,12.12 ,12.12 ;
0.26 ,1.25 ,2.25 ,3.28 ,4.44 ,5.63 ,6.93 ,8.39 ,9.98 ,11.73 ,11.92 ,11.92 ;
0.27 ,1.19 ,2.10 ,3.06 ,4.11 ,5.19 ,6.41 ,7.75 ,9.18 ,10.75 ,11.56 ,11.56 ;
0.30 ,1.13 ,1.95 ,2.87 ,3.83 ,4.82 ,5.92 ,7.14 ,8.47 ,9.89 ,11.21 ,11.21 ;
0.30 ,1.09 ,1.88 ,2.69 ,3.60 ,4.55 ,5.55 ,6.65 ,7.91 ,9.29 ,10.84 ,10.84 ;
0.34 ,1.06 ,1.80 ,2.55 ,3.40 ,4.28 ,5.22 ,6.26 ,7.42 ,8.69 ,10.04 ,10.42 ;
0.35 ,1.03 ,1.72 ,2.43 ,3.26 ,4.08 ,4.94 ,5.94 ,7.01 ,8.19 ,9.49 ,10.02 ;
0.36 ,1.01 ,1.66 ,2.33 ,3.10 ,3.89 ,4.68 ,5.63 ,6.63 ,7.69 ,8.96 ,9.65 ;
0.39 ,1.00 ,1.60 ,2.24 ,3.00 ,3.72 ,4.48 ,5.38 ,6.30 ,7.33 ,8.47 ,9.30 ;
0.43 ,0.98 ,1.53 ,2.17 ,2.84 ,3.58 ,4.32 ,5.16 ,6.04 ,7.01 ,8.07 ,8.99 ;
0.45 ,0.97 ,1.47 ,2.07 ,2.78 ,3.45 ,4.15 ,4.95 ,5.83 ,6.71 ,7.77 ,8.68 ;
0.54 ,0.98 ,1.42 ,1.88 ,2.42 ,2.95 ,3.53 ,4.16 ,4.89 ,5.64 ,6.48 ,7.28 ;
0.69 ,1.03 ,1.38 ,1.77 ,2.25 ,2.69 ,3.18 ,3.74 ,4.28 ,4.94 ,5.64 ,6.34 ;
0.71 ,1.05 ,1.38 ,1.69 ,2.11 ,2.54 ,2.95 ,3.42 ,3.98 ,4.49 ,5.15 ,5.82 
],[
0.28 ,2.26 ,4.24 ,7.51 ,7.51 ,7.51 ,7.51 ,7.51 ,7.51 ,7.51 ,7.51 ,7.51 ;
0.31 ,1.94 ,3.57 ,5.36 ,10.43 ,10.43 ,10.43 ,10.43 ,10.43 ,10.43 ,10.43 ,10.43 ;
0.26 ,1.71 ,3.15 ,4.67 ,6.33 ,8.10 ,10.05 ,12.08 ,12.08 ,12.08 ,12.08 ,12.08 ;
0.28 ,1.54 ,2.82 ,4.16 ,5.63 ,7.18 ,8.92 ,10.84 ,12.68 ,12.68 ,12.68 ,12.68 ;
0.26 ,1.40 ,2.55 ,3.76 ,5.10 ,6.48 ,8.00 ,9.68 ,11.53 ,12.72 ,12.72 ,12.72 ;
0.28 ,1.31 ,2.36 ,3.44 ,4.66 ,5.91 ,7.28 ,8.81 ,10.47 ,12.31 ,12.51 ,12.51 ;
0.29 ,1.25 ,2.21 ,3.21 ,4.31 ,5.45 ,6.73 ,8.14 ,9.64 ,11.29 ,12.14 ,12.14 ;
0.32 ,1.19 ,2.05 ,3.01 ,4.02 ,5.06 ,6.22 ,7.50 ,8.90 ,10.39 ,11.77 ,11.77 ;
0.32 ,1.15 ,1.97 ,2.82 ,3.78 ,4.77 ,5.83 ,6.98 ,8.30 ,9.76 ,11.38 ,11.38 ;
0.35 ,1.11 ,1.89 ,2.68 ,3.57 ,4.50 ,5.48 ,6.57 ,7.79 ,9.13 ,10.54 ,10.94 ;
0.36 ,1.08 ,1.81 ,2.55 ,3.42 ,4.29 ,5.18 ,6.24 ,7.36 ,8.60 ,9.97 ,10.52 ;
0.37 ,1.06 ,1.74 ,2.45 ,3.25 ,4.08 ,4.92 ,5.91 ,6.96 ,8.07 ,9.40 ,10.13 ;
0.41 ,1.05 ,1.68 ,2.35 ,3.15 ,3.90 ,4.71 ,5.64 ,6.62 ,7.70 ,8.90 ,9.77 ;
0.45 ,1.03 ,1.61 ,2.28 ,2.98 ,3.76 ,4.53 ,5.41 ,6.34 ,7.36 ,8.48 ,9.44 ;
0.47 ,1.01 ,1.54 ,2.17 ,2.92 ,3.63 ,4.35 ,5.19 ,6.12 ,7.04 ,8.16 ,9.12 ;
0.56 ,1.03 ,1.49 ,1.97 ,2.54 ,3.10 ,3.70 ,4.37 ,5.14 ,5.92 ,6.80 ,7.64 ;
0.73 ,1.08 ,1.44 ,1.86 ,2.36 ,2.82 ,3.34 ,3.92 ,4.50 ,5.18 ,5.92 ,6.66 ;
0.75 ,1.10 ,1.44 ,1.78 ,2.22 ,2.67 ,3.10 ,3.59 ,4.18 ,4.72 ,5.40 ,6.11 ]);

%******オルタネータ電流制限MAP******

% オルタネータ電流制限テーブル x-オルタネータ回転数 [rpm]
ALT_PNT_Alter_limit_Current_V_table_x_rpm = [1200,1300,1500,1800,2000,2500,3000,3500,4000,4500,5000,6000,7000,8000];

% オルタネータ電流制限テーブル [A]
ALT_PNT_Alter_limit_Current_V_table = [40,60,90,115,125,145,155,160,165,170,173,175,176,177];

