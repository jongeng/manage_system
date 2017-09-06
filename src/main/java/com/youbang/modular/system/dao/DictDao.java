package com.youbang.modular.system.dao;

import com.youbang.common.persistence.model.Dict;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 字典的dao
 *
 * @author jon
 * @date 2017-07-20
 */
public interface DictDao {

    /**
     * 根据编码获取词典列表
     *
     * @param code
     * @return
     * @date 2017-07-20
     */
    List<Dict> selectByCode(@Param("code") String code);

    /**
     * 查询字典列表
     *
     * @author jon
     * @date 2017-07-20
     */
    List<Map<String, Object>> list(@Param("condition") String conditiion);
}
