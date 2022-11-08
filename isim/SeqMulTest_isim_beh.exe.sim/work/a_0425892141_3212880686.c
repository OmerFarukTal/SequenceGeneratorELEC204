/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/otal19/Desktop/Project-20220605T160425Z-001/Project/WoodalNumbers/Tetrabonacci.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0425892141_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t10;
    char *t11;
    int t12;
    int t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t18;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4320);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = (unsigned char)0;

LAB13:    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t2 = (t10 == 20);
    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t8 = (t6 == (unsigned char)3);
    if (t8 == 1)
        goto LAB20;

LAB21:    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t9 = *((unsigned char *)t4);
    t15 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t9);
    t16 = (t15 == (unsigned char)2);
    t2 = t16;

LAB22:    if (t2 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t2);
    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t5;
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, t10, 32);
    t4 = (t0 + 4416);
    t7 = (t4 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t18 = *((char **)t14);
    memcpy(t18, t1, 32U);
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 2408U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = 0;
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2528U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;
    goto LAB6;

LAB8:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2528U);
    t7 = *((char **)t1);
    t10 = *((int *)t7);
    t1 = (t0 + 2408U);
    t11 = *((char **)t1);
    t12 = *((int *)t11);
    t13 = (t10 + t12);
    t1 = (t0 + 2648U);
    t14 = *((char **)t1);
    t1 = (t14 + 0);
    *((int *)t1) = t13;
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t1 = (t0 + 2408U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t1 = (t0 + 2528U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t12 = (t10 + 1);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

LAB11:    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t8 = *((unsigned char *)t4);
    t9 = (t8 == (unsigned char)2);
    t2 = t9;
    goto LAB13;

LAB14:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2408U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2528U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB15;

LAB17:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2408U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2528U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB18;

LAB20:    t2 = (unsigned char)1;
    goto LAB22;

}

static void work_a_0425892141_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4336);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0425892141_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0425892141_3212880686_p_0,(void *)work_a_0425892141_3212880686_p_1};
	xsi_register_didat("work_a_0425892141_3212880686", "isim/SeqMulTest_isim_beh.exe.sim/work/a_0425892141_3212880686.didat");
	xsi_register_executes(pe);
}
