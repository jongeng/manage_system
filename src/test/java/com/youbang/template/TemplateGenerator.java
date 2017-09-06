package com.youbang.template;

import com.youbang.core.template.config.ContextConfig;
import com.youbang.core.template.engine.SimpleTemplateEngine;
import com.youbang.core.template.engine.base.GunsTemplateEngine;

import java.io.IOException;

/**
 * 测试模板引擎
 *
 * @author jon
 * @date 2017-07-20
 */
public class TemplateGenerator {

    public static void main(String[] args) throws IOException {
        ContextConfig contextConfig = new ContextConfig();
        contextConfig.setBizChName("啊哈");
        contextConfig.setBizEnName("haha");
        contextConfig.setModuleName("tk");
        contextConfig.setProjectPath("D:\\tmp\\guns");

        //contextConfig.setAddPageSwitch(false);
        //contextConfig.setEditPageSwitch(false);

        GunsTemplateEngine gunsTemplateEngine = new SimpleTemplateEngine();
        gunsTemplateEngine.setContextConfig(contextConfig);
        gunsTemplateEngine.start();
    }

}
