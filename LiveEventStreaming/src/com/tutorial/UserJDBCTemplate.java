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
	   
	   public void setDataSource(DataSource dataSource) {
		      this.dataSource = dataSource;
		      this.jdbcTemplateObject = new JdbcTemplate(dataSource);
		   }
	   
	   public void create(String name,String password,String email,Integer no) {
		      String SQL = "insert into Users (user_name,password,email,phno) values (?,?,?,?)";
		      
		      jdbcTemplateObject.update( SQL, name,password,email,no);
		      //System.out.println("Created Record Name = " + name );
		      return;
		   } 
	   

	   public User getUser(String name,String password) {
	      String SQL = "select * from Users where user_name = '?' and password='?";
	      User user = jdbcTemplateObject.queryForObject(SQL, 
	                        new Object[]{name}, new UserMapper());
	      return user;
	   }
	   
	/*   public List<User> listUser() 
	   {
		      String sql = "SELECT * FROM Users";
		      List<User> listContact = jdbcTemplateObject.query(sql, new RowMapper<User>(){
		      public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
 
      user.setName(rs.getString("user_name"));
      user.setPassword(rs.getString("password"));
      user.setEmail(rs.getString("email"));
      user.setNumber(rs.getInt("phno"));
      return user;
        }
 
    });
 
    return listContact;
		            
	   }
	*/   
	    public List<User> listUser(String name) 
	   {
		      String sql = "SELECT * FROM online where Username != '"+name+"'";
		      List<User> listContact = jdbcTemplateObject.query(sql, new RowMapper<User>(){
		      public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
 
      user.setName(rs.getString("Username"));
    /*  user.setPassword(rs.getString("password"));
      user.setEmail(rs.getString("email"));
      user.setNumber(rs.getInt("phno"));*/
      return user;
        }
 
    });
 
    return listContact;
		            
	   }
	     
	   public void deleteOnline(String name){
	   	      System.out.print("inside ");

		      String SQL = "delete from online where Username = '"+name+"'";
	   	      System.out.print(SQL);

		      jdbcTemplateObject.update(SQL);
		      //System.out.println("Deleted Record with ID = " + id );
		      return;
		   }
	   
	   public void update(String name){
		      String SQL = "update Student set name = '?' where name = '?'";
		      jdbcTemplateObject.update(SQL, name , name);
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
		
		   String SQL = "insert into online (Username) values (?)";
		   jdbcTemplateObject.update( SQL, name);
		   return;
	   }
	   
	   public boolean usernameValid(String name){
		   String SQL = "select * from Users where user_name ='"+name+"'";
		   List <User> users = jdbcTemplateObject.query(SQL, new UserMapper());
		   if(users.size()>0)
			   return false;
		   return true;
	   }
	   
}
