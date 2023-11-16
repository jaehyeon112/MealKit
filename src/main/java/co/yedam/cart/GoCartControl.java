package co.yedam.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoCartControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		CartService svc = new CartServiceImpl();
		MenuService menuSvc = new MenuServiceImpl();
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		List<CartVO> list = svc.CartList(userId);
		List<MenuVO> menuList = menuSvc.menuList();
		req.setAttribute("menuList", menuList);
		System.out.println(menuList);
		req.setAttribute("list", list);
		
		
		try {
			req.getRequestDispatcher("/cartcount/cartcount.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
