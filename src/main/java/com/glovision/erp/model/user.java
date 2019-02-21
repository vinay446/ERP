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
@Table(name="user")
public class user implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_ID")
    int user_ID;
    
    @Column(name = "user_Role")
    int user_Role;
    
    @Column(name = "user_Name")
    String user_Name;
    
    @Column(name = "user_Email")
    String user_Email;
    
    @Column(name = "user_Password")
    String user_Password;
    
    @Column(name = "user_CreationTime")
    long user_CreationTime;
    
    @Column(name = "user_LastLogin")
    long user_LastLogin;
    
    @Column(name = "user_isActive")
    String user_isActive;
    
    @Column(name = "user_accountID")
    String user_accountID;
    
    @Column(name = "preferredLang")
    String preferredLang;
    
    @Column(name = "reportsTo")
    int reportsTo;

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public int getUser_Role() {
        return user_Role;
    }

    public void setUser_Role(int user_Role) {
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

    public String getUser_Password() {
        return user_Password;
    }

    public void setUser_Password(String user_Password) {
        this.user_Password = user_Password;
    }

    public long getUser_CreationTime() {
        return user_CreationTime;
    }

    public void setUser_CreationTime(long user_CreationTime) {
        this.user_CreationTime = user_CreationTime;
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

    public String getUser_accountID() {
        return user_accountID;
    }

    public void setUser_accountID(String user_accountID) {
        this.user_accountID = user_accountID;
    }

    public String getPreferredLang() {
        return preferredLang;
    }

    public void setPreferredLang(String preferredLang) {
        this.preferredLang = preferredLang;
    }

    public int getReportsTo() {
        return reportsTo;
    }

    public void setReportsTo(int reportsTo) {
        this.reportsTo = reportsTo;
    }
    
}
