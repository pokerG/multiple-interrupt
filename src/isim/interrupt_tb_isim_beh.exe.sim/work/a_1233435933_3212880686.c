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
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_1233435933_3212880686_p_0(char *t0)
{
    char t2[16];
    char t5[16];
    int64 t1;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (5 * 1000LL);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 5372U);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 5340U);
    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t5, t7, t6);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t2, t4, t3, t8, t5);
    t10 = (t2 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    t13 = (4U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 3352);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 4U);
    xsi_driver_first_trans_delta(t14, 0U, 4U, t1);
    t19 = (t0 + 3352);
    xsi_driver_intertial_reject(t19, t1, t1);

LAB2:    t20 = (t0 + 3272);
    *((int *)t20) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t12, 0);
    goto LAB6;

}


extern void work_a_1233435933_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1233435933_3212880686_p_0};
	xsi_register_didat("work_a_1233435933_3212880686", "isim/interrupt_tb_isim_beh.exe.sim/work/a_1233435933_3212880686.didat");
	xsi_register_executes(pe);
}
