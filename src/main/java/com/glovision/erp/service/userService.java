/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.model.user;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public interface userService {

    /**
     * Retrevs User Obj by emailID
     *
     * @param emailID
     * @return User Obj
     */
    user findByEmailID(String emailID);

    /**
     * Saves given obj to database
     *
     * @param user
     */
    void SaveUser(user user);

    /**
     * Deletes User Obj for given emailID
     *
     * @param emailID
     */
    void deleteUser(String emailID);

    /**
     * Retirves all Users
     *
     * @return list of all user obj
     */
    List<user> listAllUsers();
    
    
    boolean findUser(String username,String password);
    
    
}
