package co.yedam.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
<<<<<<< HEAD
import co.yedam.menu.mapper.MenuMapper;
=======
import co.yedam.cart.serviceImpl.CartServiceImpl;
>>>>>>> 43e4ef8bdd37278cb587424d9925a7f05da94823
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class MainExe {

	public static void main(String[] args) {
//		MenuService svc = new MenuServiceImpl();
//		MenuVO vo = svc.addCart("P001");
//		System.out.println(vo);
//		CartVO vo2 = new CartVO();
//		vo2.setMenuId(vo.getMenuId());
//		vo2.setMenuName(vo.getMenuName());
//		vo2.setUserId("kjh3005");
//		vo2.setMenuImage1(vo.getMenuImage1());
//		vo2.setMenuPrice(vo.getMenuPrice());
//		System.out.println(vo2);
		
		SqlSession se = DataSourceMybatis.getInstance().openSession(true);
		MenuMapper mapper = se.getMapper(MenuMapper.class);
		System.out.println(mapper.deleteMenu("1"));
		CartService svc = new CartServiceImpl();
		CartVO vo = svc.cartOne(53);
		System.out.println(vo);
	}
}
