package com.tutorial;

import java.util.List;

import javax.sql.DataSource;

public interface UserDAO {
   /** 
    * This is the method to be used to initialize
    * database resources ie. connection.
    */
   public void setDataSource(DataSource ds);
   /** 
    * This is the method to be used to create
    * a record in the Student table.
    */
   public void create(String name,String password,String email,Integer phno);
   /** 
    * This is the method to be used to list down
    * a record from the Student table corresponding
    * to a passed student id.
    */
   public List<User> listUser();
   /** 
    * This is the method to be used to delete
    * a record from the Student table corresponding
    * to a passed student id.
    */
  
   public void update(String name);
   
   public User getUser(String name,String password);
   
   public boolean isRegistered(String name,String password);
   
   public void pushOnline(String name);
   
   public void deleteOnline(String name);
   public boolean usernameValid(String name);
   
   }