package com.youbang.biz;

import com.youbang.base.BaseJunit;
import com.youbang.modular.biz.service.ITestService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 业务测试
 *
 * @author jon
 * @date 2017-07-20
 */
public class BizTest extends BaseJunit {

    @Autowired
    ITestService testService;

    @Test
    public void test() {
        //testService.testGuns();

        testService.testBiz();

        //testService.testAll();
    }
}
