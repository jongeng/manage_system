package com.youbang.common.annotion;

import java.lang.annotation.*;

/**
 * 多数据源标识
 *
 * @author jon
 * @date 2017-07-20
 */
@Inherited
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
public @interface DataSource {
    String name() default "";
}
