/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
