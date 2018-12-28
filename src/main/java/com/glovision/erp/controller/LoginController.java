/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import com.glovision.erp.service.userService;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author glodeveloper
 */
@Controller
public class LoginController {

    private static Logger log = Logger.getLogger(LoginController.class);

    @Autowired
    private userService userservice;

   

    // Checks if the user credentials are valid or not.
    @RequestMapping(value = "/uservalidate", method = RequestMethod.POST)
    public ModelAndView validateUsr(@RequestParam("username") String username, @RequestParam("password") String password) {
        String msg = "";
        boolean isValid = userservice.findUser(username, password);
        log.info("Is user valid?= " + isValid);

        if (isValid) {
            msg = "Welcome " + username + "!";
        } else {
            msg = "Invalid credentials";
        }

        return new ModelAndView("result", "output", msg);
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
