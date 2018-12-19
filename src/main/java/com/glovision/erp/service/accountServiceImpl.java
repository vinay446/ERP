/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.dao.accountDAO;
import com.glovision.erp.model.account;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author glodeveloper
 */
@Transactional
@Service("accountService")
public class accountServiceImpl implements accountService{

    @Autowired
    private accountDAO account;
    
    @Override
    public account findById(String accountID) {
        return account.findById(accountID);
    }

    @Override
    public void createAccount(account a) {
        account.createAccount(a);
    }

    @Override
    public void deleteAccount(String accountID) {
        account.deleteAccount(accountID);
    }

    @Override
    public List<account> listAllAccounts() {
        return account.listAllAccounts();
    }
    
}
