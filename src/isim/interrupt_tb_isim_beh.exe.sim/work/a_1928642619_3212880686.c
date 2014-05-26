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
static const char *ng0 = "F:/jizu/interrupt/deviceEncode.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_1928642619_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    int t5;
    int t6;
    int64 t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 5580);
    *((int *)t1) = 1;
    t4 = (t0 + 5584);
    *((int *)t4) = t3;
    t5 = 1;
    t6 = t3;

LAB2:    if (t5 <= t6)
        goto LAB3;

LAB5:    t1 = (t0 + 3112);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(57, ng0);
    t7 = (1 * 1000LL);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 5580);
    t10 = *((int *)t8);
    t11 = (t10 - 1);
    t12 = (t11 * 1);
    xsi_vhdl_check_range_of_index(1, 4, 1, *((int *)t8));
    t13 = (1U * t12);
    t14 = (0 + t13);
    t15 = (t9 + t14);
    t16 = *((unsigned char *)t15);
    t17 = (t0 + 1192U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t20 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t16, t19);
    t17 = (t0 + 5580);
    t21 = *((int *)t17);
    t22 = (t21 - 1);
    t23 = (t22 * 1);
    t24 = (1 * t23);
    t25 = (0U + t24);
    t26 = (t0 + 3192);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = t20;
    xsi_driver_first_trans_delta(t26, t25, 1, t7);
    t31 = (t0 + 5580);
    t32 = *((int *)t31);
    t33 = (t32 - 1);
    t34 = (t33 * 1);
    t35 = (1 * t34);
    t36 = (0U + t35);
    t37 = (t0 + 3192);
    xsi_driver_intertial_reject(t37, t7, t7);

LAB4:    t1 = (t0 + 5580);
    t5 = *((int *)t1);
    t2 = (t0 + 5584);
    t6 = *((int *)t2);
    if (t5 == t6)
        goto LAB5;

LAB6:    t3 = (t5 + 1);
    t5 = t3;
    t4 = (t0 + 5580);
    *((int *)t4) = t5;
    goto LAB2;

}


extern void work_a_1928642619_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1928642619_3212880686_p_0};
	xsi_register_didat("work_a_1928642619_3212880686", "isim/interrupt_tb_isim_beh.exe.sim/work/a_1928642619_3212880686.didat");
	xsi_register_executes(pe);
}
