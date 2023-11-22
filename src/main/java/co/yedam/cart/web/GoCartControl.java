package co.yedam.cart.web;

import java.io.IOException;
import java.util.List;

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
import co.yedam.common.command;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoCartControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		Gson gson = new GsonBuilder().create();
		CartService svc = new CartServiceImpl();
		MenuService menuSvc = new MenuServiceImpl();
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		
		CartMenuJoinVO vo = svc.joinCartMenuAll(userId);
		String join = gson.toJson(vo);
		req.setAttribute("totalJson", join);
		req.setAttribute("total", vo);
		
		 List<MenuVO> menuList = menuSvc.menuList();
			String menuListJson = gson.toJson(menuList);
			System.out.println("menuList ="+menuList);
	        req.setAttribute("menuList", menuListJson);
		
		
		List<CartVO> list = svc.CartList(userId);
		for(CartVO cVO : list) {
			for(MenuVO mVO : menuList) {
				if(cVO.getMenuId() == mVO.getMenuId()) {
					cVO.setRestCount(mVO.getMenuCount());
				}
			}
		}
		
		
		String cartList = gson.toJson(list);
		req.setAttribute("listJson", cartList);
		req.setAttribute("list", list);
		
		
		
		
		
        
		
		try {
			req.getRequestDispatcher("/cartcount/cartcount.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
