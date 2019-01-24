/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import com.glovision.erp.model.login;
import com.glovision.erp.model.user;
import com.glovision.erp.service.userService;
import com.glovision.erp.util.message;
import com.glovision.erp.util.util;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author glodeveloper
 */
@Controller
public class LoginController {

    private static Logger log = Logger.getLogger(LoginController.class);

    @Autowired
    private userService userservice; // This will auto-inject the user service into the controller.

    // Checks if the user credentials are valid or not.
    @RequestMapping(value = "/uservalidate", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody message validateUsr(@RequestBody user us,HttpSession httpSession) {
        System.out.println("tesdfdfdft");
        
        

        System.out.println(us.getUser_Email()+ " " + us.getUser_password());
        //String msg = "";
        message ms = new message();
        
        user u = userservice.findByEmailID(us.getUser_Email());
        if(u == null)
        {
        ms.setMessage("Entered emailID doesn't exists");
        log.info("Entered emailID doesn't exists");
        ms.setStatus(false);
        return ms;
        }
        
        //check user activation link
        if(!u.getUser_isActive().equals("true"))
        {
        log.info("User has not activated the registration link");
            ms.setStatus(false);
            ms.setMessage("User has not activated the registration link");
            return ms;
            
        }
            
        //Check with the encryption password
        if(util.encryptString(us.getUser_password()).equals(u.getUser_password()))
        {
        
           log.info("Success");
            ms.setStatus(true);
           //set the http session
            httpSession.setAttribute("emailID",us.getUser_Email());
            return ms;
        
        }
        else{
             log.info("failed to login");
            ms.setMessage("Password not matched");
            ms.setStatus(false);
            return ms;
        }
        
        
       
    }
    
    
   

    /**
     * saves username and password in cookies
     *
     * @param response
     * @param emailID
     * @param password
     */
    private void savecookies(HttpServletResponse response, String emailID, String password) {
        Cookie c1 = new Cookie("emailID", emailID);
        Cookie c2 = new Cookie("password", password);
        c1.setMaxAge(60 * 60 * 24 * 365 * 10);
        c2.setMaxAge(60 * 60 * 24 * 365 * 10);
        response.addCookie(c1);
        response.addCookie(c2);
    }
}
