package com.youbang.modular.system.dao;

import com.youbang.common.node.ZTreeNode;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 角色相关的dao
 *
 * @author jon
 * @date 2017-07-20
 */
public interface RoleDao {

    /**
     * 根据条件查询角色列表
     *
     * @return
     * @date 2017-07-20
     */
    List<Map<String, Object>> selectRoles(@Param("condition") String condition);

    /**
     * 删除某个角色的所有权限
     *
     * @param roleId 角色id
     * @return
     * @date 2017-07-20
     */
    int deleteRolesById(@Param("roleId") Integer roleId);

    /**
     * 获取角色列表树
     *
     * @return
     * @date 2017-07-20
     */
    List<ZTreeNode> roleTreeList();

    /**
     * 获取角色列表树
     *
     * @return
     * @date 2017-07-20
     */
    List<ZTreeNode> roleTreeListByRoleId(String[] roleId);


}
