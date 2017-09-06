package com.youbang.common.constant.tips;

/**
 * 返回给前台的成功提示
 *
 * @author jon
 * @date 2017-07-20
 */
public class SuccessTip extends Tip {

    public SuccessTip() {
        super.code = 200;
        super.message = "操作成功";
    }
}
