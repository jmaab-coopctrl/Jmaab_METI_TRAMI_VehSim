%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% �@�\�@�@�f�[�^�t�@�C���̓ǂݍ���
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% �@�f�[�^�t�@�C���̓ǂݍ���

%*********************************����ݒ�*********************************

ENG_CNT_flag_idle_stop_exe = 1;           %�A�C�h�����O�X�g�b�v����L���t���O�iON=1�COFF=0)

%************************ENG����*************************

%ISC����
ENG_CNT_IdleSpeed_Const = 650;   % �ڕW�G���W���A�C�h����]��

ENG_CNT_per_isc_max = 20 ;    %ISC MAX�J�x�i���j
ENG_CNT_per_isc_min = 0 ;    %ISC Min�J�x�i���j
ENG_CNT_gain_p_per_isc = 0.1;    %ISC��]���R���g���[������l�iP�Q�C���l�j

ENG_CNT_per_throttle_isc_fb = 0.1;  %ISC��]��FB�p�X���b�g������l

%�A�C�h�����O�X�g�b�v����
ENG_CNT_V_car_idlestop_kmph = 1;   %�A�C�h�����O�X�g�b�vON�ԑ�����(km/h)
ENG_CNT_brak_idlestop =  0.5;   %�A�C�h�����O�X�g�b�vON�u���[�L����(%)�@����ȏ��ON
ENG_CNT_acc_idlestop  =  0.5;   %�A�C�h�����O�X�g�b�vON�A�N�Z������(%)�@����ȏ��OFF

%�t���[�G���J�b�g����
ENG_CNT_V_vhicle_fuelcut_kmph =  1;     %�t���[�G���J�b�gON�ԑ�(km/h)(�ȏ�)
ENG_CNT_omg_eng_fuelcut_rpm =  900;    %�t���[�G���J�b�gON�G���W����]��(rpm)(�ȏ�)
ENG_CNT_per_throttle_fuelcut = 0;  %�t���[�G���J�b�gON�X���b�g���x�[�X�J�x (�ȉ�)

%�A�N�Z���J�x�㉺���l(%)
ENG_CNT_Accel_UL = 100;
ENG_CNT_Accel_LL = 0;

%�X���b�g���J�x�㉺���l(%)
ENG_CNT_Throttle_UL = 100;
ENG_CNT_Throttle_LL = 0;

%�X�^�[�^����
ENG_CNT_Starter_timer_Const_s = 0.8;   %�A�C�h�����O��X�^�[�^���s����(sec)



%%�ȉ��̃p�����[�^�͕s�m��
%�R�����˗�
K_Fuel = [2,1,1];

%��p�����x(degC)
T_ENGCoodant = [25,80,90];
T_ENGCoodant_T_ENGCoodant = [0,25,70,90];

%�ڕW�G���W���A�C�h����]��
ENG_CNT_IdleSpeed = [1200,1200,650,650];

%�A�C�h�����O�X�g�b�v������p����
ENG_CNT_IdleStop_flag_const = 60;

%�E�H�[�^�[�|���v����
ENG_CNT_V_Water_Pump_V               = [ 3, 3, 6, 8,10, 12]; %�E�H�[�^�[�|���v�d��[V]
ENG_CNT_V_Water_Pump_x_T_Coolant     = [20,60,70,80,90,100]; %���̃e�[�u����x���@�G���W����p�����x[��]

%���W�G�^�[�t�@������
ENG_CNT_V_RDFan_V                     = [ 0, 0, 6, 6,12, 12]; %���W�G�^�[�t�@���d��[V]
ENG_CNT_V_RDFan_x_T_Coolant           = [20,80,81,94,95,120]; %���̃e�[�u����x���@�G���W����p�����x[��]