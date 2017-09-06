package com.youbang.modular.system.factory;

import com.youbang.modular.system.transfer.UserDto;
import com.youbang.common.persistence.model.User;
import org.springframework.beans.BeanUtils;

/**
 * 用户创建工厂
 *
 * @author jon
 * @date 2017-07-20
 */
public class UserFactory {

    public static User createUser(UserDto userDto) {
        if (userDto == null) {
            return null;
        } else {
            User user = new User();
            BeanUtils.copyProperties(userDto, user);
            return user;
        }
    }
}
