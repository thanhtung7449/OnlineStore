/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.imp;

import pojo.Category;
import dao.CategoryDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author thanhtung
 */
@Service("CategoryDao")
@Transactional
public class CategoryDaoImp extends AbstractHbnDao<Category> implements CategoryDao{
    
}
