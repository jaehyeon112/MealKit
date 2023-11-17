package co.yedam.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartService;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class MainExe {

	public static void main(String[] args) {
		UserService svc = new UserServiceImpl();
		List<UserVO> list = svc.userList();
		System.out.println("=============");
		System.out.println("=============");
		System.out.println(list);
		System.out.println("=============");
		System.out.println("=============");
		
		SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		CartMapper mapper = session.getMapper(CartMapper.class);
		
		CartMenuJoinVO vo = mapper.joinCartMenu("12345");
		System.out.println(vo);
		
	}
}
