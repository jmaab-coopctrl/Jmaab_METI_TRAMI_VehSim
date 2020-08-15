%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% �@�\�@�@�f�[�^�t�@�C���̓ǂݍ���
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% �@�f�[�^�t�@�C���̓ǂݍ���

% %***************************�t���C�z�C�[��***********************************
TM_PNT_Flywheel_Inertia_kgm2 = 0.06;   %�t���C�z�C�[���C�i�[�V��(kgm^2)
TM_PNT_Flywheel_Init_radps = 000*(2*pi)/60;  %�t���C�z�C�[���p���x�����l(radps)

%*********************************�g���N�R���o�[�^����*****************************

TM_PNT_n_TC_min_rpm = 3.0; %�g���R���ŏ���]��

%��]��Z�o
 %��]���㉺���K�[�h(0���h�~)
TM_PNT_w_ROT_T_C_UL = 10000; 
TM_PNT_w_ROT_T_C_LL = 1;         % w_ROT_T_C_LL�̓[�����h�~�Ƃ���

%��]��㉺��
TM_PNT_ratio_w_ROT_T_C_UL = 1; 
TM_PNT_ratio_w_ROT_T_C_LL = 0;

% �g���N������e�[�u�� x- ���x��
TM_PNT_torque_ratio_table_x_speed_ratio = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];

% �g���N������e�[�u��
TM_PNT_torque_ratio_table = [1.9,1.8,1.7,1.6,1.5,1.4,1.3,1.2,1.1,1,1.0];

% �e�ʌW���e�[�u�� x-���x��
TM_PNT_torque_capacity_Nmprpm2_table_x_speed_ratio = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];

% �e�ʌW���e�[�u��
TM_PNT_torque_capacity_Nmprpm2_table = [24.7 ,25.0 ,24.7 ,23.8 ,22.2 ,20.1 ,17.3 ,13.9 ,9.9 ,5.2 ,0.0];    % �K���Ȓl 

%�P�ʕϊ� �~10�O-6 Nm�����Ă��闝�R�s��
TM_PNT_ConvUnit = 1e-6;


%*********************************CVT�v���C�}���ڕW��]���Z�o*****************************

% CVT �v�[���[��x�ꎞ�萔(sec)
TM_PNT_Tau_CVT_ratio_s = 0.3; 

%****************���b�N�A�b�v�N���b�`****************
TM_PNT_tau_LU_Clutch_s = 1;    %���b�N�A�b�v�̒x�ꎞ�萔

TM_PNT_Gain_LU_spring_Nmprad = 200;  %���b�N�A�b�v�� �o�l�W��[Nm/rad]
TM_PNT_Gain_LU_zeta   = 2;     %�񎟒x��n�����W��
TM_PNT_Gain_LU_damper_Nmsprad =2*TM_PNT_Gain_LU_zeta*sqrt(TM_PNT_Gain_LU_spring_Nmprad*TM_PNT_Flywheel_Inertia_kgm2);     %���b�N�A�b�v�� �_���p�W��

%****************Driveshaft************************
TM_PNT_Driveshaft_Inertia_kgm2 = 0.1;   %�h���C�u�V���t�g�C�i�[�V��(kgm^2)
TM_PNT_Driveshaft_Init_radps = 000*(2*pi)/60;  %�h���C�u�V���t�g�p���x�����l(radps)

%**************** CVT ****************
% CVT����
%TM_PNT_eta_CVT = 0.9;
TM_PNT_eta_CVT            = [0.70,0.85,0.90,0.90];
TM_PNT_eta_CVT_x_CVTF_degC = [  20,  40,  60,  80];
