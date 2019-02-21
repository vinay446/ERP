/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.dao.productDAO;
import com.glovision.erp.model.product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author glodeveloper
 */
@Transactional
@Service("productService")
public class productServiceImpl implements productService {
    
    @Autowired
    productDAO product;
    
    @Override
    public product findByProductID(int productID) {
        return product.findByProductID(productID);
    }
    
    @Override
    public void createProduct(product p) {
        product.createProduct(p);
    }
    
    @Override
    public void deleteProduct(int productID) {
        product.deleteProduct(productID);
    }
    
    @Override
    public List<product> listAllProducts() {
        return product.listAllProducts();
    }
    
    @Override
    public void deleteProducts(String categoryID) {
         product.deleteProducts(categoryID);
    }
    

    @Override
    public product findByProductName(String productName) {
        return product.findByProductName(productName); //To change body of generated methods, choose Tools | Templates.
    }

}
