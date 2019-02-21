/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author glodeveloper
 */
@Entity
@Table(name = "user_Permission")
public class user_Permission implements Serializable {

    @Column(name = "user_ID")
    int user_ID;

    @Column(name = "role_ID")
    int role_ID;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "permission_ID")
    int permission_ID;

    @Column(name = "createdBy")
    String createdBy;

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public int getRole_ID() {
        return role_ID;
    }

    public void setRole_ID(int role_ID) {
        this.role_ID = role_ID;
    }

    public int getPermission_ID() {
        return permission_ID;
    }

    public void setPermission_ID(int permission_ID) {
        this.permission_ID = permission_ID;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    

}
