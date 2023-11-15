package co.yedam.menu.web;

import java.util.HashMap;
import java.util.Map;

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

public class AddCartList implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String menuId = req.getParameter("menuId");
		System.out.println("이거 받아지나?" + menuId);
		MenuService svc = new MenuServiceImpl();
		MenuVO vo = svc.addCart(menuId);
		CartVO vo2 = new CartVO();
		vo2.setMenuId(vo.getMenuId());
		vo2.setMenuName(vo.getMenuName());
		vo2.setUserId(menuId);
		vo2.setMenuImage1(vo.getMenuImage1());
		CartService svc2 = new CartServiceImpl();
		svc2.addCartList(vo2);

		Gson gson = new GsonBuilder().create();

		resp.setContentType("application/json; charset=UTF-8");
		try {
			resp.getWriter().print(gson.toJson(vo2));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
