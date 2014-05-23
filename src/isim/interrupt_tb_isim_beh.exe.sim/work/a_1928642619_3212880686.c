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
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

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
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5580);
    t9 = *((int *)t7);
    t10 = (t9 - 1);
    t11 = (t10 * 1);
    xsi_vhdl_check_range_of_index(1, 4, 1, *((int *)t7));
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t8 + t13);
    t15 = *((unsigned char *)t14);
    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t15, t18);
    t16 = (t0 + 5580);
    t20 = *((int *)t16);
    t21 = (t20 - 1);
    t22 = (t21 * 1);
    t23 = (1 * t22);
    t24 = (0U + t23);
    t25 = (t0 + 3192);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = t19;
    xsi_driver_first_trans_delta(t25, t24, 1, 0LL);

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
