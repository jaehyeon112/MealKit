package co.yedam.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class MainExe {

	public static void main(String[] args) {
		CartService svc = new CartServiceImpl();
		CartVO vo = svc.cartOne(53);
		System.out.println(vo);
	}
}
