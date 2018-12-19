/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.dao;

import com.glovision.erp.model.category;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author glodeveloper
 */
@Repository("categoryDAO")

public class categoryDAOImpl implements categoryDAO {

    @Autowired
    private SessionFactory factory;

    private Session getSession() {
        return factory.getCurrentSession();
    }

    @Override
    public category findById(String categoryID) {
        return (category) getSession().get(category.class, categoryID);
    }

    @Override
    public void createCategory(category a) {
        getSession().saveOrUpdate(a);
    }

    @Override
    public void deleteCategory(String categoryID) {
        getSession().delete(findById(categoryID));
    }

    @Override
    public List<category> listCategories() {
        return (List<category>) getSession().createCriteria(category.class).list();
    }

}
