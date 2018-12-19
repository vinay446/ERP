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
import com.glovision.erp.dao.categoryDAO;
import com.glovision.erp.dao.categoryDAO;
import com.glovision.erp.model.category;
import com.glovision.erp.model.category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("categoryService")
public class categoryServiceImpl implements categoryService {

    @Autowired
    private categoryDAO category;

    @Override
    public category findById(String categoryID) {
        return category.findById(categoryID);
    }

    @Override
    public void createCategory(category a) {
        category.createCategory(a);
    }

    @Override
    public void deleteCategory(String categoryID) {
        category.deleteCategory(categoryID);
    }

    @Override
    public List<category> listAllCategories() {
        return category.listCategories();
    }

}
