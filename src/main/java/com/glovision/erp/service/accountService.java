/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.glovision.erp.service;

import com.glovision.erp.model.account;
import java.util.List;

/**
 *
 * @author glodeveloper
 */
public interface accountService {

    /**
     * Retrives account obj by accountID
     *
     * @param accountID
     * @return account obj
     */
    account findById(String accountID);

    /**
     * Creates a new account in database
     *
     * @param a account obj
     */
    void createAccount(account a);

    /**
     * *
     * deletes account from database using accountID
     *
     * @param accountID
     */
    void deleteAccount(String accountID);

    /**
     * List all accounts in database
     *
     * @return list of all account obj
     */
    List<account> listAllAccounts();
}
