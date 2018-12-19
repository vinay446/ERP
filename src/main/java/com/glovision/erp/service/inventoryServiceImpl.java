/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

/**
 *
 * @author glodeveloper
 */
import com.glovision.erp.dao.inventoryDAO;
import com.glovision.erp.dao.inventoryDAO;
import com.glovision.erp.model.inventory;
import com.glovision.erp.model.inventory;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("inventoryService")
public class inventoryServiceImpl implements inventoryService {

    @Autowired
    private inventoryDAO inventory;

    @Override
    public inventory findById(String inventoryID) {
        return inventory.findById(inventoryID);
    }

    @Override
    public void createInventory(inventory a) {
        inventory.createInventory(a);
    }

    @Override
    public void deleteInventory(String inventoryID) {
        inventory.deleteInventory(inventoryID);
    }

    @Override
    public List<inventory> listAllInventories() {
        return inventory.listInventories();
    }

}
