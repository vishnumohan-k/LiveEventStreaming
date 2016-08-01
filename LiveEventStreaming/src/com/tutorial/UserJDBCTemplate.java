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
		   String SQL = "update Connection set Status=3 where CallId = ?";
		   jdbcTemplateObject.update(SQL,id);
		   return;
	   }
	   public void clearNoti(String name)
	   {
		   String SQL = "update CallHistory a,Connection b set b.Status=3 where a.Caller2='"+name+"' and  a.CallId=b.CallId";
		   jdbcTemplateObject.update(SQL);
		   return;
	   }
	   public void clear(String name)
	   {
		   String SQL = "delete from CallHistory where Caller2 = '"+name+"' ";
		   jdbcTemplateObject.update(SQL);
		   return;
	   }
	   
	   public void deleteSingle(String id)
	   {
		   String SQL = "delete from CallHistory where CallId = '"+id+"' ";
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
		   String sql = "SELECT a.Caller1,a.Time,a.CallId,b.Status FROM CallHistory a,Connection b WHERE a.Caller2 = '"+name+"'  and a.CallId=b.CallId";
		      List<Histoty> AllHistory = jdbcTemplateObject.query(sql, new RowMapper<Histoty>(){
		      public Histoty mapRow(ResultSet rs, int rowNum) throws SQLException {
		    	  Histoty hist=new Histoty();
		    	  hist.setId(rs.getInt("CallId"));
		    	  hist.setCaller1(rs.getString("Caller1"));
		    	  hist.setDate(rs.getString("Time"));
		    	  hist.setStatus(rs.getString("Status"));
		    	 // System.out.print(hist.getStatus());
		    	  return hist;
     }
		
		      
 });

 return AllHistory;
		            
	   }
	   
	   public List<Histoty>viewOut(String name)
	   {
		   String sql = "SELECT a.Caller2,a.Time,a.CallId,b.Status FROM CallHistory a,Connection b WHERE a.Caller1 = '"+name+"'  and a.CallId=b.CallId";
		      List<Histoty> AllHistory = jdbcTemplateObject.query(sql, new RowMapper<Histoty>(){
		      public Histoty mapRow(ResultSet rs, int rowNum) throws SQLException {
		    	  Histoty hist=new Histoty();
		    	  hist.setId(rs.getInt("CallId"));
		    	  hist.setCaller2(rs.getString("Caller2"));
		    	  hist.setDate(rs.getString("Time"));
		    	  hist.setStatus(rs.getString("Status"));
		    	 // System.out.print(hist.getStatus());
		    	  return hist;
     }
		
		      
 });

 return AllHistory;
		            
	   }
	   
	   public List<Histoty> notification(String name,String date)
	   {
		   //String sql = "SELECT DISTINCT(Caller1),Time,CallId FROM CallHistory WHERE Caller2 = '"+name+"' AND Time > '"+date+"'" ;
		   String sql="SELECT DISTINCT(a.Caller1),a.Time,a.CallId FROM CallHistory a,Connection b WHERE a.Caller2 = '"+name+"' AND a.Time > '"+date+"' AND b.Status=0 AND a.CallId=b.CallId " ;
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
		      String sql = "SELECT * FROM Users where user_name != '"+name+"' AND status=1 ORDER BY user_name";
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
			      String sql = "SELECT * FROM Users where user_name != '"+name+"' AND status=0 ORDER BY user_name";
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
		      System.out.println("Updated Record with ID = " + username );
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
	   
	   public String findCaller(String id)
	   {
		   String SQL = "select Caller1 from CallHistory where CallId =? ";
		   Object[] inputs = new Object[] {id};
	        String caller = jdbcTemplateObject.queryForObject(SQL, inputs, String.class); 
		   return caller;
	   }
	   
	   public void connect(String CallID) {
		      String SQL = "insert into Connection(CallID,Status) values (?,0)";
		      
		      jdbcTemplateObject.update( SQL,CallID);
		      
		      return;
		   } 
	   
	   public boolean checkConnected(String name)
	   {
		   String sql="select a.Status from Connection a,CallHistory b where b.Caller1 ='"+name+"' and a.Status=1 and a.CallId=b.CallId";
		   List <Histoty> users = jdbcTemplateObject.query(sql, new HistoryMapper());
		   if(users.size()>0)
			   return false;
		   return true;
	   }
	   
	   public String getId(String s1,String s2,String s3)
	   {
		   String SQL = "select CallId from CallHistory where Caller1 =? and Caller2 =? and Time =? ";
		   Object[] inputs = new Object[] {s1,s2,s3};
	        String CallId = jdbcTemplateObject.queryForObject(SQL, inputs, String.class); 
		   return CallId;
	   }
	   
	   public void updateConStatus(String id)
	   {
		   String SQL = "update Connection set Status=1 where CallId =?";
		   jdbcTemplateObject.update( SQL, id);
		   return;
	   }
	   
	   public void disconnect()
	   {
		   String SQL = "update Connection set Status=4 where Status=1";
		   jdbcTemplateObject.update( SQL);
		   return;
	   }
}
