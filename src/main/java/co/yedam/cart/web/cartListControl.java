package co.yedam.cart.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

public class cartListControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		Gson gson = new GsonBuilder().create();
		String cartNum = req.getParameter("cartNum");
		String check = req.getParameter("check");
		System.out.println(cartNum);
		CartService svc = new CartServiceImpl();
		CartVO vo = svc.cartOne(Integer.parseInt(cartNum));
		if(check.equals("true")) {
			vo = svc.updateCartList(vo,Integer.parseInt(cartNum),true);
		}else {
			vo = svc.updateCartList(vo,Integer.parseInt(cartNum),false);
		}
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		
		
		//여길 수정..
		List<String> cartArr = new ArrayList<>();
		MenuService menuSvc = new MenuServiceImpl();
		 List<MenuVO> menuList = menuSvc.menuList();
		List<CartVO> list = svc.CartList(userId);
		List<CartVO> newList = new ArrayList<>();
		for(CartVO cVO : list) {
			for(MenuVO mVO : menuList) {
				if(cVO.getMenuId().equals(mVO.getMenuId())) {
					cVO.setRestCount(mVO.getMenuCount());
					newList.add(cVO);
					System.out.println(cVO);
					if(cVO.getRestCount()>0) {
						cartArr.add(mVO.getMenuId());
					}
				}
			}
		}
		Map<String, Object> map2 = new HashMap<>();
		map2.put("cartArr",cartArr );
		map2.put("userId", userId);
		CartMenuJoinVO vo2 = svc.joinCartMenu(map2);
		
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("cart", vo);
		map.put("total", vo2);
		
		 resp.setContentType("application/json");
		    resp.setCharacterEncoding("UTF-8");
			try {
				resp.getWriter().write(gson.toJson(map));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
	}

