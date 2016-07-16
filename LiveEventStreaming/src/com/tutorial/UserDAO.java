package com.tutorial;

import java.util.List;

import javax.sql.DataSource;

public interface UserDAO {

   public void setDataSource(DataSource ds);
   public void clear(String name);
   public void clearSingle(String id);
   public void create(String name,String password,String email,Long phno,String date);

   public List<User> listUser(String name);
   public List<User> listOnline(String name) ;
   public List<User> listOffline(String name) ;
   
   public List<User> viewProfile(String name);
   
   public List<User> editProfile(String name);
  
   public void update(String passord,String email,Long no,String username);
   
   public User getUser(String name,String password);
   
   public boolean isRegistered(String name,String password);
   
   public void pushOnline(String name);
   
   public void deleteOnline(String name);
   public boolean usernameValid(String name);
   public boolean userValid(String name,String password);
   public void updateLoginTime(String name,String date);
   
   public void sendRequest(String caller1,String caller2,String date);
   
   public List<Histoty>notification(String name,String date);
   
   public String returnDate(String name);
   
   }