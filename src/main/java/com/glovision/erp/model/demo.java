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
@Table(name = "demo")
public class demo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "demo_ID")
    int demo_ID;
    
    @Column(name = "category_ID")
    int category_ID;
    
    @Column(name = "product_ID")
    int product_ID;
    
    @Column(name = "quantity")
    int quantity;
    
    @Column(name = "customer_ID")
    int customer_ID;
    
    @Column(name = "date")
    long date;
    
    @Column(name = "expire_Date")
    long expire_Date;
    
    @Column(name = "expected_Purchase")
    int expected_Purchase;
    
    @Column(name = "lead_By")
    int lead_By;
    
    @Column(name = "sale_By")
    int sale_By;
    
    @Column(name = "created_By")
    int created_By;
    
    @Column(name = "updated_By")
    int updated_By;
    
    @Column(name = "creation_Time")
    long creation_Time;
    
    @Column(name = "updation_Time")
    long updation_Time;

    public int getDemo_ID() {
        return demo_ID;
    }

    public void setDemo_ID(int demo_ID) {
        this.demo_ID = demo_ID;
    }

    public int getCategory_ID() {
        return category_ID;
    }

    public void setCategory_ID(int category_ID) {
        this.category_ID = category_ID;
    }

    public int getProduct_ID() {
        return product_ID;
    }

    public void setProduct_ID(int product_ID) {
        this.product_ID = product_ID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCustomer_ID() {
        return customer_ID;
    }

    public void setCustomer_ID(int customer_ID) {
        this.customer_ID = customer_ID;
    }

    public long getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = date;
    }

    public long getExpire_Date() {
        return expire_Date;
    }

    public void setExpire_Date(long expire_Date) {
        this.expire_Date = expire_Date;
    }

    public int getExpected_Purchase() {
        return expected_Purchase;
    }

    public void setExpected_Purchase(int expected_Purchase) {
        this.expected_Purchase = expected_Purchase;
    }

    public int getLead_By() {
        return lead_By;
    }

    public void setLead_By(int lead_By) {
        this.lead_By = lead_By;
    }

    public int getSale_By() {
        return sale_By;
    }

    public void setSale_By(int sale_By) {
        this.sale_By = sale_By;
    }

    public int getCreated_By() {
        return created_By;
    }

    public void setCreated_By(int created_By) {
        this.created_By = created_By;
    }

    public int getUpdated_By() {
        return updated_By;
    }

    public void setUpdated_By(int updated_By) {
        this.updated_By = updated_By;
    }

    public long getCreation_Time() {
        return creation_Time;
    }

    public void setCreation_Time(long creation_Time) {
        this.creation_Time = creation_Time;
    }

    public long getUpdation_Time() {
        return updation_Time;
    }

    public void setUpdation_Time(long updation_Time) {
        this.updation_Time = updation_Time;
    }
        
    
}
