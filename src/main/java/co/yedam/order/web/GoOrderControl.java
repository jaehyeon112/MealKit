package co.yedam.order.web;

import java.io.IOException;
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
import co.yedam.order.service.OrderService;
import co.yedam.order.serviceImpl.OrderServiceImpl;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class GoOrderControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		Gson gson = new GsonBuilder().create();
		String cartNum = req.getParameter("cartNum");
		System.out.println("이거 값이 안되나?"+cartNum);
		// 문자열을 배열로 바꾸자. ,을 기준으로!
		String[] cartArr = cartNum.split(",");
		System.out.println(Arrays.toString(cartArr));
		
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		
		
		//장바구니에 있는 물건을 리스트에 담아놨음.
		OrderService orderSvc = new OrderServiceImpl();
		List<CartVO> vo = orderSvc.orderList(cartArr);
		System.out.println(vo);
		
		//총 결제 금액
		CartService cartSvc = new CartServiceImpl();
		CartMenuJoinVO vo2 = cartSvc.joinCartMenu(userId);
		String pay = gson.toJson(vo2);
		//유저 정보
		UserService userSvc = new UserServiceImpl();
		UserVO vo3 = userSvc.userId(userId);
		String user = gson.toJson(vo3);
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("totalPay", pay);
		map.put("userList", user);
		req.setAttribute("cartList", vo);
		req.setAttribute("map", map);
		try {
			req.getRequestDispatcher("order/orderinfo.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
