% autoMBD示例脚本
% 展示Simulink枚举数据的基本创建方法
% 创建时间2023-02-24

%% 清空数据
clear; clc;

%% 创建数据字典
if (exist('myDictionary.sldd', 'file'))
    ddObj = Simulink.data.dictionary.open('myDictionary.sldd');
else
    ddObj = Simulink.data.dictionary.create('myDictionary.sldd');
end

sectionObj = getSection(ddObj, 'Design Data');

%% 新建一个枚举数据对象的句柄：myEnumTypeHandle
myEnumTypeHandle = Simulink.data.dictionary.EnumTypeDefinition;

% 设置枚举数据
myEnumTypeHandle.removeEnumeral(1);
myEnumTypeHandle.appendEnumeral('myenum0', 0);
myEnumTypeHandle.appendEnumeral('myenum1', 1);
myEnumTypeHandle.appendEnumeral('myenum2', 2);
myEnumTypeHandle.appendEnumeral('myenum3', 3);

%% 将枚举数据类型添加到数据字典中
if (exist(sectionObj, 'myEnumType'))
    enumObjEntry = getEntry(sectionObj, 'myEnumType');
else
    enumObjEntry = addEntry(sectionObj, 'myEnumType', myEnumTypeHandle);
end

% 保存修改
saveChanges(ddObj);

%% 使用枚举数据类型
% 配置Simulink.Parameter数据类型为myEnumType，并设置枚举值为myenum1​
paramObjHandle = Simulink.Parameter;
paramObjHandle.DataType = 'Enum: myEnumType';
paramObjHandle.Value = myEnumType.myenum1;

% 显示配置结果​
disp(paramObjHandle.Value);

% 将Simulink参数对象​添加到数据字典
if (exist(sectionObj, 'paramObjEnum'))
    paramObjEntry = getEntry(sectionObj, 'paramObjEnum');
else
    paramObjEntry = addEntry(sectionObj, 'paramObjEnum', paramObjHandle);
end

% 保存修改
saveChanges(ddObj);

%% 显示数据字典
show(ddObj);
