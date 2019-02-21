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

/**
 *
 * @author glodeveloper
 */
@Entity 
public class purchase implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "purchase_ID")
    int purchase_ID;
    
    @Column(name = "purchase_Number")
    String purchase_Number;
    
    @Column(name = "stock_ID")
    int stock_ID;
    
    @Column(name = "supplier_ID")
    int supplier_ID;
    
    @Column(name = "category_ID")
    int category_ID;
    
    @Column(name = "product_ID")
    int product_ID;
    
    @Column(name = "quantity")
    int quantity;
    
    @Column(name = "purchasing_Price")
    double purchasing_Price;
    
    @Column(name = "total_Price")
    double total_Price;
    
    @Column(name = "total_Payment")
    double total_Payment;
    
    @Column(name = "balance")
    double balance;
    
    @Column(name = "Notes")
    String Notes;
    
    @Column(name = "purchased_By")
    int purchased_By;
    
    @Column(name = "transaction_Date")
    long transaction_Date;
    
    @Column(name = "dueDate")
    long dueDate;

    public int getPurchase_ID() {
        return purchase_ID;
    }

    public void setPurchase_ID(int purchase_ID) {
        this.purchase_ID = purchase_ID;
    }

    public String getPurchase_Number() {
        return purchase_Number;
    }

    public void setPurchase_Number(String purchase_Number) {
        this.purchase_Number = purchase_Number;
    }

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

    public double getPurchasing_Price() {
        return purchasing_Price;
    }

    public void setPurchasing_Price(double purchasing_Price) {
        this.purchasing_Price = purchasing_Price;
    }

    public double getTotal_Price() {
        return total_Price;
    }

    public void setTotal_Price(double total_Price) {
        this.total_Price = total_Price;
    }

    public double getTotal_Payment() {
        return total_Payment;
    }

    public void setTotal_Payment(double total_Payment) {
        this.total_Payment = total_Payment;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String Notes) {
        this.Notes = Notes;
    }

    public int getPurchased_By() {
        return purchased_By;
    }

    public void setPurchased_By(int purchased_By) {
        this.purchased_By = purchased_By;
    }

    public long getTransaction_Date() {
        return transaction_Date;
    }

    public void setTransaction_Date(long transaction_Date) {
        this.transaction_Date = transaction_Date;
    }

    public long getDueDate() {
        return dueDate;
    }

    public void setDueDate(long dueDate) {
        this.dueDate = dueDate;
    }
    
    
}
