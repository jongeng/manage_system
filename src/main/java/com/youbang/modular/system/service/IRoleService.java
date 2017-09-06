package com.youbang.modular.system.service;

/**
 * 角色相关业务
 *
 * @author jon
 * @date 2017-07-20
 */
public interface IRoleService {

    /**
     * 设置某个角色的权限
     *
     * @param roleId 角色id
     * @param ids    权限的id
     * @date 2017-07-20
     */
    void setAuthority(Integer roleId, String ids);

    /**
     * 删除角色
     *
     * @author jon
     * @date 2017-07-20
     */
    void delRoleById(Integer roleId);
}
