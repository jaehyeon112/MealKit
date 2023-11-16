package co.yedam.common;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class MainExe {

	public static void main(String[] args) {
		CartService svc = new CartServiceImpl();
		Integer a = svc.checkCartList("112");
		System.out.println(a);
	}
}
