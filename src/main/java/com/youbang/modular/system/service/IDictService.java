package com.youbang.modular.system.service;

/**
 * 字典服务
 *
 * @author jon
 * @date 2017-07-20
 */
public interface IDictService {

    /**
     * 添加字典
     *
     * @author jon
     * @date 2017-07-20
     */
    void addDict(String dictName, String dictValues);

    /**
     * 编辑字典
     *
     * @author jon
     * @date 2017-07-20
     */
    void editDict(Integer dictId, String dictName, String dicts);

    /**
     * 删除字典
     *
     * @author jon
     * @date 2017-07-20
     */
    void delteDict(Integer dictId);

}
