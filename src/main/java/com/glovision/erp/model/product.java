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
@Table(name = "product")
public class product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_ID")
    int product_ID;

    @Column(name = "category_ID")
    int category_ID;

    @Column(name = "permission_ID")
    int supplier_ID;

    @Column(name = "product_Name")
    String product_Name;

    @Column(name = "product_Description")
    String product_Description;

    @Column(name = "createdBy")
    int createdBy;

    @Column(name = "creation_Time")
    long creation_Time;

    @Column(name = "updated_By")
    int updated_By;

    @Column(name = "updation_Time")
    long updation_Time;

    public int getProduct_ID() {
        return product_ID;
    }

    public void setProduct_ID(int product_ID) {
        this.product_ID = product_ID;
    }

    public int getCategory_ID() {
        return category_ID;
    }

    public void setCategory_ID(int category_ID) {
        this.category_ID = category_ID;
    }

    public int getSupplier_ID() {
        return supplier_ID;
    }

    public void setSupplier_ID(int supplier_ID) {
        this.supplier_ID = supplier_ID;
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

    public int getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(int createdBy) {
        this.createdBy = createdBy;
    }

    public long getCreation_Time() {
        return creation_Time;
    }

    public void setCreation_Time(long creation_Time) {
        this.creation_Time = creation_Time;
    }

    public int getUpdated_By() {
        return updated_By;
    }

    public void setUpdated_By(int updated_By) {
        this.updated_By = updated_By;
    }

    public long getUpdation_Time() {
        return updation_Time;
    }

    public void setUpdation_Time(long updation_Time) {
        this.updation_Time = updation_Time;
    }

}
