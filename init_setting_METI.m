%%%%%%% 解説 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 本スクリプトを実行することでパス追加、定数設定、モデルオープン
% の操作が実行される。
% モデルを開いた際も本スクリプトが自動実行される。
% （ファイル→モデルプロパティ→モデルプロパティ→コールバック
%   「PreLoadFcn」にて設定）
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%パス設定
addpath(genpath('param'));   %paramフォルダ以下をパスに追加
addpath(genpath('picture')); %pictureフォルダ以下をパスに追加

%%パラメータ読込み
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

%%モデルを開く
open_system('METI_Thermal_ver01_Jmaab_2018b');