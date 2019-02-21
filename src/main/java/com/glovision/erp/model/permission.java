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
@Table(name = "permission")
public class permission implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "permission_ID")
    int permission_ID;
    
    @Column(name="permission_Name")
    String permission_Name;

    public int getPermission_ID() {
        return permission_ID;
    }

    public void setPermission_ID(int permission_ID) {
        this.permission_ID = permission_ID;
    }

    public String getPermission_Name() {
        return permission_Name;
    }

    public void setPermission_Name(String permission_Name) {
        this.permission_Name = permission_Name;
    }

    
}
