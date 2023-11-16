package co.yedam.common;

import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class MainExe {

	public static void main(String[] args) {

		MenuService svc = new MenuServiceImpl();
		MenuVO vo = svc.addCart("P001");
		System.out.println(vo);
		CartVO vo2 = new CartVO();
		vo2.setMenuId(vo.getMenuId());
		vo2.setMenuImage1(vo.getMenuImage1());
		vo2.setMenuName(vo.getMenuName());
		CartService svc2 = new CartServiceImpl();
		System.out.println(svc2.addCartList(vo2));
	}
}
