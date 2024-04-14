% autoMBD示例脚本
% 展示系统枚举数据的基本创建方法
% 创建时间2023-02-24

classdef mySysEnum < Simulink.IntEnumType
    enumeration
        enum0 (0)
        enum1 (1)
        enum2 (2)
        enum3 (3)
        enum4 (4)
    end
end
