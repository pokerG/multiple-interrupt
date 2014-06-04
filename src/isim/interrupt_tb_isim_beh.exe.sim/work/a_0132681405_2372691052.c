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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/jizu/interrupt/interrupt_tb.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0132681405_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3560);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3560);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0132681405_2372691052_p_1(char *t0)
{
    char t18[16];
    char t23[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    t1 = (t0 + 4000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t8 = *((unsigned char *)t4);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4512);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 4576);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6935);
    t12 = xsi_mem_cmp(t2, t4, 2U);
    if (t12 == 1)
        goto LAB12;

LAB17:    t6 = (t0 + 6937);
    t13 = xsi_mem_cmp(t6, t4, 2U);
    if (t13 == 1)
        goto LAB13;

LAB18:    t10 = (t0 + 6939);
    t14 = xsi_mem_cmp(t10, t4, 2U);
    if (t14 == 1)
        goto LAB14;

LAB19:    t15 = (t0 + 6941);
    t17 = xsi_mem_cmp(t15, t4, 2U);
    if (t17 == 1)
        goto LAB15;

LAB20:
LAB16:    xsi_set_current_line(117, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 4768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t3);
    t10 = (t0 + 4768);
    xsi_driver_intertial_reject(t10, t3, t3);

LAB11:    xsi_set_current_line(119, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t3);

LAB32:    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB12:    xsi_set_current_line(105, ng0);
    t3 = (5 * 1000LL);
    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t19 = (t0 + 6832U);
    t21 = (t0 + 6943);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 3;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (3 - 0);
    t27 = (t26 * 1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t18, t20, t19, t21, t23);
    t28 = (t18 + 12U);
    t27 = *((unsigned int *)t28);
    t29 = (1U * t27);
    t8 = (4U != t29);
    if (t8 == 1)
        goto LAB22;

LAB23:    t30 = (t0 + 4640);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t25, 4U);
    xsi_driver_first_trans_delta(t30, 0U, 4U, t3);
    t35 = (t0 + 4640);
    xsi_driver_intertial_reject(t35, t3, t3);
    xsi_set_current_line(106, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 6947);
    t5 = (t0 + 4704);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, t3);
    t15 = (t0 + 4704);
    xsi_driver_intertial_reject(t15, t3, t3);
    goto LAB11;

LAB13:    xsi_set_current_line(108, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 6832U);
    t5 = (t0 + 6951);
    t7 = (t23 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 0;
    t10 = (t7 + 4U);
    *((int *)t10) = 3;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t12 = (3 - 0);
    t27 = (t12 * 1);
    t27 = (t27 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t27;
    t10 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t18, t4, t2, t5, t23);
    t11 = (t18 + 12U);
    t27 = *((unsigned int *)t11);
    t29 = (1U * t27);
    t8 = (4U != t29);
    if (t8 == 1)
        goto LAB24;

LAB25:    t15 = (t0 + 4640);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 4U);
    xsi_driver_first_trans_delta(t15, 0U, 4U, t3);
    t22 = (t0 + 4640);
    xsi_driver_intertial_reject(t22, t3, t3);
    xsi_set_current_line(109, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 6955);
    t5 = (t0 + 4704);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, t3);
    t15 = (t0 + 4704);
    xsi_driver_intertial_reject(t15, t3, t3);
    goto LAB11;

LAB14:    xsi_set_current_line(111, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 6832U);
    t5 = (t0 + 6959);
    t7 = (t23 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 0;
    t10 = (t7 + 4U);
    *((int *)t10) = 3;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t12 = (3 - 0);
    t27 = (t12 * 1);
    t27 = (t27 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t27;
    t10 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t18, t4, t2, t5, t23);
    t11 = (t18 + 12U);
    t27 = *((unsigned int *)t11);
    t29 = (1U * t27);
    t8 = (4U != t29);
    if (t8 == 1)
        goto LAB26;

LAB27:    t15 = (t0 + 4640);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 4U);
    xsi_driver_first_trans_delta(t15, 0U, 4U, t3);
    t22 = (t0 + 4640);
    xsi_driver_intertial_reject(t22, t3, t3);
    xsi_set_current_line(112, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 6963);
    t5 = (t0 + 4704);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, t3);
    t15 = (t0 + 4704);
    xsi_driver_intertial_reject(t15, t3, t3);
    goto LAB11;

LAB15:    xsi_set_current_line(114, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 6832U);
    t5 = (t0 + 6967);
    t7 = (t23 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 0;
    t10 = (t7 + 4U);
    *((int *)t10) = 3;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t12 = (3 - 0);
    t27 = (t12 * 1);
    t27 = (t27 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t27;
    t10 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t18, t4, t2, t5, t23);
    t11 = (t18 + 12U);
    t27 = *((unsigned int *)t11);
    t29 = (1U * t27);
    t8 = (4U != t29);
    if (t8 == 1)
        goto LAB28;

LAB29:    t15 = (t0 + 4640);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 4U);
    xsi_driver_first_trans_delta(t15, 0U, 4U, t3);
    t22 = (t0 + 4640);
    xsi_driver_intertial_reject(t22, t3, t3);
    xsi_set_current_line(115, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 6971);
    t5 = (t0 + 4704);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, t3);
    t15 = (t0 + 4704);
    xsi_driver_intertial_reject(t15, t3, t3);
    goto LAB11;

LAB21:;
LAB22:    xsi_size_not_matching(4U, t29, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(4U, t29, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(4U, t29, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(4U, t29, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t3);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

LAB34:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 4448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 4704);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_delta(t2, 0U, 4U, t3);
    t11 = (t0 + 4704);
    xsi_driver_intertial_reject(t11, t3, t3);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4448);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(125, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 4768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t3);
    t10 = (t0 + 4768);
    xsi_driver_intertial_reject(t10, t3, t3);
    goto LAB9;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

}


extern void work_a_0132681405_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0132681405_2372691052_p_0,(void *)work_a_0132681405_2372691052_p_1};
	xsi_register_didat("work_a_0132681405_2372691052", "isim/interrupt_tb_isim_beh.exe.sim/work/a_0132681405_2372691052.didat");
	xsi_register_executes(pe);
}
