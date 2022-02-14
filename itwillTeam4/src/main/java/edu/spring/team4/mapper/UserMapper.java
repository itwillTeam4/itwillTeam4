package edu.spring.team4.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.spring.team4.domain.User;

@Mapper
public interface UserMapper {

	
	String SIGN_UP = 
			"INSERT INTO ${TABLE_USERS} (${COL_USER_ID}, ${COL_USER_PWD}, ${COL_USER_NN}, ${COL_USER_NAME}, ${COL_USER_PHONE}) "
			+ "VALUES (#{user_id}, #{user_pwd}, #{user_nn}, #{user_name}, #{user_phone})";
	
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