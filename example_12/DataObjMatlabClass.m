% autoMBD示例脚本
% 展示MATLAB variable class的基本创建方法
% 创建时间2023-02-04

%% 清空数据
clear; clc;

%% 数值类型
a1 = 1;                % 普通数值，默认double
a2 = single(1);        % 指定数据类型single
a3 = [1 2 3; 4 5 6];   % 数组数值
a4 = 1 + 2i;           % 复数数值

%% 字符串类型
b1 = 'I am a string!'; % 字符数组，注意为单引号
b2 = "I am a strings!";% 字符串数组，注意为双引号

%% 结构体类型
c1.elm1 = 1;           % 通过索引符"."定义结构体
c1.elm2 = 2;           % 通过索引符"."定义结构体
c2 = struct('elm1', 1, 'elm2', 2); % 通过struct()函数定义结构体

%% 元胞数组类型
d = {a1, a1, b1, b2};  % 定义元胞数组

%% 时序类型
ts = timeseries();     % 定义时序数据对象

%% 在Model Explorer显示结果
sfexplr;
