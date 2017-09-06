package com.youbang.common.constant;

/**
 * 一些服务的快捷获取
 *
 * @author jon
 * @date 2017-07-20
 */
public class Cst {

    private Cst() {
    }

    private static Cst cst = new Cst();

    public static Cst me() {
        return cst;
    }

}
