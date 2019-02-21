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
@Table(name="stock")
public class stock implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "stock_ID")
    int stock_ID;
    
    @Column(name = "supplier_ID")
    int supplier_ID;
    
    @Column(name = "Category_ID")
    int Category_ID;
    
    @Column(name = "product_ID")
    int product_ID;
    
    @Column(name = "Purchasing_Price")
    double Purchasing_Price;
    
    @Column(name = "Selling_Price")
    double Selling_Price;
    
    @Column(name = "tax_Percentage")
    double tax_Percentage;
    
    @Column(name = "Notes")
    String Notes;
    
    @Column(name = "Quantity")
    int Quantity;
    
    @Column(name = "Date_Added")
    long Date_Added;
    
    @Column(name = "Added_By")
    String Added_By;
    
    @Column(name = "Date_Updated")
    long Date_Updated;
    
    @Column(name = "Updated_By")
    String Updated_By;

    public int getStock_ID() {
        return stock_ID;
    }

    public void setStock_ID(int stock_ID) {
        this.stock_ID = stock_ID;
    }

    public int getSupplier_ID() {
        return supplier_ID;
    }

    public void setSupplier_ID(int supplier_ID) {
        this.supplier_ID = supplier_ID;
    }

    public int getCategory_ID() {
        return Category_ID;
    }

    public void setCategory_ID(int Category_ID) {
        this.Category_ID = Category_ID;
    }

    public int getProduct_ID() {
        return product_ID;
    }

    public void setProduct_ID(int product_ID) {
        this.product_ID = product_ID;
    }

    public double getPurchasing_Price() {
        return Purchasing_Price;
    }

    public void setPurchasing_Price(double Purchasing_Price) {
        this.Purchasing_Price = Purchasing_Price;
    }

    public double getSelling_Price() {
        return Selling_Price;
    }

    public void setSelling_Price(double Selling_Price) {
        this.Selling_Price = Selling_Price;
    }

    public double getTax_Percentage() {
        return tax_Percentage;
    }

    public void setTax_Percentage(double tax_Percentage) {
        this.tax_Percentage = tax_Percentage;
    }

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String Notes) {
        this.Notes = Notes;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public long getDate_Added() {
        return Date_Added;
    }

    public void setDate_Added(long Date_Added) {
        this.Date_Added = Date_Added;
    }

    public String getAdded_By() {
        return Added_By;
    }

    public void setAdded_By(String Added_By) {
        this.Added_By = Added_By;
    }

    public long getDate_Updated() {
        return Date_Updated;
    }

    public void setDate_Updated(long Date_Updated) {
        this.Date_Updated = Date_Updated;
    }

    public String getUpdated_By() {
        return Updated_By;
    }

    public void setUpdated_By(String Updated_By) {
        this.Updated_By = Updated_By;
    }
    
    
}
