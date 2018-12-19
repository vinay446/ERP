/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.model;

/**
 *
 * @author glodeveloper
 */
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "inventory")
public class inventory {
    
    //Set the column names as set in the DB table

    //If it is Primary key define as below ie.,@Id
    @Id
    @Column(name = "inventory_Id")
    int inventory_Id;
    
    @Column(name="inventory_Name")
    String inventory_Name;
    
    @Column(name="inventory_Description")
    String inventory_Description;
    
    @Column(name="inventory_CategoryID")
    String inventory_CategoryID;
    
    @Column(name="inventory_ProductID")
    String inventory_ProductID;
    
    @Column(name="inventory_CreationTime")
    String inventory_CreationTime;
    
    @Column(name="inventory_CreatedBy")
    String inventory_CreatedBy;
    
    @Column(name="inventory_Account")
    String inventory_Account;
    
    @Column(name="inventory_UniqueKey")
    String inventory_UniqueKey;
    
    @Column(name="inventory_Name")
    String inventory_Holder;

    public int getInventory_Id() {
        return inventory_Id;
    }

    public void setInventory_Id(int inventory_Id) {
        this.inventory_Id = inventory_Id;
    }

    public String getInventory_Name() {
        return inventory_Name;
    }

    public void setInventory_Name(String inventory_Name) {
        this.inventory_Name = inventory_Name;
    }

    public String getInventory_Description() {
        return inventory_Description;
    }

    public void setInventory_Description(String inventory_Description) {
        this.inventory_Description = inventory_Description;
    }

    public String getInventory_CategoryID() {
        return inventory_CategoryID;
    }

    public void setInventory_CategoryID(String inventory_CategoryID) {
        this.inventory_CategoryID = inventory_CategoryID;
    }

    public String getInventory_ProductID() {
        return inventory_ProductID;
    }

    public void setInventory_ProductID(String inventory_ProductID) {
        this.inventory_ProductID = inventory_ProductID;
    }

    public String getInventory_CreationTime() {
        return inventory_CreationTime;
    }

    public void setInventory_CreationTime(String inventory_CreationTime) {
        this.inventory_CreationTime = inventory_CreationTime;
    }

    public String getInventory_CreatedBy() {
        return inventory_CreatedBy;
    }

    public void setInventory_CreatedBy(String inventory_CreatedBy) {
        this.inventory_CreatedBy = inventory_CreatedBy;
    }

    public String getInventory_Account() {
        return inventory_Account;
    }

    public void setInventory_Account(String inventory_Account) {
        this.inventory_Account = inventory_Account;
    }

    public String getInventory_UniqueKey() {
        return inventory_UniqueKey;
    }

    public void setInventory_UniqueKey(String inventory_UniqueKey) {
        this.inventory_UniqueKey = inventory_UniqueKey;
    }

    public String getInventory_Holder() {
        return inventory_Holder;
    }

    public void setInventory_Holder(String inventory_Holder) {
        this.inventory_Holder = inventory_Holder;
    }
    
    
    
    
    

}
