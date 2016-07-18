package com.tutorial;

import java.util.List;

import javax.sql.DataSource;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserJDBCTemplate implements UserDAO {
	   private DataSource dataSource;
	   private JdbcTemplate jdbcTemplateObject;
	   
	   public List<User> listSearch(String search, String user){
	    	
		      String sql = "SELECT * FROM Users where user_name != '"+user+"' AND user_name LIKE '"+search+"%'";
		      System.out.println(sql);
		      List<User> searchRslt = jdbcTemplateObject.query(sql, new RowMapper<User>(){
		    	  public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		    		  User user = new User();
		    		  user.setName(rs.getString("user_name"));
		    		  return user;
		    		  }
		      	});
		return searchRslt;
	    }
	   public void clearSingle(String id)
	   {
		   String SQL = "delete from CallHistory where CallId = ?";
		   jdbcTemplateObject.update(SQL,id);
		   return;
	   }
	   public void clear(String name)
	   {
		   String SQL = "delete from CallHistory where Caller2 = '"+name+"' ";
		   jdbcTemplateObject.update(SQL);
		   return;
	   }
	   public String returnDate(String name)
	   {
		    String SQL = "select LastLogin from Users where user_name = ?";
		    Object[] inputs = new Object[] {name};
	        String date = jdbcTemplateObject.queryForObject(SQL, inputs, String.class);        
		   return date;
	   }
	   
	   public List<Histoty>viewAll(String name)
	   {
		   String sql = "SELECT Caller1,Time,CallId FROM CallHistory WHERE Caller2 = '"+name+"'" ;
		      List<Histoty> AllHistory = jdbcTemplateObject.query(sql, new RowMapper<Histoty>(){
		      public Histoty mapRow(ResultSet rs, int rowNum) throws SQLException {
		    	  Histoty hist=new Histoty();
		    	  hist.setId(rs.getInt("CallId"));
		    	  hist.setCaller1(rs.getString("Caller1"));
		    	  hist.setDate(rs.getString("Time"));
		    	  return hist;
     }
		
		      
 });

 return AllHistory;
		            
	   }
	   
	   public List<Histoty> notification(String name,String date)
	   {
		   String sql = "SELECT DISTINCT(Caller1),Time,CallId FROM CallHistory WHERE Caller2 = '"+name+"' AND Time > '"+date+"'" ;
		      List<Histoty> callHistory = jdbcTemplateObject.query(sql, new RowMapper<Histoty>(){
		      public Histoty mapRow(ResultSet rs, int rowNum) throws SQLException {
		    	  Histoty hist=new Histoty();
		    	  hist.setId(rs.getInt("CallId"));
		    	  hist.setCaller1(rs.getString("Caller1"));
		    	  hist.setDate(rs.getString("Time"));
		    	  return hist;
     }
		
		      
 });

 return callHistory;
		            
	   }
	   
	   public void sendRequest(String caller1,String caller2,String date)
	   {
		      String SQL = "insert into CallHistory (Caller1,Caller2,Time) values (?,?,?)";
		      
		      jdbcTemplateObject.update( SQL, caller1,caller2,date);
		      return;
	   }
	   public void setDataSource(DataSource dataSource) {
		      this.dataSource = dataSource;
		      this.jdbcTemplateObject = new JdbcTemplate(dataSource);
		   }
	   
	   public void updateLoginTime(String date,String name)
	   {
		   String sql = "UPDATE Users SET LastLogin = ? WHERE user_name=?";
		   jdbcTemplateObject.update( sql,date,name);
		   return;
	   }
	   
	   public List<User> viewProfile(String name) 
	   {
		      String sql = "SELECT * FROM Users where user_name = '"+name+"'";
		      List<User> listProfile = jdbcTemplateObject.query(sql, new RowMapper<User>(){
		      public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
 
      user.setName(rs.getString("user_name"));
    user.setPassword(rs.getString("password"));
      user.setEmail(rs.getString("email"));
      user.setNumber(rs.getLong("phno"));
      user.setDate(rs.getString("LastLogin"));
      return user;
        }
		
		      
    });
 
    return listProfile;
		            
	   }
	     
	   public List<User> editProfile(String name)
	   {
		   String sql = "SELECT * FROM Users where user_name = '"+name+"'";
		      List<User> editProfile = jdbcTemplateObject.query(sql, new RowMapper<User>(){
		      public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		    	  User user = new User();

		    	  user.setName(rs.getString("user_name"));
		    	  user.setPassword(rs.getString("password"));
		    	  user.setEmail(rs.getString("email"));
		    	  user.setNumber(rs.getLong("phno"));
		    	  user.setDate(rs.getString("LastLogin"));
		    	  return user;
     }

 });

 return editProfile;
	   }
	   
	   
	   public void create(String name,String password,String email,Long no,String date) {
		      String SQL = "insert into Users (user_name,password,email,phno,LastLogin,status) values (?,?,?,?,?,1)";
		      
		      jdbcTemplateObject.update( SQL, name,password,email,no,date);
		      //System.out.println("Created Record Name = " + name );
		      return;
		   } 
	   

	   public User getUser(String name,String password) {
	      String SQL = "select * from Users where user_name = '?' and password='?";
	      User user = jdbcTemplateObject.queryForObject(SQL, 
	                        new Object[]{name}, new UserMapper());
	      return user;
	   }
	     
	    public List<User> listUser(String name) 
	   {
		      String sql = "SELECT * FROM online where Username != '"+name+"'";
		      List<User> listContact = jdbcTemplateObject.query(sql, new RowMapper<User>(){
		      public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
 
      user.setName(rs.getString("Username"));
      return user;
        }
 
    });
 
    return listContact;
		            
	   }
	   
	    public List<User> listOnline(String name) 
	   {
		      String sql = "SELECT * FROM Users where user_name != '"+name+"' AND status=1";
		      List<User> listOnline = jdbcTemplateObject.query(sql, new RowMapper<User>(){
		      public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
 
      user.setName(rs.getString("user_name"));
      return user;
        }
 
    });
 
    return listOnline;
		            
	   }
	    
	    public List<User> listOffline(String name) 
		   {
			      String sql = "SELECT * FROM Users where user_name != '"+name+"' AND status=0";
			      List<User> listOffline = jdbcTemplateObject.query(sql, new RowMapper<User>(){
			      public User mapRow(ResultSet rs, int rowNum) throws SQLException {
	            User user = new User();
	 
	      user.setName(rs.getString("user_name"));
	      return user;
	        }
	 
	    });
	 
	    return listOffline;
			            
		   }
		     
	     
	   public void deleteOnline(String name){
	   	      //System.out.print("inside ");

		      String SQL = "delete from online where Username = '"+name+"'";
	   	     // System.out.print(SQL);
		      String SQL1 = "update Users set status=0 where user_name= ?";
		      jdbcTemplateObject.update(SQL1, name );

		      jdbcTemplateObject.update(SQL);
		      //System.out.println("Deleted Record with ID = " + id );
		      return;
		   }
	   
	   public void update(String passord,String email,Long no,String username){
		      String SQL = "update Users set password=?,email=?,phno=? where user_name= ?";
		      jdbcTemplateObject.update(SQL,  passord,email,no,username);
		      //System.out.println("Updated Record with ID = " + id );
		      return;
		   }
	   
	   public boolean isRegistered(String name,String password)
	   {	
		   
		      String SQL = "select * from Users where user_name ='"+name+"' and password = '"+password+"'";
		      List <User> users = jdbcTemplateObject.query(SQL, 
                      new UserMapper());
		      if(users.size()>0)
		    	  return true;
		      return false;
	   }
	   
	   public void pushOnline(String name)
	   {
		
		  // String SQL = "insert into online (Username) values (?)";
		   String SQL1 = "update Users set status=1 where user_name= ?";

		  // jdbcTemplateObject.update( SQL, name);
		   jdbcTemplateObject.update( SQL1, name);
		   return;
	   }
	   
	   public boolean usernameValid(String name){
		   String SQL = "select * from Users where user_name ='"+name+"'";
		   List <User> users = jdbcTemplateObject.query(SQL, new UserMapper());
		   if(users.size()>0)
			   return false;
		   return true;
	   }
	   
	   public boolean userValid(String name,String password){
		   String SQL = "select * from Users where user_name ='"+name+"' AND password ='"+password+"'";
		   List <User> users = jdbcTemplateObject.query(SQL, new UserMapper());
		   if(users.size()>0)
			   return false;
		   return true;
	   }
}
