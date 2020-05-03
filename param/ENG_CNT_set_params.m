%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% 機能　①データファイルの読み込み
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ①データファイルの読み込み

%*********************************制御設定*********************************

ENG_CNT_flag_idle_stop_exe = 0;           %アイドリングストップ制御有効フラグ（ON=1，OFF=0)

%************************ENG制御*************************

%ISC制御
ENG_CNT_IdleSpeed_Const = 650;   % 目標エンジンアイドル回転数

ENG_CNT_per_isc_max = 20 ;    %ISC MAX開度（％）
ENG_CNT_per_isc_min = 0 ;    %ISC Min開度（％）
ENG_CNT_gain_p_per_isc = 0.1;    %ISC回転数コントロール制御値（Pゲイン値）

ENG_CNT_per_throttle_isc_fb = 0.1;  %ISC回転数FB用スロットル上限値

%アイドリングストップ制御
ENG_CNT_V_car_idlestop_kmph = 10;   %アイドリングストップON車速条件(km/h)
ENG_CNT_brak_idlestop = 0.01;   %アイドリングストップONブレーキ条件(%)

%フューエルカット制御
ENG_CNT_V_vhicle_fuelcut_kmph =  1;     %フューエルカットON車速(km/h)(以上)
ENG_CNT_omg_eng_fuelcut_rpm =  900;    %フューエルカットONエンジン回転数(rpm)(以上)
ENG_CNT_per_throttle_fuelcut = 0;  %フューエルカットONスロットルベース開度 (以下)

%アクセル開度上下限値(%)
ENG_CNT_Accel_UL = 100;
ENG_CNT_Accel_LL = 0;

%スロットル開度上下限値(%)
ENG_CNT_Throttle_UL = 100;
ENG_CNT_Throttle_LL = 0;

%スタータ制御
ENG_CNT_Starter_timer_Const_s = 0.8;   %アイドリング後スタータ実行時間(sec)