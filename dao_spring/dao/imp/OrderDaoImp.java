/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.imp;

import pojo.Order;
import dao.OrderDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author thanhtung
 */
@Service("OrderDao")
@Transactional
public class OrderDaoImp extends AbstractHbnDao<Order> implements OrderDao{
    
}
