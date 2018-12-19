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
@Table(name="account")
public class account implements Serializable{
    
    @Id
    @Column(name="account_Id")
    String account_Id;
    
    @Column(name="account_Name")
    String account_Name;
    
    @Column(name="account_Description")
    String account_Description;
    
    @Column(name="account_CreationTime")
    long account_CreationTime;
    
    @Column(name="account_CreatedBy")
    String account_CreatedBy;
    
    @Column(name="account_manager")
    String account_manager;
    
    @Column(name="account_Contact")
    String account_Contact;
    
    @Column(name="account_Email")
    String account_Email;
    
    @Column(name="account_UpdationTime")
    long account_UpdationTime;

    public String getAccount_Id() {
        return account_Id;
    }

    public void setAccount_Id(String account_Id) {
        this.account_Id = account_Id;
    }

    public String getAccount_Name() {
        return account_Name;
    }

    public void setAccount_Name(String account_Name) {
        this.account_Name = account_Name;
    }

    public String getAccount_Description() {
        return account_Description;
    }

    public void setAccount_Description(String account_Description) {
        this.account_Description = account_Description;
    }

    public long getAccount_CreationTime() {
        return account_CreationTime;
    }

    public void setAccount_CreationTime(long account_CreationTime) {
        this.account_CreationTime = account_CreationTime;
    }

    public String getAccount_CreatedBy() {
        return account_CreatedBy;
    }

    public void setAccount_CreatedBy(String account_CreatedBy) {
        this.account_CreatedBy = account_CreatedBy;
    }

    public String getAccount_manager() {
        return account_manager;
    }

    public void setAccount_manager(String account_manager) {
        this.account_manager = account_manager;
    }

    public String getAccount_Contact() {
        return account_Contact;
    }

    public void setAccount_Contact(String account_Contact) {
        this.account_Contact = account_Contact;
    }

    public String getAccount_Email() {
        return account_Email;
    }

    public void setAccount_Email(String account_Email) {
        this.account_Email = account_Email;
    }

    public long getAccount_UpdationTime() {
        return account_UpdationTime;
    }

    public void setAccount_UpdationTime(long account_UpdationTime) {
        this.account_UpdationTime = account_UpdationTime;
    }
    
    
}
