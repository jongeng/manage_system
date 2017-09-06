package com.youbang.common.persistence.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;
/** 
* @Author jon
* @Time  2017/7/20 19:53
* @Method  
* @Param
* @return  
* @version V1.0.0 
* @description  
*/
@TableName("A1_dict")
public class Device extends Model<Device> {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String deviceNum;

    private String firmName;

    private String vehicleNum;

    private String version;

    private Date updatetime;

    private String updateby;

    private String createtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDeviceNum() {
        return deviceNum;
    }

    public void setDeviceNum(String deviceNum) {
        this.deviceNum = deviceNum == null ? null : deviceNum.trim();
    }

    public String getFirmName() {
        return firmName;
    }

    public void setFirmName(String firmName) {
        this.firmName = firmName == null ? null : firmName.trim();
    }

    public String getVehicleNum() {
        return vehicleNum;
    }

    public void setVehicleNum(String vehicleNum) {
        this.vehicleNum = vehicleNum == null ? null : vehicleNum.trim();
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version == null ? null : version.trim();
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getUpdateby() {
        return updateby;
    }

    public void setUpdateby(String updateby) {
        this.updateby = updateby == null ? null : updateby.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Device{" +
                "id=" + id +
                ", deviceNum=" + deviceNum +
                ", firmName=" + firmName +
                ", vehicleNum=" + vehicleNum +
                ", version=" + version +
                ", updatetime=" + updatetime +
                ", updateby=" + updateby +
                ", createtime=" + createtime +
                "}";
    }
}