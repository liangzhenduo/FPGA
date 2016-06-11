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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/workspace/lcd/lcd.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {12U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {15U, 0U};
static unsigned int ng6[] = {8U, 0U};
static unsigned int ng7[] = {0U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {79U, 0U};
static unsigned int ng10[] = {2U, 0U};
static unsigned int ng11[] = {18U, 0U};
static unsigned int ng12[] = {6U, 0U};
static unsigned int ng13[] = {4U, 0U};
static unsigned int ng14[] = {76U, 0U};
static unsigned int ng15[] = {5U, 0U};
static unsigned int ng16[] = {36U, 0U};
static unsigned int ng17[] = {32U, 0U};
static unsigned int ng18[] = {7U, 0U};
static unsigned int ng19[] = {9U, 0U};
static unsigned int ng20[] = {10U, 0U};
static unsigned int ng21[] = {11U, 0U};
static unsigned int ng22[] = {96U, 0U};
static unsigned int ng23[] = {49U, 0U};
static unsigned int ng24[] = {13U, 0U};
static unsigned int ng25[] = {66U, 0U};
static unsigned int ng26[] = {14U, 0U};
static unsigned int ng27[] = {48U, 0U};
static unsigned int ng28[] = {56U, 0U};
static unsigned int ng29[] = {127U, 0U};



static void Always_43_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3452);
    *((int *)t2) = 1;
    t3 = (t0 + 2852);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1428U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2300);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 20, t5, 32);
    t7 = (t0 + 2300);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 20, 0LL);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(46, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2300);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 20, 0LL);
    goto LAB12;

}

static void Cont_51_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 2968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2300);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 19);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 19);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t14 = (t0 + 3520);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t27 = (t0 + 3460);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_52_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2300);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 18);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 18);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t14 = (t0 + 3556);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t27 = (t0 + 3468);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Always_54_3(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3476);
    *((int *)t2) = 1;
    t3 = (t0 + 3284);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t5 = (t0 + 600U);
    t6 = *((char **)t5);
    t5 = (t0 + 692U);
    t7 = *((char **)t5);
    t5 = (t0 + 784U);
    t8 = *((char **)t5);
    t5 = (t0 + 876U);
    t9 = *((char **)t5);
    xsi_vlogtype_concat(t4, 4, 4, 4U, t9, 1, t8, 1, t7, 1, t6, 1);
    t5 = (t0 + 2024);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1060U);
    t5 = *((char **)t2);
    t2 = (t0 + 1152U);
    t6 = *((char **)t2);
    t2 = (t0 + 1244U);
    t7 = *((char **)t2);
    xsi_vlogtype_concat(t4, 4, 4, 4U, t7, 1, t6, 1, t5, 1, t3, 1);
    t2 = (t0 + 2116);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 4);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1612U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t10 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 32);
    if (t10 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t10 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 32);
    if (t10 == 1)
        goto LAB9;

LAB10:
LAB12:
LAB11:    xsi_set_current_line(61, ng0);

LAB16:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng5)));
    t5 = (t0 + 1840);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 4);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng6)));
    t5 = (t0 + 2208);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 4);

LAB13:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2208);
    t5 = (t2 + 36U);
    t6 = *((char **)t5);

LAB17:    t7 = ((char*)((ng7)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t10 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng8)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng10)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng4)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng13)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng15)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng12)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng18)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng6)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng19)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng20)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng21)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng3)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng24)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng26)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng5)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t10 == 1)
        goto LAB48;

LAB49:
LAB51:
LAB50:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng29)));
    t5 = (t0 + 1932);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 7);

LAB52:    goto LAB2;

LAB7:    xsi_set_current_line(59, ng0);

LAB14:    xsi_set_current_line(59, ng0);
    t5 = ((char*)((ng3)));
    t6 = (t0 + 1840);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 4);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2024);
    t5 = (t2 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 2208);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 4);
    goto LAB13;

LAB9:    xsi_set_current_line(60, ng0);

LAB15:    xsi_set_current_line(60, ng0);
    t5 = ((char*)((ng4)));
    t6 = (t0 + 1840);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 4);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2116);
    t5 = (t2 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 2208);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 4);
    goto LAB13;

LAB18:    xsi_set_current_line(65, ng0);
    t8 = ((char*)((ng8)));
    t9 = (t0 + 1932);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 7);
    goto LAB52;

LAB20:    xsi_set_current_line(66, ng0);
    t5 = ((char*)((ng9)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB22:    xsi_set_current_line(67, ng0);
    t5 = ((char*)((ng11)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB24:    xsi_set_current_line(68, ng0);
    t5 = ((char*)((ng12)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB26:    xsi_set_current_line(69, ng0);
    t5 = ((char*)((ng14)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB28:    xsi_set_current_line(70, ng0);
    t5 = ((char*)((ng16)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB30:    xsi_set_current_line(71, ng0);
    t5 = ((char*)((ng17)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB32:    xsi_set_current_line(72, ng0);
    t5 = ((char*)((ng5)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB34:    xsi_set_current_line(73, ng0);
    t5 = ((char*)((ng7)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB36:    xsi_set_current_line(74, ng0);
    t5 = ((char*)((ng13)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB38:    xsi_set_current_line(75, ng0);
    t5 = ((char*)((ng6)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB40:    xsi_set_current_line(76, ng0);
    t5 = ((char*)((ng22)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB42:    xsi_set_current_line(77, ng0);
    t5 = ((char*)((ng23)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB44:    xsi_set_current_line(78, ng0);
    t5 = ((char*)((ng25)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB46:    xsi_set_current_line(79, ng0);
    t5 = ((char*)((ng27)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

LAB48:    xsi_set_current_line(80, ng0);
    t5 = ((char*)((ng28)));
    t7 = (t0 + 1932);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 7);
    goto LAB52;

}


extern void work_m_00000000004215236556_1199837496_init()
{
	static char *pe[] = {(void *)Always_43_0,(void *)Cont_51_1,(void *)Cont_52_2,(void *)Always_54_3};
	xsi_register_didat("work_m_00000000004215236556_1199837496", "isim/lcd_tb_isim_beh.exe.sim/work/m_00000000004215236556_1199837496.didat");
	xsi_register_executes(pe);
}
