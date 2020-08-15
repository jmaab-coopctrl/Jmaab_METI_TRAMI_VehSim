%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% - set_mbd_params -
%%% �@�\�@�@�f�[�^�t�@�C���̓ǂݍ���
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% �@�f�[�^�t�@�C���̓ǂݍ���
PTTH_PNT_Temp_ini_degC = 25.0; %�e���i�������x[��]�R�[���h�X�^�[�g�z��
%PTTH_PNT_Temp_ini_degC = 85.0; %�e���i�������x[��]�z�b�g�X�^�[�g�z��
%PTTH_PNT_Temp_ini_degC = -25.0; %�e���i�������x[��]���~���X�^�[�g�z��

PTTH_PNT_Temp_Atomosphere =  25.0; %��C���x[��]�R�[���h�X�^�[�g�z��
%PTTH_PNT_Temp_Atomosphere = 25.0; %��C���x[��]�z�b�g�X�^�[�g�z��
%PTTH_PNT_Temp_Atomosphere = -25.0; %��C���x[��]���~���X�^�[�g�z��

%**********************�G���W��Thermal*****************
%�E�H�[�^�[�|���v
ENG_PNT_Qv_Water_Pump_m3ps    = [ 0.0,5.0,7.5,9.0, 10]; %�E�H�[�^�[�|���v����[m3/sec]��
ENG_PNT_Qv_Water_Pump_x_V_WP  = [   0,  3,  6,  9, 12]; %���̃e�[�u����x���@�E�H�[�^�[�|���v�d��[V]��

%�V�����_�w�b�h�M�e��
ENG_PNT_Cylinder_Head_Temp_ini_degC          = PTTH_PNT_Temp_ini_degC; %�V�����_�w�b�h�������x[��]
ENG_PNT_Cylinder_Head_Heat_Capa_JpK          = 3*1000; %�V�����_�w�b�h�M�e��[J/K]
%ENG_PNT_Cylinder_Head2Coolant_Heat_Resi_KpW           = 0.05*[1.0,0.7,0.3,0.1]; %�V�����_�w�b�h�`�G���W����p���ԔM��R[K/W]��
ENG_PNT_Cylinder_Head2Coolant_Heat_Resi_KpW           = 0.1*[1.0,0.3,0.1,0.01]; %�V�����_�w�b�h�`�G���W����p���ԔM��R[K/W]��
ENG_PNT_Cylinder_Head2Coolant_Heat_Resi_x_qv_Coolant  =  [  0,  1,  3, 10]; %���̃e�[�u����x���@��p������[m3/sec]��

%�G���W���I�C���M�e��
ENG_PNT_ENGOil_Temp_ini_degC          = PTTH_PNT_Temp_ini_degC; %�G���W���I�C���������x[��]
ENG_PNT_ENGOil_Heat_Capa_JpK          = 3*1125; %�G���W���I�C���M�e��[J/K]
ENG_PNT_ENGOil2Coolant_Heat_Resi_KpW  = 0.001; %�G���W���I�C���`�G���W����p���ԔM��R[K/W]��

%�G���W����p���M�e��
ENG_PNT_Coolant_Temp_ini_degC         = PTTH_PNT_Temp_ini_degC; %�G���W����p���������x[��]
ENG_PNT_Coolant_Heat_Capa_JpK         =3*13300; %�G���W����p���M�e��[J/K]
ENG_PNT_Coolant2ENGBlock_Heat_Resi_KpW= 0.01; %�G���W����p���`�G���W���u���b�N�ԔM��R[K/W]��

%�G���W���u���b�N�M�e��
ENG_PNT_ENGBlock_Temp_ini_degC        = PTTH_PNT_Temp_ini_degC; %�G���W���u���b�N�������x[��]
ENG_PNT_ENGBlock_Heat_Capa_JpK        = 3*1000; %�G���W���u���b�N�M�e��[J/K]
ENG_PNT_ENGBlock2ENGAir_Heat_Resi_KpW =  1.0; %�G���W���u���b�N�`���ӊ��ԔM��R[K/W]


%********************T/M Thermal**********
%CVTF�M�e��
TM_PNT_CVTF_Heat_Capa_JpK             =10600; %CVTF�M�e��[J/K]
TM_PNT_CVTF_Temp_ini_degC             = PTTH_PNT_Temp_ini_degC; %CVTF�E�H�[�}�[�������x[��]
TM_PNT_CVTF2TMBlock_Heat_Resi_KpW     = 0.001; %CVTF�`T/M�u���b�N�ԔM��R[K/W]��
%TM_PNT_CVTF2Coolant_Heat_Resi_KpW     =  1.0; %CVTF�`�G���W����p���ԔM��R[K/W]

%TM�u���b�N�M�e��
TM_PNT_TMBlock_Temp_ini_degC         = PTTH_PNT_Temp_ini_degC; %T/M�u���b�N�������x[��]
TM_PNT_TMBlock_Heat_Capa_JpK         =10000; %T/M�u���b�N�M�e��[J/K]
TM_PNT_TMBlock2TMAir_Heat_Resi_KpW   =  1.0; %T/M�u���b�N�`���ӊ��ԔM��R[K/W]

%�G���W������
TM_PNT_ENGBlock2TMBlock_Heat_Resi_KpW=  0.1; %�G���W���u���b�N�`T/M�u���b�N�ԔM��R[K/W]��


%***************************�f�t�@�c�e*********************************
%DF�I�C���M�e��
DF_PNT_DFOil_Temp_ini_degC           = PTTH_PNT_Temp_ini_degC; %DF�I�C���������x[��]
DF_PNT_DFOil_Heat_Capa_JpK           = 1000; %DF�I�C���M�e��[J/K]
DF_PNT_DFOil2DFBlock_Heat_Resi_KpW   =  1.0; %DF�I�C���`DF�u���b�N�ԔM��R[K/W]

%DF�u���b�N�M�e��
DF_PNT_DFBlock_Temp_ini_degC         = PTTH_PNT_Temp_ini_degC; %DF�u���b�N�������x[��]
DF_PNT_DFBlock_Heat_Capa_JpK         = 1000; %DF�u���b�N�M�e��[J/K]
DF_PNT_DFBlock2DFAir_Heat_Resi_KpW   =  1.0; %DF�u���b�N�`���ӊ��ԔM��R[K/W]

%TM�u���b�N����
DF_PNT_TMBlock2DFBlock_Heat_Resi_KpW =  1.0; %TM�u���b�N�`DF�u���b�N�ԔM��R[K/W]


%**********���W�G�^�[ Thermal******
%�T�[���X�^�b�g����
RD_PNT_Thermostat_hys_off_Temp_degC = 85; %�T�[���X�^�b�gOFF���x[��]
RD_PNT_Thermostat_hys_on_Temp_degC  = 95; %�T�[���X�^�b�g ON���x[��]

%�T�[���X�^�b�g�M��R
RD_PNT_Thermostat_min_Heat_Resi_KpW       =  0.0005; %�T�[���X�^�b�g�M��R�Œ�l[K/W]�@�G���W����p���`���W�G�^�[����p���ԔM��R
%RD_PNT_Thermostat_Heat_Resi_KpW           =  [1000,1000,0.05,0.008,0.005,0.001,0.0001,0.0001]; %�T�[���X�^�b�g�M��R[K/W]�@�G���W����p���`���W�G�^�[����p���ԔM��R
%RD_PNT_Thermostat_Heat_Resi_KpW_T_Coolant =  [  20,  59,  60,   70,   74,   77,    83,   100]; %���̃e�[�u����x���@�G���W����p�����x[��]
RD_PNT_Thermostat_Heat_Resi_KpW           =  [1000,1000, 0.5, 0.01,0.005,0.001, 0.0001, 0.0001]; %�T�[���X�^�b�g�M��R[K/W]�@�G���W����p���`���W�G�^�[����p���ԔM��R
RD_PNT_Thermostat_Heat_Resi_KpW_T_Coolant =  [  20,  69,  70,   75,   79,   82,     90,    100]; %���̃e�[�u����x���@�G���W����p�����x[��]

%��p���M�e��
RD_PNT_RDCoolant_Temp_ini_degC       = PTTH_PNT_Temp_ini_degC; %���W�G�^�[����p���������x[��]
RD_PNT_RDCoolant_Heat_Capa_JpK       =3*18000; %���W�G�^�[����p���M�e��[J/K]
%RD_PNT_RDCoolant2RDAir_Heat_Resi_KpW =  1.0; %���W�G�^�[�`���ӊ��ԔM��R[K/W]

%���W�G�^�[�t�@���̓d���\���ʓ���
RD_PNT_v_RDFan_Wind_vel_mps           =[0 30]; %���W�G�^�[�t�@������[m/s]��
RD_PNT_v_RDFan_Wind_vel_mps_x_V_RDFan =[0 12]; %���̃e�[�u����x���@���W�G�^�[�t�@���d��[V]��

%���W�G�^�[�M��R�Ɛ��@����
RD_PNT_RDFan_area_m2                  = 0.25; %���W�G�^�[�t�@���ʐ�[m2]��
RD_PNT_RDGrill_area_m2                = 0.20; %���W�G�^�[�O�����ʐ�[m2]��
RD_PNT_RDCore_Heat_Resi_KpW             = [1.0, 0.1, 0.01, 0.005, 0.0005, 0.0005]; %���W�G�^�[�`���ӊ��ԔM��R[K/W]��
RD_PNT_RDCore_Heat_Resi_KpW_x_Wind_m3ps = [  0, 2.0,  4.0,   6.0,   12.0,   30.0]; %���̃e�[�u����x���@���W�G�^�[����[m3/sec]��
