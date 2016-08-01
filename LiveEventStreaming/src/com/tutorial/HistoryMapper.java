package com.tutorial;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class HistoryMapper implements RowMapper<Histoty> 
{
   public Histoty mapRow(ResultSet rs, int rowNum) throws SQLException 
   {
      Histoty user = new Histoty();
      user.setStatus(rs.getString("Status"));
      
      return user;
   }
}