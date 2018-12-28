/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.dao.userDAO;
import com.glovision.erp.model.user;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author glodeveloper
 */
@Transactional
@Service("userServiceImpl")
public class userServiceImpl implements userService {

    private HibernateTemplate hibernateTemplate;

    private static Logger log = Logger.getLogger(userServiceImpl.class);
    @Autowired
    private userDAO user;

    @Override
    public user findByEmailID(String emailID) {
        return user.findByEmailID(emailID);
    }

    @Override
    public void SaveUser(user u) {
        user.SaveUser(u);
    }

    @Override
    public void deleteUser(String emailID) {
        user.deleteUser(emailID);
    }

    @Override
    public List<user> listAllUsers() {
        return user.listAllUsers();
    }

    //Check the user exists or not
    @SuppressWarnings({"unchecked", "deprecation"})
    public boolean findUser(String uname, String upwd) {
        log.info("Checking the user in the database");
        boolean isValidUser = false;
        String sqlQuery = "from user where user_Name=? and user_password=?";
        try {
            List userObj = (List) hibernateTemplate.find(sqlQuery, uname, upwd);
            if (userObj != null && userObj.size() > 0) {
                //  log.info("Id= " + userObj.get(0).() + ", Name= " + userObj.get(0).getName() + ", Password= " + userObj.get(0).getPassword());
                isValidUser = true;
            }
        } catch (Exception e) {
            isValidUser = false;
            log.error("An error occurred while fetching the user details from the database", e);
        }
        return isValidUser;
    }

    @Override
    public boolean isUseremailIDUnique(String emailID) {
        // TODO Auto-generated method stub
        user u = user.findByEmailID(emailID);
        return u == null;
    }

    @Override
    public user getUserByID(int userID) {
        return user.getUserByID(userID);
    }
}
