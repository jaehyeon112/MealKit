package co.yedam.menu.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.cart.service.CartService;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class AddCartList implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String menuId = req.getParameter("menuId");
		MenuService svc = new MenuServiceImpl();
		MenuVO vo = svc.addCart(menuId);
		
		CartService svc2 = new CartServiceImpl();
		
		
		try {
			req.getRequestDispatcher("menu/menu.tiles").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
