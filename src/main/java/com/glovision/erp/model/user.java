/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author glodeveloper
 */
@Entity
@Table(name = "user")
public class user implements Serializable {

    @Column(name = "user_Id")
    String user_Id;

    @Column(name = "user_Role")
    String user_Role;

    @Column(name = "user_Name")
    String user_Name;
    
    @Id
    @Column(name = "user_Email")
    String user_Email;

    @Column(name = "user_password")
    String user_password;

    @Column(name = "user_creationTime")
    long user_creationTime;

    @Column(name = "user_LastLogin")
    long user_LastLogin;

    @Column(name = "user_isActive")
    String user_isActive;

    public String getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(String user_Id) {
        this.user_Id = user_Id;
    }

    public String getUser_Role() {
        return user_Role;
    }

    public void setUser_Role(String user_Role) {
        this.user_Role = user_Role;
    }

    public String getUser_Name() {
        return user_Name;
    }

    public void setUser_Name(String user_Name) {
        this.user_Name = user_Name;
    }

    public String getUser_Email() {
        return user_Email;
    }

    public void setUser_Email(String user_Email) {
        this.user_Email = user_Email;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public long getUser_creationTime() {
        return user_creationTime;
    }

    public void setUser_creationTime(long user_creationTime) {
        this.user_creationTime = user_creationTime;
    }

    public long getUser_LastLogin() {
        return user_LastLogin;
    }

    public void setUser_LastLogin(long user_LastLogin) {
        this.user_LastLogin = user_LastLogin;
    }

    public String getUser_isActive() {
        return user_isActive;
    }

    public void setUser_isActive(String user_isActive) {
        this.user_isActive = user_isActive;
    }
    
    
}
