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
static const char *ng0 = "F:/jizu/interrupt/queue.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_3798478767_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_1233435933_3212880686_p_0(char *t0)
{
    char t2[16];
    char t3[16];
    char t6[16];
    int64 t1;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (5 * 1000LL);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 5372U);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5340U);
    t9 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t6, t8, t7);
    t10 = ieee_p_2592010699_sub_3798478767_503743352(IEEE_P_2592010699, t3, t5, t4, t9, t6);
    t11 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t2, t10, t3);
    t12 = (t2 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    t15 = (4U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 3352);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 4U);
    xsi_driver_first_trans_delta(t16, 0U, 4U, t1);
    t21 = (t0 + 3352);
    xsi_driver_intertial_reject(t21, t1, t1);

LAB2:    t22 = (t0 + 3272);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t14, 0);
    goto LAB6;

}


extern void work_a_1233435933_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1233435933_3212880686_p_0};
	xsi_register_didat("work_a_1233435933_3212880686", "isim/interrupt_isim_beh.exe.sim/work/a_1233435933_3212880686.didat");
	xsi_register_executes(pe);
}
