package co.yedam.cart.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class HowManyControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		Gson gson = new GsonBuilder().create();
		String userId = req.getParameter("userId");
		MenuService menuSvc = new MenuServiceImpl();
		List<MenuVO> vo = menuSvc.menuList();
		
		CartService cartSvc = new CartServiceImpl();
		List<CartVO> vo2 = cartSvc.CartList(userId);
		
		for(MenuVO a : vo) {
			
			
		}
		
		
		
		
	}

}
