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
@Table(name = "product")
public class product implements Serializable {

    @Id
    @Column(name = "product_ID")
    String product_ID;
    
    @Column(name = "product_Name")
    String product_Name;
    
    @Column(name = "product_Description")
    String product_Description;
    
    @Column(name = "product_CreatedBy")
    String product_CreatedBy;
    
    @Column(name = "product_CreationTime")
    long product_CreationTime;
    
    @Column(name = "product_UpdationTime")
    long product_UpdationTime;
    
    @Column(name = "product_Version")
    String product_Version;
    
    @Column(name = "product_CategoryID")
    String product_CategoryID;

    public String getProduct_ID() {
        return product_ID;
    }

    public void setProduct_ID(String product_ID) {
        this.product_ID = product_ID;
    }

    public String getProduct_Name() {
        return product_Name;
    }

    public void setProduct_Name(String product_Name) {
        this.product_Name = product_Name;
    }

    public String getProduct_Description() {
        return product_Description;
    }

    public void setProduct_Description(String product_Description) {
        this.product_Description = product_Description;
    }

    public String getProduct_CreatedBy() {
        return product_CreatedBy;
    }

    public void setProduct_CreatedBy(String product_CreatedBy) {
        this.product_CreatedBy = product_CreatedBy;
    }

    public long getProduct_CreationTime() {
        return product_CreationTime;
    }

    public void setProduct_CreationTime(long product_CreationTime) {
        this.product_CreationTime = product_CreationTime;
    }

    public long getProduct_UpdationTime() {
        return product_UpdationTime;
    }

    public void setProduct_UpdationTime(long product_UpdationTime) {
        this.product_UpdationTime = product_UpdationTime;
    }

    public String getProduct_Version() {
        return product_Version;
    }

    public void setProduct_Version(String product_Version) {
        this.product_Version = product_Version;
    }

    public String getProduct_CategoryID() {
        return product_CategoryID;
    }

    public void setProduct_CategoryID(String product_CategoryID) {
        this.product_CategoryID = product_CategoryID;
    }
    
    
}
