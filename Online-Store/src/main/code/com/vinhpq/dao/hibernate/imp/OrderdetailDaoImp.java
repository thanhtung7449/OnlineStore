/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vinhpq.dao.hibernate.imp;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vinhpq.dao.hibernate.AbstractHbnDao;
import com.vinhpq.dao.hibernate.OrderdetailDao;
import com.vinhpq.model.pojo.Orderdetail;

/**
 *
 * @author thanhtung
 */
@Service("OrderdetailDao")
@Transactional
public class OrderdetailDaoImp extends AbstractHbnDao<Orderdetail> implements OrderdetailDao{
    
}
