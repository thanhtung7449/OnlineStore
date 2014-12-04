/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vinhpq.dao.hibernate.imp;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vinhpq.dao.hibernate.AbstractHbnDao;
import com.vinhpq.dao.hibernate.SupplierDao;
import com.vinhpq.model.pojo.Supplier;

/**
 *
 * @author thanhtung
 */
@Service("SupplierDao")
@Transactional
public class SupplierDaoImp extends AbstractHbnDao<Supplier> implements SupplierDao{
    
}
