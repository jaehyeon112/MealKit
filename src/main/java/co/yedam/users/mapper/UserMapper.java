package co.yedam.users.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.users.service.UserVO;

public interface UserMapper {
	public List<UserVO> selectList();
	public int insertUser(UserVO vo);
	
	public UserVO getUser(@Param("userId") String userId, @Param("userPassword") String userPassword);
}
