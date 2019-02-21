/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author glodeveloper
 */
@Entity
@Table(name="customers")
public class customers implements Serializable{
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)  
    @Column(name="Customer_ID")
    int Customer_ID;
      
    @Column(name="accountID")
    String accountID;
      
    @Column(name="Customer_Name")
    String Customer_Name;
      
    @Column(name="Address")
    String Address;
      
    @Column(name="City")
    String City;
      
    @Column(name="Country")
    String Country;
      
    @Column(name="Contact_Person")
    String Contact_Person;
      
    @Column(name="Phone_Number")
    String Phone_Number;
      
    @Column(name="Email")
    String Email;
      
    @Column(name="Notes")
    String Notes;
      
    @Column(name="Balance")
    double Balance;
      
    @Column(name="created_By")
    String created_By;
      
    @Column(name="created_Date")
    long created_Date;
      
    @Column(name="updated_By")
    String updated_By;
      
    @Column(name="updated_Date")
    long updated_Date;
      
    @Column(name="amount")
    long amount;
  
    @Column(name="due_Date")
    long due_Date;    

    public int getCustomer_ID() {
        return Customer_ID;
    }

    public void setCustomer_ID(int Customer_ID) {
        this.Customer_ID = Customer_ID;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getCustomer_Name() {
        return Customer_Name;
    }

    public void setCustomer_Name(String Customer_Name) {
        this.Customer_Name = Customer_Name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getContact_Person() {
        return Contact_Person;
    }

    public void setContact_Person(String Contact_Person) {
        this.Contact_Person = Contact_Person;
    }

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String Phone_Number) {
        this.Phone_Number = Phone_Number;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String Notes) {
        this.Notes = Notes;
    }

    public double getBalance() {
        return Balance;
    }

    public void setBalance(double Balance) {
        this.Balance = Balance;
    }

    public String getCreated_By() {
        return created_By;
    }

    public void setCreated_By(String created_By) {
        this.created_By = created_By;
    }

    public long getCreated_Date() {
        return created_Date;
    }

    public void setCreated_Date(long created_Date) {
        this.created_Date = created_Date;
    }

    public String getUpdated_By() {
        return updated_By;
    }

    public void setUpdated_By(String updated_By) {
        this.updated_By = updated_By;
    }

    public long getUpdated_Date() {
        return updated_Date;
    }

    public void setUpdated_Date(long updated_Date) {
        this.updated_Date = updated_Date;
    }

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public long getDue_Date() {
        return due_Date;
    }

    public void setDue_Date(long due_Date) {
        this.due_Date = due_Date;
    }
    
    
}
