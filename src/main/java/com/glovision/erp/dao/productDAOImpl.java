/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.dao;

import com.glovision.erp.model.category;
import com.glovision.erp.model.product;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author glodeveloper
 */
@Repository("productDAO")
public class productDAOImpl implements productDAO {

    @Autowired
    private SessionFactory factory;

    private Session getSession() {
        return factory.getCurrentSession();
    }

    @Override
    public product findByProductID(int productID) {
        return (product) getSession().get(product.class, productID);
    }

    @Override
    public void createProduct(product p) {
        getSession().saveOrUpdate(p);
    }

    @Override
    public void deleteProduct(int productID) {
        getSession().delete(findByProductID(productID));
    }

    @Override
    public List<product> listAllProducts() {
        return (List<product>) getSession().createCriteria(product.class).list();
    }

    @Override
    public product findByProductName(String productName) {
        Criteria cr = getSession().createCriteria(product.class);
        cr.add(Restrictions.eq("product_Name", productName));
        return (product) cr.uniqueResult();
    }

    @Override
    public void deleteProducts(String categoryID) {
        Criteria cr = getSession().createCriteria(product.class);
        cr.add(Restrictions.eq("product_CategoryID", categoryID));
        List<product> products = cr.list();
        for (product p : products) {
            deleteProduct(p.getProduct_ID());
        }
    
        }

}
