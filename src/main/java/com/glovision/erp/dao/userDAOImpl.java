/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.dao;

import com.glovision.erp.model.user;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author glodeveloper
 */
@Repository("userDAO")
public class userDAOImpl implements userDAO{

    @Autowired
    private SessionFactory factory;
    
    private Session getSession(){
        return factory.getCurrentSession();
    }
    
    @Override
    public user findByEmailID(String emailID) {
        return (user) getSession().get(user.class, emailID);
    }

    @Override
    public void SaveUser(user user) {
        getSession().save(user);
    }

    @Override
    public void deleteUser(String emailID) {
        getSession().delete(findByEmailID(emailID));
    }

    @Override
    public List<user> listAllUsers() {
        return (List<user>) getSession().createCriteria(user.class).list();
    }

    @Override
    public user getUserByID(int userID) {
        Criteria cr = getSession().createCriteria(user.class);
        cr.add(Restrictions.eq("user_Id", userID));
        return (user) cr.uniqueResult();
    }
    
}
