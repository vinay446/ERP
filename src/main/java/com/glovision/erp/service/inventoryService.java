/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.model.inventory;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public interface inventoryService {
    
    /**
     * Retrives inventory obj by inventoryID
     *
     * @param inventoryID
     * @return inventory obj
     */
    inventory findById(String inventoryID);

    /**
     * Creates a new inventory in database
     *
     * @param a inventory obj
     */
    void createInventory(inventory a);

    /**
     * *
     * deletes inventory from database using inventoryID
     *
     * @param inventoryID
     */
    void deleteInventory(String inventoryID);

    /**
     * List all inventories in database
     *
     * @return list of all inventories obj
     */
    List<inventory> listAllInventories();

    
}
