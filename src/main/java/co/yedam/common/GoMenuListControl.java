package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoMenuListControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		MenuService svc = new MenuServiceImpl();
		List<MenuVO> list = svc.menuList();
		req.setAttribute("list", list);
		
		
		List<MenuVO> list2 = svc.menuList("up");
		List<MenuVO> list3 = svc.menuList("down");
		
		req.setAttribute("listUp", list2);
		req.setAttribute("listDown", list3);
		
		
		try {
			req.getRequestDispatcher("menu/menuList.tiles").forward(req, resp);

		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
