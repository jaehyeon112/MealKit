package co.yedam.users.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.users.mapper.UserMapper;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;

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
	
}
