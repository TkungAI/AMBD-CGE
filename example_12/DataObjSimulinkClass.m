% autoMBD示例脚本
% 展示Simukink class的基本创建方法
% 创建时间2023-02-04

%% 清空数据
clear; clc;

%% Simulink.Parameter类
paramObj = Simulink.Parameter;
% 设置属性参数
paramObj.Value = 1;
paramObj.DataType = 'uint16';
paramObj.Max = 10000;
paramObj.CoderInfo.StorageClass = 'ExportedGlobal';

%% Simulink.Signal类
signalObj = Simulink.Signal;
% 设置属性参数
signalObj.SampleTime = 0.001;
signalObj.DataType = 'double';
signalObj.Max = 10000;
signalObj.CoderInfo.StorageClass = 'ImportedExtern';

%% Simulink.NumericType类
typeObj = Simulink.NumericType;
% 设置属性参数
typeObj.DataTypeMode = 'Boolean';

%% Simulink.AliasType类
aliasObj_float = Simulink.AliasType;
% 设置属性参数
aliasObj_float.BaseType = 'single';

%% Simulink.Bus类
busObj = Simulink.Bus;
% 创建子类
elm1 = Simulink.BusElement;
elm1.Name = 'BusElm1';
elm1.DataType = 'single';
elm2 = Simulink.BusElement;
elm2.Name = 'BusElm2';
% 设置属性参数
busObj.Elements = [elm1 elm2];

%% 在Model Explorer显示结果
sfexplr;
