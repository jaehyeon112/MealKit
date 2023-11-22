package co.yedam.cart.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		
	
		// 여기 select * 로 하니까 값을 다 가져옴..
		 List<MenuVO> menuList = menuSvc.menuList2();
		 System.out.println("여기에는 텍스트가 없어야함."+menuList);
			String menuListJson = gson.toJson(menuList);
	        req.setAttribute("menuList", menuListJson);
		
		 //
	        List<String> cartArr = new ArrayList<>();
	     //
	        
		List<CartVO> list = svc.CartList(userId);
		
		List<CartVO> newList = new ArrayList<>();
		for(CartVO cVO : list) {
			for(MenuVO mVO : menuList) {
				if(cVO.getMenuId().equals(mVO.getMenuId())) {
					cVO.setRestCount(mVO.getMenuCount());
					
					newList.add(cVO);
					if(cVO.getRestCount()>0) {
						cartArr.add(mVO.getMenuId());
					}
				}
				
			}
		}
		CartMenuJoinVO vo = new CartMenuJoinVO();
		System.out.println(cartArr);
		if(cartArr.size()==0) {
			 vo = svc.joinCartMenuAll(userId);
		}else{
			Map<String, Object> map = new HashMap<>();
			map.put("cartArr",cartArr );
			map.put("userId", userId);
			System.out.println(userId);
			System.out.println(userId);
			System.out.println(userId);
			System.out.println(userId);
			 vo = svc.joinCartMenu(map);
			System.out.println("저는 품절을 뺀 상품이에요 " + vo);
			String join = gson.toJson(vo);
			req.setAttribute("totalJson", join);
			req.setAttribute("total", vo);
			String cartList = gson.toJson(newList);
			req.setAttribute("listJson", cartList);
			req.setAttribute("list", newList);
		};
		
		
		
		
		
        
		
		try {
			req.getRequestDispatcher("/cartcount/cartcount.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
