/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.dao;

import com.glovision.erp.model.account;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author glodeveloper
 */
@Repository("accountDAO")
public class accountDAOImpl implements accountDAO {

    @Autowired
    private SessionFactory factory;

    private Session getSession() {
        return factory.getCurrentSession();
    }

    @Override
    public account findById(String accountID) {
        return (account) getSession().get(account.class, accountID);
    }

    @Override
    public void createAccount(account a) {
        getSession().saveOrUpdate(a);
    }

    @Override
    public void deleteAccount(String accountID) {
        getSession().delete(findById(accountID));
    }

    @Override
    public List<account> listAllAccounts() {
        return (List<account>) getSession().createCriteria(account.class).list();
    }

}
