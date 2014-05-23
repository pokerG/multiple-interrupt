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
    char t1[16];
    char t4[16];
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5372U);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 5340U);
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t4, t6, t5);
    t8 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t1, t3, t2, t7, t4);
    t9 = (t1 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (1U * t10);
    t12 = (4U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 3352);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 3272);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t11, 0);
    goto LAB6;

}


extern void work_a_1233435933_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1233435933_3212880686_p_0};
	xsi_register_didat("work_a_1233435933_3212880686", "isim/interrupt_tb_isim_beh.exe.sim/work/a_1233435933_3212880686.didat");
	xsi_register_executes(pe);
}
