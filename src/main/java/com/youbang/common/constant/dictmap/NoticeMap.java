package com.youbang.common.constant.dictmap;

import com.youbang.common.constant.dictmap.base.AbstractDictMap;

/**
 * 通知的映射
 *
 * @author jon
 * @date 2017-07-20
 */
public class NoticeMap extends AbstractDictMap {

    @Override
    public void init() {
        put("title", "标题");
        put("content", "内容");
    }

    @Override
    protected void initBeWrapped() {
    }
}
