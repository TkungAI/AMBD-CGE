/****************************************
 * 文件名  ：autoMBD_example_IO.c 
 * 作者    ：autoMBD 
 * 创建时间：2022-11-20
 ****************************************/

#include "autoMBD_example_IO.h"
#include "Cpu.h"
#include "rtwtypes.h"
/* 在这里添加必要的头文件 */

/* get_Req_Ctrl接口函数，返回Req_Ctrl的值 */
real_T get_Req_Ctrl (void)
{
    static real_T Req_Ctrl = 0;
    Req_Ctrl += 1;
	
	return Req_Ctrl;
}

/* get_Feedback接口函数，返回Feedback的值 */
real_T get_Feedback (void)
{
    real_T Feedback;
	
	/*Read ADC*/
    ADC_DRV_GetChanResult(0,0,&Feedback);
	
	return Feedback;
}

/* set_PI_Ctrl接口函数，根据输入参数，设置PWM占空比 */
void set_PI_Ctrl (real_T PI_Ctrl)
{
    FTM_DRV_FastUpdatePwmChannels(0, 0, 0, PI_Ctrl, true);
}
