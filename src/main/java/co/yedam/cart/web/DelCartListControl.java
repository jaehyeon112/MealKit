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

import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.common.command;

public class DelCartListControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		 System.out.println("도착했어!");
		  Gson gson = new GsonBuilder().create();	
		  String cart = req.getParameter("cartNum");
		  HttpSession session = req.getSession();
		  String userId = (String) session.getAttribute("userId");
		  System.out.println(userId);
		  System.out.println(cart);
		  CartService svc = new CartServiceImpl();
		  List<CartVO> vo = svc.removeCart(cart, userId);
		  CartMenuJoinVO vo2 = svc.joinCartMenu(userId);
		  Map<String, Object> map = new HashMap<>();
		  map.put("newList",vo);
		  map.put("total",vo2);
		  try {
			resp.getWriter().print(gson.toJson(map));
		} catch (IOException e) {
			e.printStackTrace();
		}
		}
	}

