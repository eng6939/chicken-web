package com.chicken.model;

/**
 * @program:
 * @description:
 * @author: zhanglei
 * @create: 2018-11-29 18:53
 **/
public class RolePermission {

    private Integer permissionId;

    private Integer roleId;

    public Integer getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Integer permissionId) {
        this.permissionId = permissionId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
}
