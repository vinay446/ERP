/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import com.glovision.erp.model.category;
import com.glovision.erp.service.categoryService;
import com.glovision.erp.util.DateUtil;
import com.glovision.erp.util.message;
import com.glovision.erp.util.util;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
            model.addAttribute("msg", msg.getMessage());
            return msg;
        }
        String user = (String) session.getAttribute("emailID");
        if (!util.SessionCheck(session)) {
            log.warn("Session Timeout, Please login to continue... returning error....");
            msg.setMessage("Session Timeout, Please login to continue");
            msg.setStatus(false);
            model.addAttribute("msg", msg.getMessage());
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
        model.addAttribute("msg", msg.getMessage());
        log.info("New Category " + ct.getCategory_Name() + " Successfully Created...");
        return msg;
    }

    /**
     * deletes a category from database...
     *
     * @param model
     * @param category_Id
     * @param session
     * @return
     */
    @RequestMapping(value = "/deleteCategory/{category_Id}", method = RequestMethod.GET)
    public String deleteCategory(ModelMap model, @PathVariable String category_Id, HttpSession session) {
        log.warn("Deleting Category " + category_Id + " from database...");
        if (!util.SessionCheck(session)) {
            model.addAttribute("msg", "Session Timeout, Please login to continue...");
            log.warn("Session Timeout, Please login to continue... returning error....");
            return "redirect:/category";
        }
        if (cserv.findById(category_Id) == null) {
            log.warn("category does not exist..");
            model.addAttribute("msg", "category does not exist..");
            return "redirect:/category";
        }
        cserv.deleteCategory(category_Id);
        model.addAttribute("msg", "Category " + category_Id + " Deleted Successfully..");
        return "redirect:/category";
    }

    /**
     * Edits category model in database
     * @param model
     * @param session
     * @param category_Id
     * @param category_Name
     * @param category_Description
     * @param category_creationTime
     * @param category_createdBy
     * @param category_UpdationTime
     * @return 
     */
    @RequestMapping(value = "/editCategory", method = RequestMethod.POST)
    public @ResponseBody
    String editCategory(ModelMap model, HttpSession session, @RequestParam("category_Id") String category_Id,
            @RequestParam("category_Name") String category_Name, @RequestParam("category_Description") String category_Description,
            @RequestParam("category_creationTime") String category_creationTime, @RequestParam("category_createdBy") String category_createdBy,
            @RequestParam("category_UpdationTime") String category_UpdationTime) {
        log.info("Edit category " + category_Id);
        if (!util.SessionCheck(session)) {
            log.warn(" returning error....");
            return "Session Timeout, Please login to continue...";
        }
        String user = (String) session.getAttribute("emailID");
        category cat = new category();
        cat.setCategory_Id(category_Id);
        cat.setCategory_Description(category_Description);
        cat.setCategory_Name(category_Name);
        cat.setCategory_createdBy(category_createdBy);
        cat.setCategory_creationTime(Long.parseLong(category_creationTime));
        cat.setCategory_UpdationTime(DateUtil.getEpoch());
        cat.setCategory_createdBy(user);
        cserv.createCategory(cat);
        return "Updated Successfully....";
    }
}
