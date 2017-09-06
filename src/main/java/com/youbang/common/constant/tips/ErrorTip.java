package com.youbang.common.constant.tips;

import com.youbang.common.exception.BizExceptionEnum;

/**
 * 返回给前台的错误提示
 *
 * @author jon
 * @date 2017-07-20
 */
public class ErrorTip extends Tip {

    public ErrorTip(int code, String message) {
        super();
        this.code = code;
        this.message = message;
    }

    public ErrorTip(BizExceptionEnum bizExceptionEnum) {
        this.code = bizExceptionEnum.getCode();
        this.message = bizExceptionEnum.getMessage();
    }
}
