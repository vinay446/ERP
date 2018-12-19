/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.dao.userDAO;
import com.glovision.erp.model.user;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author glodeveloper
 */
@Transactional
@Service("userServiceImpl")
public class userServiceImpl implements userService {

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

}
