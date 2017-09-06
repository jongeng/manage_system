package com.youbang.modular.system.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 通知dao
 *
 * @author jon
 * @date 2017-07-20
 */
public interface NoticeDao {

    List<Map<String, Object>> list(@Param("condition") String condition);
}
