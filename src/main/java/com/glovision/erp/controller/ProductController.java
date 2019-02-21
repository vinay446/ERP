/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import com.glovision.erp.model.product;
import com.glovision.erp.service.productService;
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
public class ProductController {

    private static Logger log = Logger.getLogger(ProductController.class);

    @Autowired
    productService pserv;

    /*
    List all the products on load
     */
    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String product(ModelMap model) {
        log.info("Loading Products...");
        List<product> productList = pserv.listAllProducts();
        model.addAttribute("productList", productList);
        return "product";

    }

    /* Use this to retrieve the data in json format */
    @RequestMapping(value = "/listproducts/", method = RequestMethod.GET)
    public ResponseEntity<List<product>> listAllProducts() {
        List<product> productlist = pserv.listAllProducts();
        if (productlist.isEmpty()) {
            return new ResponseEntity<List<product>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<product>>(productlist, HttpStatus.OK);
    }

    /**
     * Creates new Product
     *
     * @param pt
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/createProduct", method = RequestMethod.POST)
    public @ResponseBody
    message createProduct(@RequestBody product pt, ModelMap model, HttpSession session) {

        log.info("Creating new Product ....");

        log.info("Product_CategoryId=" + pt.getCategory_ID() + "ProdName=" + pt.getProduct_Name() + "ProductDescription=" + pt.getProduct_Description() /*+ "ProductVersion=" + pt.getProduct_Version()*/);

        message msg = new message();
        if (pserv.findByProductName(pt.getProduct_Name()) != null) {
            log.warn("Product " + pt.getProduct_Name() + " already exists.. returning error...");
            msg.setMessage("Product " + pt.getProduct_Name() + " already exists..");
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
        while (pserv.findByProductID(ID) != null) {
            ID = util.generateRandomNumber();
        }

        // Set the products
        pt.setCategory_ID(pt.getCategory_ID());
        pt.setProduct_ID(ID);
        pt.setProduct_Name(pt.getProduct_Name());
        pt.setProduct_Description(pt.getProduct_Description());
//        pt.setProduct_Version(pt.getProduct_Description());
//        pt.setCreatedBy(user);
//        pt.setUpdation_Time(DateUtil.getEpoch());
//        pt.setCreation_Time(DateUtil.getEpoch());

        pserv.createProduct(pt);

        msg.setStatus(true);
        msg.setMessage("Product " + pt.getProduct_Name() + " Successfully Created...");
        log.info("New Product " + pt.getProduct_Name() + " Successfully Created...");
        return msg;
    }

}
