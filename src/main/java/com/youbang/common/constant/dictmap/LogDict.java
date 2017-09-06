package com.youbang.common.constant.dictmap;

import com.youbang.common.constant.dictmap.base.AbstractDictMap;

/**
 * 日志的字典
 *
 * @author jon
 * @date 2017-07-20
 */
public class LogDict extends AbstractDictMap {

    @Override
    public void init() {
        put("tips", "备注");
    }

    @Override
    protected void initBeWrapped() {

    }
}
