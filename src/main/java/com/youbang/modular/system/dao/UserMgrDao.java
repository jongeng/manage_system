package com.youbang.modular.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.youbang.common.persistence.model.User;

/**
 * 管理员的dao
 *
 * @author jon
 * @date 2017-07-20
 */
public interface UserMgrDao {

    /**
     * 修改用户状态
     *
     * @param userId
     * @param status
     * @date 2017-07-20
     */
    int setStatus(@Param("userId") Integer userId, @Param("status") int status);

    /**
     * 修改密码
     *
     * @param userId
     * @param pwd
     * @date 2017-07-20
     */
    int changePwd(@Param("userId") Integer userId, @Param("pwd") String pwd);

    /**
     * 根据条件查询用户列表
     *
     * @return
     * @date 2017-07-20
     */
    List<Map<String, Object>> selectUsers(@Param("name") String name, @Param("deptid") Integer deptid);

    /**
     * 设置用户的角色
     *
     * @return
     * @date 2017-07-20
     */
    int setRoles(@Param("userId") Integer userId, @Param("roleIds") String roleIds);

    /**
     * 通过账号获取用户
     *
     * @param account
     * @return
     * @date 2017-07-20
     */
    User getByAccount(@Param("account") String account);
}
