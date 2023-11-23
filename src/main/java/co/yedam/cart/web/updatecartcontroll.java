package co.yedam.cart.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
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

public class updatecartcontroll implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		CartService csvc = new CartServiceImpl();
		MenuService msvc = new MenuServiceImpl();
		Gson gson = new GsonBuilder().create();
		String arr = req.getParameter("arr");
		if(arr.length()==0) {
			
			CartMenuJoinVO vo = csvc.joinCartMenuAll(userId);
			vo.setDelivery(4000);
			vo.setPrice(0);
			vo.setPriceOff(0);
			vo.setTotal(0);
			try {
				resp.getWriter().write(gson.toJson(vo));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		String arr1[] = arr.split(",");
		
		List<String> cartArr = Arrays.asList(arr1); // 체크가 된 값
		
		List<String> cartArr2 = new ArrayList<>();
		
		List<CartVO> clist = csvc.CartList(userId);
		
		List<MenuVO> mlist = msvc.menuList();
		
		List<String> newClist = new ArrayList<>();
		for(CartVO cvo : clist) {
			for(MenuVO mvo : mlist) {
				if(cvo.getMenuId().equals(mvo.getMenuId())&&mvo.getMenuCount()>0) {
					cvo.setRestCount(mvo.getMenuCount());
					newClist.add(mvo.getMenuId()); // 품절이 아닌 목록을 담음
				}}}
		
		// 품절이 아니고, 체크가 된 값
		System.out.println(newClist); // menuId 2개
		System.out.println(cartArr); // cartNum 1개
		Map<String, Object> cartNumMap = new HashMap<>();
		cartNumMap.put("cartArr", cartArr);
		
		
		List<CartVO> cartArr3 = csvc.CartListUseCartNum(cartNumMap);
		
		for(CartVO vo : cartArr3) {
			if(newClist.contains(vo.getMenuId())) {
				cartArr2.add(vo.getMenuId());
			}
		}
		
		Map<String, Object> map = new HashMap<>();
		map.put("cartArr",cartArr2);
		map.put("userId",userId);
		
		CartMenuJoinVO vo = csvc.joinCartMenu(map);
		
		try {
			resp.getWriter().write(gson.toJson(vo));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
