/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.dao;

import com.glovision.erp.model.inventory;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author glodeveloper
 */
@Repository("inventoryDAO")

public class inventoryDAOImpl implements inventoryDAO {

    @Autowired
    private SessionFactory factory;

    private Session getSession() {
        return factory.getCurrentSession();
    }

    @Override
    public inventory findById(String inventoryID) {
        return (inventory) getSession().get(inventory.class, inventoryID);
    }

    @Override
    public void createInventory(inventory a) {
        getSession().saveOrUpdate(a);
    }

    @Override
    public void deleteInventory(String inventoryID) {
        getSession().delete(findById(inventoryID));
    }

    @Override
    public List<inventory> listInventories() {
        return (List<inventory>) getSession().createCriteria(inventory.class).list();
    }

}
