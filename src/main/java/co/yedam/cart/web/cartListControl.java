package co.yedam.cart.web;

import java.io.IOException;
import java.util.HashMap;
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
		
		CartMenuJoinVO vo2 = svc.joinCartMenu(userId);
		
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

