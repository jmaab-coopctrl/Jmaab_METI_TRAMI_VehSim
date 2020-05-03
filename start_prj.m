%%%%%%% 解説 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 本スクリプトを実行することでパス追加、定数設定、モデルオープン
% の操作が実行される。
% モデルを開いた際も本スクリプトが自動実行される。
% （ファイル→モデルプロパティ→モデルプロパティ→コールバック
%   「PreLoadFcn」にて設定）
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%パス設定
% addpath(genpath('param'));   %paramフォルダ以下をパスに追加
% addpath(genpath('picture')); %pictureフォルダ以下をパスに追加
% addpath(genpath('lib'));     % libフォルダ以下をパスに追加
% addpath(genpath('mex'));     % mexフォルダ以下をパスに追加
% addpath(genpath('FMU'));     % FMUフォルダ以下をパスに追加

%%パラメータ読込み
ALT_CNT_set_params;
ALT_PNT_set_params;
BK_PNT_set_params;
BT_PNT_Lo_set_params;
COMMON_set_params;
Driver_set_params;
EL_PNT_set_params;
ENG_CNT_set_params;
ENG_PNT_set_params;
ST_PNT_set_params;
VL_PNT_set_params;
TRAMI_Standare_AT_Strategy_v183_define;
TRAMI_Standare_AT_StrategyData_v182_9AT_d06;

%%モデルを開く
open_system('TRAMI_STEP_AT_vehicle_ver01_R2018b');

cd Working