/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vinhpq.dao.hibernate.imp;

import com.vinhpq.dao.hibernate.AbstractHbnDao;
import com.vinhpq.dao.hibernate.AccountDao;
import com.vinhpq.model.pojo.Account;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author thanhtung
 */
@Service("AccountDao")
@Transactional
public class AccountDaoImp extends AbstractHbnDao<Account> implements AccountDao{
    
}
