package edu.spring.team4.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.spring.team4.domain.User;

@Mapper
public interface UserMapper {

	
	String SIGN_UP = 
			"INSERT INTO ${TABLE_USERS} (${COL_USERID}, ${COL_PWD}, ${COL_EMAIL}) "
			+ "VALUES (#{userid}, #{pwd}, #{email})";
	
	@Insert(SIGN_UP)
	int insert(User user);
	
	
	String CHECK_USER_ID = 
			"SELECT * FROM ${TABLE_USERS} WHERE ${COL_USERID} = #{userid}";
	
	@Select(CHECK_USER_ID)
	User selectByUserId(String userid);
	
	String CHECK_SIGN_IN = 
			"SELECT * FROM ${TABLE_USERS} WHERE ${COL_USERID} = #{userid} AND ${COL_PWD} = #{pwd}";
	
	@Select(CHECK_SIGN_IN)
	User selectByIdAndPwd(User user);
}