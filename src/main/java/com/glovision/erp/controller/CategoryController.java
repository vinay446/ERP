/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import com.glovision.erp.model.category;
import com.glovision.erp.model.product;
import com.glovision.erp.service.categoryService;
import com.glovision.erp.util.DateUtil;
import com.glovision.erp.util.message;
import com.glovision.erp.util.util;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author glodeveloper
 */
@Controller
public class CategoryController {

    private static Logger log = Logger.getLogger(CategoryController.class);

    @Autowired
    categoryService cserv;

    /**
     * Category page controller
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String category(ModelMap model) {
        log.info("Loading Categories...");
        List<category> categoryList = cserv.listAllCategories();
        model.addAttribute("categoryList", categoryList);
        return "category";
    }

    /* Use this to retrieve the categories data in json format */
    @RequestMapping(value = "/listcategories/", method = RequestMethod.GET)
    public ResponseEntity<List<category>> listAllCategories() {
        List<category> categoryList = cserv.listAllCategories();
        if (categoryList.isEmpty()) {
            return new ResponseEntity<List<category>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<category>>(categoryList, HttpStatus.OK);
    }

    /**
     * Creates new Category
     *
     * @param ct
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/createCategory", method = RequestMethod.POST)
    public @ResponseBody
    message createCategory(@RequestBody category ct, ModelMap model, HttpSession session) {
        log.info("Creating new Product Category....");
        message msg = new message();
        if (cserv.findByCategoryName(ct.getCategory_Name()) != null) {
            log.warn("Category " + ct.getCategory_Name() + " already exists.. returning error...");
            msg.setMessage("Category " + ct.getCategory_Name() + " already exists..");
            msg.setStatus(false);
            return msg;
        }
        String user = (String) session.getAttribute("emailID");
        if (user == null) {
            log.warn("Session Timeout, Please login to continue... returning error....");
            msg.setMessage("Session Timeout, Please login to continue");
            msg.setStatus(false);
            return msg;
        }
        int ID = util.generateRandomNumber();
        while (cserv.findById(ID + "") != null) {
            ID = util.generateRandomNumber();
        }
        ct.setCategory_Id(ID + "");
        ct.setCategory_createdBy(user);
        ct.setCategory_UpdationTime(DateUtil.getEpoch());
        ct.setCategory_creationTime(DateUtil.getEpoch());
        cserv.createCategory(ct);
        msg.setStatus(true);
        msg.setMessage("Category " + ct.getCategory_Name() + " Successfully Created...");
        log.info("New Category " + ct.getCategory_Name() + " Successfully Created...");
        return msg;
    }
}
