package com.training.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.training.entity.*;

public class ValidateMember {
	private Connection con;

	public ValidateMember() {
		super();
		// TODO Auto-generated constructor stub
		con = SqlConnection.getOracleConnection();
	}
	
	public boolean Validate(Member mem){
		String sql = "SELECT * FROM member WHERE username=? AND password=?";
		boolean check = false;
		try{
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem.getUserName());
			pstmt.setString(2, mem.getPassWord());
			ResultSet rs = pstmt.executeQuery();
			check = rs.next();
		} catch (Exception e){
			e.printStackTrace();
		}
		return check;
	}
	
}
