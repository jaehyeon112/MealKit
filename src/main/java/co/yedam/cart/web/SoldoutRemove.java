package co.yedam.cart.web;

import java.io.IOException;
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

public class SoldoutRemove implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		String userId = (String)session.getAttribute("userId");
		
		CartService cSvc = new CartServiceImpl();
		List<CartVO> cvo = cSvc.CartList(userId);
		
		MenuService mSvc = new MenuServiceImpl();
		List<MenuVO> mvo = mSvc.menuList2();
		
		int count = 0;
		for(CartVO vo : cvo) {
			for(MenuVO vo2 : mvo) {
				if(vo.getMenuId().equals(vo2.getMenuId())&& vo2.getMenuCount() < 1 ) {
					cSvc.removeCart(""+vo.getCartNum(), userId);
					count++;
				}
			}
		} 
		Map<String, Object> map = new HashMap<>();
		if(count>0) {
			map.put("retCode", "OK");
		}else{
			map.put("retCode", "NG");
		}
			
		Gson gson = new GsonBuilder().create();
		
		try {
			resp.getWriter().print(gson.toJson(map));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
	}

}
