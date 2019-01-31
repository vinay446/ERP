/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import com.glovision.erp.model.user;
import com.glovision.erp.service.userService;
import com.glovision.erp.util.DateUtil;
import com.glovision.erp.util.SendMail;
import com.glovision.erp.util.message;
import com.glovision.erp.util.util;
import java.net.URLEncoder;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Controller class for user obj
 *
 * @author glodeveloper
 */
@Controller
public class UserController {

    private static Logger log = Logger.getLogger(UserController.class);

    @Autowired
    userService service;

    /***
     * Adds User to database
     * @param u
     * @return 
     */
    @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
    public @ResponseBody
    message registerUser(@RequestBody user u) {
        message m = new message();
        try {
            log.info("registering user.. " + u.getUser_Name());
            if (!service.isUseremailIDUnique(u.getUser_Email())) {
                log.error("EmailID already Exists");
                m.setMessage("EmailID already exists,Please enter another emailID or click forgot password");
                m.setStatus(false);
                return m;
            }
            int userID = util.generateRandomNumber();
            while (service.getUserByID(userID) != null) {
                userID = util.generateRandomNumber();
            }
            u.setUser_Id(userID);
            u.setUser_Role("user");
            u.setUser_LastLogin(0);
            u.setUser_creationTime(DateUtil.getEpoch());
            u.setUser_isActive("false");
            u.setUser_password(util.encryptString(u.getUser_password()));
            service.SaveUser(u);
            String verifycode = util.encryptString(u.getUser_Email().trim());
            String link = "localhost:8084/erp/activateaccount?ID=" + u.getUser_Id() + "&code=" + URLEncoder.encode(verifycode);
            SendMail se = new SendMail(u.getUser_Email(), "welocme@glovision.co", "WELCOME", u.getUser_Name(), link);
            se.start();
            Thread.sleep(3000);
            m.setMessage("User Registration success, Activation link sent to email");
            m.setStatus(false);
            return m;
        } catch (Exception e) {
            e.printStackTrace();
            log.error("Error in registering user " + e.getMessage());
            m.setMessage("Error in registering user. Please Try again..");
            m.setStatus(false);
            return m;
        }
    }
    
     /**
     * Activate User Account by validating verification code sent to email link
     *
     * @param model
     * @param userID
     * @param emailID
     * @param enc encrypted verification code
     * @return
     */
    @RequestMapping(value = "/activateaccount", method = RequestMethod.GET)
    public String activateaccount(ModelMap model, @RequestParam("ID") int userID, @RequestParam("code") String enc) {
        log.info("activateaccountclicked " + userID);
        String verifycode = util.decyptString(enc);
        user u = service.getUserByID(userID);
        if (u == null) {
            log.info("Invalid request");
            model.addAttribute("message", "Invalid request");
            return "activateaccount";
        }
        if (!verifycode.equals(u.getUser_Email())) {
            log.info("Invalid link Please click on correct link..");
            model.addAttribute("message", "Invalid link Please click on correct link..");
            return "activateaccount";
        }
        if (u.getUser_isActive().equalsIgnoreCase("true")) {
            log.info("account alreay activated");
            model.addAttribute("message", "Link is invalid account is already activated..");
            return "activateaccount";
        }
        u.setUser_isActive("true");
        service.SaveUser(u);
        log.info("account successfully activated..");
        model.addAttribute("message", "Account Succesfully activated you can login to your account");
        return "activateaccount";
    }

}
