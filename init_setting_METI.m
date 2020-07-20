%%%%%%% ��� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �{�X�N���v�g�����s���邱�ƂŃp�X�ǉ��A�萔�ݒ�A���f���I�[�v��
% �̑��삪���s�����B
% ���f�����J�����ۂ��{�X�N���v�g���������s�����B
% �i�t�@�C�������f���v���p�e�B�����f���v���p�e�B���R�[���o�b�N
%   �uPreLoadFcn�v�ɂĐݒ�j
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%�p�X�ݒ�
addpath(genpath('param'));   %param�t�H���_�ȉ����p�X�ɒǉ�
addpath(genpath('picture')); %picture�t�H���_�ȉ����p�X�ɒǉ�

%%�p�����[�^�Ǎ���
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
degC2K = 273.15;              % �� -> K
K2degC = -273.15;             % K -> ��

ENG_CNT2_set_params;
ENG_PNT2_set_params;

TM_CNT_set_params;
TM_PNT_set_params;
DF_PNT_set_params;
PTTH_PNT_set_params;
ATM_PNT_set_params;

%%���f�����J��
open_system('METI_Thermal_ver01_Jmaab_2018b');