function TRAMI_TM_CNT_BusInfo ()

% Generated by make_Xlsx2BusObj : TRAMI_TM_CNT_BusInfo 
% TM_CNT_TRAMI_out 要素の定義
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'tq_clutch_cap';
elems(1).Dimensions = 10;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).SampleTime = -1;
elems(1).Complexity = 'real';
elems(1).SamplingMode = 'Sample based';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf (''); 

elems(2) = Simulink.BusElement;
elems(2).Name = 'f_synchro_n';
elems(2).Dimensions = 10;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).SampleTime = -1;
elems(2).Complexity = 'real';
elems(2).SamplingMode = 'Sample based';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf (''); 

elems(3) = Simulink.BusElement;
elems(3).Name = 'p_line';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).SampleTime = -1;
elems(3).Complexity = 'real';
elems(3).SamplingMode = 'Sample based';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = sprintf (''); 

elems(4) = Simulink.BusElement;
elems(4).Name = 'i_actuator';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).SampleTime = -1;
elems(4).Complexity = 'real';
elems(4).SamplingMode = 'Sample based';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = sprintf (''); 

elems(5) = Simulink.BusElement;
elems(5).Name = 'i_eop';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).SampleTime = -1;
elems(5).Complexity = 'real';
elems(5).SamplingMode = 'Sample based';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = sprintf (''); 

elems(6) = Simulink.BusElement;
elems(6).Name = 'q_cooler_trans_fluid';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'double';
elems(6).SampleTime = -1;
elems(6).Complexity = 'real';
elems(6).SamplingMode = 'Sample based';
elems(6).Min = [];
elems(6).Max = [];
elems(6).DocUnits = '';
elems(6).Description = sprintf (''); 

elems(7) = Simulink.BusElement;
elems(7).Name = 'q_cooler_engine_water';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'double';
elems(7).SampleTime = -1;
elems(7).Complexity = 'real';
elems(7).SamplingMode = 'Sample based';
elems(7).Min = [];
elems(7).Max = [];
elems(7).DocUnits = '';
elems(7).Description = sprintf (''); 

elems(8) = Simulink.BusElement;
elems(8).Name = 'tq_engine_max_req';
elems(8).Dimensions = 1;
elems(8).DimensionsMode = 'Fixed';
elems(8).DataType = 'double';
elems(8).SampleTime = -1;
elems(8).Complexity = 'real';
elems(8).SamplingMode = 'Sample based';
elems(8).Min = [];
elems(8).Max = [];
elems(8).DocUnits = '';
elems(8).Description = sprintf (''); 

elems(9) = Simulink.BusElement;
elems(9).Name = 'tq_engine_min_req';
elems(9).Dimensions = 1;
elems(9).DimensionsMode = 'Fixed';
elems(9).DataType = 'double';
elems(9).SampleTime = -1;
elems(9).Complexity = 'real';
elems(9).SamplingMode = 'Sample based';
elems(9).Min = [];
elems(9).Max = [];
elems(9).DocUnits = '';
elems(9).Description = sprintf (''); 

elems(10) = Simulink.BusElement;
elems(10).Name = 'gear_ratio';
elems(10).Dimensions = 1;
elems(10).DimensionsMode = 'Fixed';
elems(10).DataType = 'double';
elems(10).SampleTime = -1;
elems(10).Complexity = 'real';
elems(10).SamplingMode = 'Sample based';
elems(10).Min = [];
elems(10).Max = [];
elems(10).DocUnits = '';
elems(10).Description = sprintf (''); 

elems(11) = Simulink.BusElement;
elems(11).Name = 'flag_lock_up';
elems(11).Dimensions = 1;
elems(11).DimensionsMode = 'Fixed';
elems(11).DataType = 'double';
elems(11).SampleTime = -1;
elems(11).Complexity = 'real';
elems(11).SamplingMode = 'Sample based';
elems(11).Min = [];
elems(11).Max = [];
elems(11).DocUnits = '';
elems(11).Description = sprintf (''); 

elems(12) = Simulink.BusElement;
elems(12).Name = 'lock_up_cap';
elems(12).Dimensions = 1;
elems(12).DimensionsMode = 'Fixed';
elems(12).DataType = 'double';
elems(12).SampleTime = -1;
elems(12).Complexity = 'real';
elems(12).SamplingMode = 'Sample based';
elems(12).Min = [];
elems(12).Max = [];
elems(12).DocUnits = '';
elems(12).Description = sprintf (''); 

% TM_CNT_TRAMI_out バスの定義
TM_CNT_TRAMI_out = Simulink.Bus;
TM_CNT_TRAMI_out.HeaderFile = '';
TM_CNT_TRAMI_out.Description = sprintf ('');
TM_CNT_TRAMI_out.DataScope = 'Auto';
TM_CNT_TRAMI_out.Alignment = -1;
TM_CNT_TRAMI_out.Elements = elems;
clear elems;
assignin('base', 'TM_CNT_TRAMI_out',TM_CNT_TRAMI_out);
%---------------------%

% TM_CNT_CAN_Tx 要素の定義
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'flag_Lockup';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).SampleTime = -1;
elems(1).Complexity = 'real';
elems(1).SamplingMode = 'Sample based';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf (''); 

elems(2) = Simulink.BusElement;
elems(2).Name = 'omg_Slip_rpm';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).SampleTime = -1;
elems(2).Complexity = 'real';
elems(2).SamplingMode = 'Sample based';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf (''); 

% TM_CNT_CAN_Tx バスの定義
TM_CNT_CAN_Tx = Simulink.Bus;
TM_CNT_CAN_Tx.HeaderFile = '';
TM_CNT_CAN_Tx.Description = sprintf ('');
TM_CNT_CAN_Tx.DataScope = 'Auto';
TM_CNT_CAN_Tx.Alignment = -1;
TM_CNT_CAN_Tx.Elements = elems;
clear elems;
assignin('base', 'TM_CNT_CAN_Tx',TM_CNT_CAN_Tx);
%---------------------%

% TM_CNT_TRAMI_Info 要素の定義
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'gear_ratio';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).SampleTime = -1;
elems(1).Complexity = 'real';
elems(1).SamplingMode = 'Sample based';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf (''); 

% TM_CNT_TRAMI_Info バスの定義
TM_CNT_TRAMI_Info = Simulink.Bus;
TM_CNT_TRAMI_Info.HeaderFile = '';
TM_CNT_TRAMI_Info.Description = sprintf ('');
TM_CNT_TRAMI_Info.DataScope = 'Auto';
TM_CNT_TRAMI_Info.Alignment = -1;
TM_CNT_TRAMI_Info.Elements = elems;
clear elems;
assignin('base', 'TM_CNT_TRAMI_Info',TM_CNT_TRAMI_Info);
%---------------------%

% TM_CNT_CAN_Rx 要素の定義
clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'open_throttle_per';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'double';
elems(1).SampleTime = -1;
elems(1).Complexity = 'real';
elems(1).SamplingMode = 'Sample based';
elems(1).Min = [];
elems(1).Max = [];
elems(1).DocUnits = '';
elems(1).Description = sprintf (''); 

elems(2) = Simulink.BusElement;
elems(2).Name = 'T_ENGTH_PNT_Coolant_degC';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'double';
elems(2).SampleTime = -1;
elems(2).Complexity = 'real';
elems(2).SamplingMode = 'Sample based';
elems(2).Min = [];
elems(2).Max = [];
elems(2).DocUnits = '';
elems(2).Description = sprintf (''); 

elems(3) = Simulink.BusElement;
elems(3).Name = 'IdleSpeed_Target';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'double';
elems(3).SampleTime = -1;
elems(3).Complexity = 'real';
elems(3).SamplingMode = 'Sample based';
elems(3).Min = [];
elems(3).Max = [];
elems(3).DocUnits = '';
elems(3).Description = sprintf (''); 

elems(4) = Simulink.BusElement;
elems(4).Name = 'v_VL_PNT_kmph';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'double';
elems(4).SampleTime = -1;
elems(4).Complexity = 'real';
elems(4).SamplingMode = 'Sample based';
elems(4).Min = [];
elems(4).Max = [];
elems(4).DocUnits = '';
elems(4).Description = sprintf (''); 

elems(5) = Simulink.BusElement;
elems(5).Name = 'trq_BK_PNT_Nm';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'double';
elems(5).SampleTime = -1;
elems(5).Complexity = 'real';
elems(5).SamplingMode = 'Sample based';
elems(5).Min = [];
elems(5).Max = [];
elems(5).DocUnits = '';
elems(5).Description = sprintf (''); 

% TM_CNT_CAN_Rx バスの定義
TM_CNT_CAN_Rx = Simulink.Bus;
TM_CNT_CAN_Rx.HeaderFile = '';
TM_CNT_CAN_Rx.Description = sprintf ('');
TM_CNT_CAN_Rx.DataScope = 'Auto';
TM_CNT_CAN_Rx.Alignment = -1;
TM_CNT_CAN_Rx.Elements = elems;
clear elems;
assignin('base', 'TM_CNT_CAN_Rx',TM_CNT_CAN_Rx);
%---------------------%

