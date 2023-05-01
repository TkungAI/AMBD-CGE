% autoMBD示例脚本
% 用于autoMBD_example_PI_ObjectiveDD.slx的数据对象管理、执行脚本
% 创建时间2023-05-01
% 更新时间2023-05-01

%% 清空数据
clear; clc;

%% 创建数据字典
if (exist('PI_ObjectiveDD.sldd', 'file'))
    ddObj = Simulink.data.dictionary.open('PI_ObjectiveDD.sldd');
else
    ddObj = Simulink.data.dictionary.create('PI_ObjectiveDD.sldd');
end

%% 打开Model Explorer
% 在Model Explorer中显示数据字典
show(ddObj);
