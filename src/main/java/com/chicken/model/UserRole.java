package com.chicken.model;

/**
 * @program: springboot_mybatis
 * @description:
 * @author: zhanglei11527
 * @create: 2018-11-30 15:13
 **/
public class UserRole {

    private Integer userId;

    private Integer roleId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
}
