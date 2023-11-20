package co.yedam.users.service;

import java.util.List;

public interface UserService {
	public List<UserVO> userList();
	public boolean insertUser(UserVO vo);
	UserVO loginCheck(String id, String pw);
	
	UserVO userId(String id);
	public boolean editUser(UserVO vo);
	public boolean delUser(String userId ,String userPassword);
}
