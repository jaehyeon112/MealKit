package co.yedam.users.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.users.service.UserVO;

public interface UserMapper {
	public List<UserVO> selectList();
	public int insertUser(UserVO vo);
	
	public UserVO getUser(@Param("userId") String userId, @Param("userPassword") String userPassword);
	public UserVO userId(String id);
	public UserVO userPassword(String password);
	
	public int editUser(UserVO vo);
	public boolean delUser(@Param("userId") String userId, @Param("userPassword") String userPassword);

	public UserVO getId(@Param("userName") String userName, @Param("userPhone") String userPhone);
	public UserVO getPw(@Param("userId") String userId, @Param("userPhone") String userPhone);
}
