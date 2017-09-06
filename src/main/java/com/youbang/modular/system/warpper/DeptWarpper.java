package com.youbang.modular.system.warpper;

import com.youbang.common.constant.factory.ConstantFactory;
import com.youbang.common.warpper.BaseControllerWarpper;
import com.youbang.core.util.ToolUtil;

import java.util.Map;

/**
 * 部门列表的包装
 *
 * @author jon
 * @date 2017-07-20
 */
public class DeptWarpper extends BaseControllerWarpper {

    public DeptWarpper(Object list) {
        super(list);
    }

    @Override
    public void warpTheMap(Map<String, Object> map) {

        Integer pid = (Integer) map.get("pid");

        if (ToolUtil.isEmpty(pid) || pid.equals(0)) {
            map.put("pName", "--");
        } else {
            map.put("pName", ConstantFactory.me().getDeptName(pid));
        }
    }

}
