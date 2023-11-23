package co.yedam.users.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.users.mapper.UserMapper;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.service.userOrderVO;

public class UserServiceImpl implements UserService {
	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);
	
	@Override
	public List<UserVO> userList() {
		return mapper.selectList();
	}
	@Override
	public boolean insertUser(UserVO vo) {
		return mapper.insertUser(vo) == 1;
	}
	@Override
	public UserVO loginCheck(String id, String pw) {
		return mapper.getUser(id, pw);
	}
	@Override
	public UserVO userId(String id) {
		return mapper.userId(id);
	}
	@Override
	public UserVO userPassword(String password) {
		return mapper.userPassword(password);
	}
	@Override
	public boolean editUser(UserVO vo) {
		return mapper.editUser(vo) == 1 ;
	}
	@Override
	public boolean delUser(String userId, String userPassword) {
		return mapper.delUser(userId, userPassword);
	}
	@Override
	public UserVO idCheck(String userName, String userPhone) {
		return mapper.getId(userName, userPhone);
	}
	@Override
	public UserVO pwCheck(String userId, String userPhone) {
		return mapper.getPw(userId, userPhone);
	}
	@Override
	public List<userOrderVO> userOrderList(String userId) {
		return mapper.getOrder(userId);
	}
}
