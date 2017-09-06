package com.youbang.common.constant.state;

/**
 * 数据库排序
 *
 * @author jon
 * @date 2017-07-20
 */
public enum Order {

    ASC("asc"), DESC("desc");

    private String des;

    Order(String des) {
        this.des = des;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }
}
