/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.model.product;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public interface productService {

    /**
     * Retreives product by productID
     *
     * @param productID
     * @return product obj
     */
    product findByProductID(String productID);

    /**
     * Creates a new product in database
     *
     * @param p product obj
     */
    void createProduct(product p);

    /**
     * deletes a product from database
     *
     * @param productID
     */
    void deleteProduct(String productID);

    /**
     * Lists all products from database
     *
     * @return list of product obj
     */
    List<product> listAllProducts();

    /**
     * Delete all products from given category
     *
     * @param categoryID
     */
    void deleteProducts(String categoryID);
}
