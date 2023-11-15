package co.yedam.common;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.users.mapper.UserMapper;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;


public class MainExe {


	public static void main(String[] args) {

		UserService svc = new UserServiceImpl();
		List<UserVO> list = svc.userList();
		System.out.println(list);
	}
}
	

