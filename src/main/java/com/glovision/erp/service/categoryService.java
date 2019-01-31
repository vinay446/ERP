/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.model.category;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public interface categoryService {
    
    /**
     * Retrives category obj by categoryID
     *
     * @param categoryID
     * @return category obj
     */
    category findById(String categoryID);

    /**
     * Creates a new category in database
     *
     * @param a category obj
     */
    void createCategory(category a);

    /**
     * *
     * deletes category from database using categoryID
     *
     * @param categoryID
     */
    void deleteCategory(String categoryID);

    /**
     * List all categories in database
     *
     * @return list of all categories obj
     */
    List<category> listAllCategories();

    /**
     * find Object by Name
     * @param categoryName
     * @return 
     */
    category findByCategoryName(String categoryName);
}
