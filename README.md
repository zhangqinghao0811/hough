# 离散空间广义霍夫变换
一般来讲广义霍夫变换是指把坐标空间的图像映射到参数空间，需要先确定转换到参数空间的函数关系式，这种转换是连续的，但是对于任意图形而言这种关系式往往很难确定，而且我们处理的图像本身就是离散的，不需要连续变换。对于有限长的曲线而言，只要确定对应每一个坐标对应的参数空间的映射表就能画出参数空间的离散曲线。之后根据累加值就可以识别任意曲线。它实际上等同于卷积进行模板匹配，但是在实现过程上有所差别。  ——代码编写：zhangqinghao0811
