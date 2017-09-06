package com.youbang.modular.system.service;

/**
 * 菜单服务
 *
 * @author jon
 * @date 2017-07-20
 */
public interface IMenuService {

    /**
     * 删除菜单
     *
     * @author jon
     * @date 2017-07-20
     */
    void delMenu(Integer menuId);

    /**
     * 删除菜单包含所有子菜单
     *
     * @author jon
     * @date 2017-07-20
     */
    void delMenuContainSubMenus(Integer menuId);
}
