/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package springwebproject_eshopping_convertdb;

import dao.CategoryDao;
import dao.CustomerDao;
import dao.ProductDao;
import java.util.List;
import pojo.Category;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pojo.Customer;
import pojo.Product;

/**
 *
 * @author thanhtung
 */
public class SpringWebProject_EShopping_convertDB {

    public static void category(ApplicationContext appCtx) {
        CategoryDao cs = (CategoryDao) appCtx.getBean("CategoryDao");
        List<Category> list = cs.getAll();
        for (Category category : list) {
            System.out.println(category.getName());
        }
    }

    public static void customer(ApplicationContext appCtx) {
        CustomerDao cs = (CustomerDao) appCtx.getBean("CustomerDao");
        List<Customer> list = cs.getAll();
        for (Customer category : list) {
            System.out.println(category.getFullname());
        }
    }
    
    public static void product(ApplicationContext appCtx) {
        ProductDao cs = (ProductDao) appCtx.getBean("ProductDao");
        List<Product> list = cs.getAll();
        for (Product category : list) {
            System.out.println(category.getName());
        }
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ApplicationContext appCtx = new ClassPathXmlApplicationContext("resource/beans-service.xml");
        //customer(appCtx);
        product(appCtx);
    }
}
