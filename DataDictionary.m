% autoMBD示例脚本
% 展示Data Dictionary的基本创建方法
% 创建时间2023-02-04
% 更新时间2023-02-24

%% 清空数据
clear; clc;

%% 创建数据字典
if (exist('myDictionary.sldd', 'file'))
    ddObj = Simulink.data.dictionary.open('myDictionary.sldd');
else
    ddObj = Simulink.data.dictionary.create('myDictionary.sldd');
end

%% 新建一个数据对象paramObjHandle（句柄），属Simulink.Parameter类
paramObjHandle = Simulink.Parameter;
% 设置属性参数
paramObjHandle.Value = 1;
paramObjHandle.DataType = 'uint16';
paramObjHandle.Max = 10000;
paramObjHandle.CoderInfo.StorageClass = 'ExportedGlobal';

%% 将创建的数据对象添加到数据字典中
% 获取数据字典的'Design Data'区域
listEntry(ddObj);
sectionObj = getSection(ddObj, 'Design Data');

if (exist(sectionObj, 'paramObj'))
    paramObjEntry = getEntry(sectionObj, 'paramObj');
else
    paramObjEntry = addEntry(sectionObj, 'paramObj', paramObjHandle);
end

saveChanges(ddObj);

%% 打开Model Explorer
% 在Model Explorer中显示数据字典
show(ddObj);
