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
@Table(name = "category")
public class category implements Serializable{
    
    //Set the column names as set in the DB table

    //If it is Primary key define as below ie.,@Id
    @Id
    @Column(name = "category_Id")
    String category_Id;

    @Column(name = "category_Name")
    String category_Name;

    @Column(name = "category_Description")
    String category_Description;

    @Column(name = "category_creationTime")
    long category_creationTime;

    @Column(name = "category_createdBy")
    String category_createdBy;

    @Column(name = "category_UpdationTime")
    long category_UpdationTime;

    public String getCategory_Id() {
        return category_Id;
    }

    public void setCategory_Id(String category_Id) {
        this.category_Id = category_Id;
    }

    public String getCategory_Name() {
        return category_Name;
    }

    public void setCategory_Name(String category_Name) {
        this.category_Name = category_Name;
    }

    public String getCategory_Description() {
        return category_Description;
    }

    public void setCategory_Description(String category_Description) {
        this.category_Description = category_Description;
    }

    public long getCategory_creationTime() {
        return category_creationTime;
    }

    public void setCategory_creationTime(long category_creationTime) {
        this.category_creationTime = category_creationTime;
    }

    public String getCategory_createdBy() {
        return category_createdBy;
    }

    public void setCategory_createdBy(String category_createdBy) {
        this.category_createdBy = category_createdBy;
    }

    public long getCategory_UpdationTime() {
        return category_UpdationTime;
    }

    public void setCategory_UpdationTime(long category_UpdationTime) {
        this.category_UpdationTime = category_UpdationTime;
    }

}
