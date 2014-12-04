/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vinhpq.dao.hibernate.imp;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vinhpq.dao.hibernate.AbstractHbnDao;
import com.vinhpq.dao.hibernate.CategoryDao;
import com.vinhpq.model.pojo.Category;

/**
 *
 * @author thanhtung
 */
@Service("CategoryDao")
@Transactional
public class CategoryDaoImp extends AbstractHbnDao<Category> implements CategoryDao{
    
}
