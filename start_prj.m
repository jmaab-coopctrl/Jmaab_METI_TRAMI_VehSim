%%%%%%% ��� %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �{�X�N���v�g�����s���邱�ƂŃp�X�ǉ��A�萔�ݒ�A���f���I�[�v��
% �̑��삪���s�����B
% ���f�����J�����ۂ��{�X�N���v�g���������s�����B
% �i�t�@�C�������f���v���p�e�B�����f���v���p�e�B���R�[���o�b�N
%   �uPreLoadFcn�v�ɂĐݒ�j
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%�p�X�ݒ�
% addpath(genpath('param'));   %param�t�H���_�ȉ����p�X�ɒǉ�
% addpath(genpath('picture')); %picture�t�H���_�ȉ����p�X�ɒǉ�
% addpath(genpath('lib'));     % lib�t�H���_�ȉ����p�X�ɒǉ�
% addpath(genpath('mex'));     % mex�t�H���_�ȉ����p�X�ɒǉ�
% addpath(genpath('FMU'));     % FMU�t�H���_�ȉ����p�X�ɒǉ�

%%�p�����[�^�Ǎ���
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

%%���f�����J��
open_system('TRAMI_STEP_AT_vehicle_ver01_R2018b');

%cd Working