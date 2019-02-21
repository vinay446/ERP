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
@Table(name="suppliers")
public class suppliers implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Supplier_ID")
    int Supplier_ID;
    
    @Column(name = "Supplier_Name")
    String Supplier_Name;
    
    @Column(name = "Address")
    String Address;
    
    @Column(name = "City")
    String City;
    
    @Column(name = "Country")
    String Country;
    
    @Column(name = "Contact_Person")
    String Contact_Person;
    
    @Column(name = "Phone_Number")
    String Phone_Number;
    
    @Column(name = "Email")
    String Email;
    
    @Column(name = "Notes")
    String Notes;
    
    @Column(name = "Balance")
    double Balance;
    
    @Column(name = "Date_Added")
    long Date_Added;
    
    @Column(name = "Added_By")
    String Added_By;
    
    @Column(name = "Date_Updated")
    long Date_Updated;
    
    @Column(name = "Updated_By")
    String Updated_By;

    public int getSupplier_ID() {
        return Supplier_ID;
    }

    public void setSupplier_ID(int Supplier_ID) {
        this.Supplier_ID = Supplier_ID;
    }

    public String getSupplier_Name() {
        return Supplier_Name;
    }

    public void setSupplier_Name(String Supplier_Name) {
        this.Supplier_Name = Supplier_Name;
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
