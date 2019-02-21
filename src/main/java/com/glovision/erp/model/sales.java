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
@Table(name = "sales")
public class sales implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "sales_ID")
    int sales_ID;

    @Column(name = "sales_Number")
    String sales_Number;
    
    @Column(name = "stock_ID")
    int stock_ID;
    
    @Column(name = "customer_ID")
    int customer_ID;
    
    @Column(name = "amount_PerUnit")
    double amount_PerUnit;
    
    @Column(name = "quantity")
    int quantity;
    
    @Column(name = "discount_Percentage")
    double discount_Percentage;
    
    @Column(name = "discount_Amount")
    double discount_Amount;
    
    @Column(name = "tax_Percentage")
    double tax_Percentage;
    
    @Column(name = "tax_Amount")
    double tax_Amount;
    
    @Column(name = "total_Amount")
    double total_Amount;
    
    @Column(name = "total_Payment")
    double total_Payment;
    
    @Column(name = "balance")
    double balance;
    
    @Column(name = "gst_Number")
    String gst_Number;
    
    @Column(name = "sales_Date")
    long sales_Date;
    
    @Column(name = "notes")
    String notes;
    
    @Column(name = "due_Date")
    long due_Date;
    
    @Column(name = "sold_By")
    int sold_By;
    
    @Column(name = "lead_By")
    int lead_By;
    
    @Column(name = "commission")
    int commission;
    
    @Column(name = "created_By")
    int created_By;
    
    @Column(name = "creation_Time")
    long creation_Time;
    
    @Column(name = "updated_By")
    int updated_By;
    
    @Column(name = "updation_Time")
    long updation_Time;

    public int getSales_ID() {
        return sales_ID;
    }

    public void setSales_ID(int sales_ID) {
        this.sales_ID = sales_ID;
    }

    public String getSales_Number() {
        return sales_Number;
    }

    public void setSales_Number(String sales_Number) {
        this.sales_Number = sales_Number;
    }

    public int getStock_ID() {
        return stock_ID;
    }

    public void setStock_ID(int stock_ID) {
        this.stock_ID = stock_ID;
    }

    public int getCustomer_ID() {
        return customer_ID;
    }

    public void setCustomer_ID(int customer_ID) {
        this.customer_ID = customer_ID;
    }

    public double getAmount_PerUnit() {
        return amount_PerUnit;
    }

    public void setAmount_PerUnit(double amount_PerUnit) {
        this.amount_PerUnit = amount_PerUnit;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getDiscount_Percentage() {
        return discount_Percentage;
    }

    public void setDiscount_Percentage(double discount_Percentage) {
        this.discount_Percentage = discount_Percentage;
    }

    public double getDiscount_Amount() {
        return discount_Amount;
    }

    public void setDiscount_Amount(double discount_Amount) {
        this.discount_Amount = discount_Amount;
    }

    public double getTax_Percentage() {
        return tax_Percentage;
    }

    public void setTax_Percentage(double tax_Percentage) {
        this.tax_Percentage = tax_Percentage;
    }

    public double getTax_Amount() {
        return tax_Amount;
    }

    public void setTax_Amount(double tax_Amount) {
        this.tax_Amount = tax_Amount;
    }

    public double getTotal_Amount() {
        return total_Amount;
    }

    public void setTotal_Amount(double total_Amount) {
        this.total_Amount = total_Amount;
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

    public String getGst_Number() {
        return gst_Number;
    }

    public void setGst_Number(String gst_Number) {
        this.gst_Number = gst_Number;
    }

    public long getSales_Date() {
        return sales_Date;
    }

    public void setSales_Date(long sales_Date) {
        this.sales_Date = sales_Date;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public long getDue_Date() {
        return due_Date;
    }

    public void setDue_Date(long due_Date) {
        this.due_Date = due_Date;
    }

    public int getSold_By() {
        return sold_By;
    }

    public void setSold_By(int sold_By) {
        this.sold_By = sold_By;
    }

    public int getLead_By() {
        return lead_By;
    }

    public void setLead_By(int lead_By) {
        this.lead_By = lead_By;
    }

    public int getCommission() {
        return commission;
    }

    public void setCommission(int commission) {
        this.commission = commission;
    }

    public int getCreated_By() {
        return created_By;
    }

    public void setCreated_By(int created_By) {
        this.created_By = created_By;
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
