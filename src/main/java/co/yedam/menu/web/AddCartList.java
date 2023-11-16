package co.yedam.menu.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		if(userId!=null) {
			System.out.println("user아이디 떠라!!!!!!!!"+userId);
		}else {
			userId = "비회원";
		}
		
		
		
		String menuId = req.getParameter("menuId");
		
		MenuService svc = new MenuServiceImpl();
		MenuVO vo = svc.addCart(menuId);
		CartVO vo2 = new CartVO();
		vo2.setMenuId(vo.getMenuId());
		vo2.setMenuName(vo.getMenuName());
		vo2.setUserId(menuId);
		vo2.setMenuImage1(vo.getMenuImage1());
		vo2.setUserId(userId);
		CartService svc2 = new CartServiceImpl();
		
		
		Map<String, Object> map = new HashMap<>();
		
		List<CartVO> checkCart = svc2.CartList(userId);
		for(CartVO test : checkCart) {
				if(!test.getMenuId().equals(vo2.getMenuId())) {
				//map.put	
				}
					
				
		}
		
		
		svc2.addCartList(vo2);
		int cartAmounts = svc2.checkCartList(userId);
		Gson gson = new GsonBuilder().create();

		resp.setContentType("application/json; charset=UTF-8");
		try {
			resp.getWriter().print(gson.toJson(cartAmounts));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
