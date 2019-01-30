/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author glodeveloper
 */
@Controller
public class CommonController {
    
    private static Logger log = Logger.getLogger(CommonController.class);
    
    /**
     * * Request from web.xml if 404 (page not found) Exception raises
     *
     * @param model
     * @return to custom 404 page other than apache
     */
    @RequestMapping(value = "/404")
    public String error404(ModelMap model) {        
        log.warn("User requested a resource which is not available");
        return "404";
    }

    /**
     * * Request from web.xml if 500 (Internal Server Error) Exception raises
     *
     * @param model
     * @return to custom 404 page other than apache
     */
    @RequestMapping(value = "/500")
    public String error500(ModelMap model) {        
        log.fatal("Un handled internal server error occured..");
        return "500";
    }
    
    /**
     * Registration Page redirection
     * @param model
     * @return 
     */
    @RequestMapping(value="/register" , method= RequestMethod.GET)
    public String registrationpage(ModelMap model){
        return "Register";
    }
    
    /**
     * Home page redirection
     * @param model
     * @return 
     */
    @RequestMapping(value="/home",method=RequestMethod.GET)
    public String homePage(ModelMap model){
        return "home";
    }
    
    /***
     * logout request handler
     * @param model
     * @param request
     * @return 
     */
    @RequestMapping(value="/logout",method=RequestMethod.GET)
    public String logout(ModelMap model,HttpServletRequest request){
        log.info("Log out request");
        HttpSession session = request.getSession();
        if(session.getAttribute("emailID")==null){
            log.warn("INVALID LOG OUT REQUEST...");
            return "redirect:/?msg=INVALID REQUEST";
        }
        session.invalidate();
        return "redirect:/?msg=successfully loged out";
    }
    
    /**
     * Category page controller
     * @param model
     * @return 
     */
    @RequestMapping(value="/category",method=RequestMethod.GET)
    public String category(ModelMap model){
        return "category";
    }
}
