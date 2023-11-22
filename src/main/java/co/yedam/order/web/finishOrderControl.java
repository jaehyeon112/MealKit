package co.yedam.order.web;

import java.io.IOException;
import java.util.ArrayList;
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
import co.yedam.order.service.OrderDetailVO;
import co.yedam.order.service.OrderService;
import co.yedam.order.service.OrdersVO;
import co.yedam.order.serviceImpl.OrderServiceImpl;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class finishOrderControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		OrderService OrderSvc = new OrderServiceImpl();
		CartService cartSvc = new CartServiceImpl();
		UserService usvc = new UserServiceImpl();
		String orderNumber = req.getParameter("orderNumber");
		
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		
		UserVO beforeUser = usvc.userId(userId);
		List<CartVO> cartList = cartSvc.CartList(userId);

		
		List<String> menuId = new ArrayList<>();
		
		
		//장바구니에 담은리스트와 구매페이지로 넘어간 리스트를 비교
		for(CartVO vo : cartList) {
			String test = vo.getMenuId();
			if(req.getParameter(test)!=null) {
				menuId.add(test);
			}
		};
		
		
		//구매페이지의 menuId 하지만 타입은 ArrayList임. 배열로 변환해야함
		//System.out.println(menuId);
		
		//배열로 변환시켰음
		String[] menuIdArr = menuId.toArray(new String[menuId.size()]);
		
	
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("cartArr", menuIdArr);
		
		// 구매할 물건의 리스트를 vo2로,,,
		List<CartVO> vo2 = OrderSvc.orderList(map);
		System.out.println("구매할 물건 리스트 : "+ vo2);
		
		
		//유저 테이블에서 변경해야할것 : 포인트 사용한 값, 포인트 적립, 만약 총구매금액이 10만원이상 등급을 실버로 // 20만원이상 골드
		
		// 사용한 포인트의 값
		String point = req.getParameter("usePoint");
		System.out.println("사용할 포인트는 : " + point);
		//적립할 포인트를 위해 해당 메뉴의 적립할 포인트
		String getPoint = OrderSvc.getPoint(map);
		System.out.println("획득할 포인트는 : " + getPoint);
		
		// 결제창 값 가져옴
		CartMenuJoinVO vo = cartSvc.joinCartMenuAll(userId);
		int total = vo.getTotal()-Integer.parseInt(point);
		vo.setTotal(total);
		int priceOff = vo.getPriceOff() + Integer.parseInt(point);
		vo.setPriceOff(priceOff);
		
		//결제 후 유저 정보 업데이트를 위해 만드는 map
		//유저 업데이트 끝
		Map<String, Object> map2 = new HashMap<>();
		map2.put("totalPay",total);
		map2.put("userId",userId);
		map2.put("point", point);
		map2.put("getPoint", getPoint);
		OrderSvc.updateUserInfo(map2);
				
		
		//메뉴 테이블에서 변경해야할것 : 수량 - 구매 수량// 규현씨가 맡음 : 만약 구매 수량이 0이면 장바구니에도 못 담고, 구매안되야함.
		
		//1. 메뉴 수량 업데이트 , 2. 구매목록 장바구니에서 삭제, 3. 구매한 내역 테이블로..
		for(CartVO i : vo2) {
			OrderSvc.updateMenuInfo(i.getMenuId(), i.getCartCount());
			OrderSvc.deleteCartNum(i.getCartNum());
			OrderDetailVO deVO = new OrderDetailVO();
			System.out.println(orderNumber);
			deVO.setOrderNumber(orderNumber);
			deVO.setUserId(userId);
			deVO.setMenuCount(i.getCartCount());
			deVO.setMenuId(i.getMenuId());
			OrderSvc.insertDetail(deVO);
		}
		
		
		//나는 장바구니.jsp에 들어가면 장바구니 테이블에서 만약 수량이 0이면 체크박스의 버튼을 disable => 위에 빨간색 글씨로 품절~ 
		//일단 패스!
		
		
		OrdersVO ordersVO = new OrdersVO();
		ordersVO.setOrderNumber(orderNumber);
		ordersVO.setTotalPay(total);
		ordersVO.setGainPoint(Integer.parseInt(getPoint));
		ordersVO.setUserId(userId);
		
		OrderSvc.insertOrder(ordersVO);
		// 장바구니테이블에 구매한 물건은 지우고 =>  구매 상세 테이블, 구매 테이블을 만들자
		
		
		//1번만 만들면 됨.
		//구매 상세 테이블 : 주문상세(번호+아이디), 유저아이디 , 주문날짜 , 총 구매 금액, 획득 포인트, 배송처리 상태(일단 무조건 배송준비중)
		
		//구매한 만큼 만들어야함.
		//구매 테이블 => 주문상세(번호+아이디), 주문번호(시퀀스==리뷰테이블과 논리적 연결), 물건id, 수량, 지금구매한 날짜,
		
		Map<String, Object> userInfo = new HashMap<>();
		
		UserVO afterUser = usvc.userId(userId);
		if(beforeUser.getUserGrade().equals(afterUser.getUserGrade())) {
			userInfo.put("Grade", afterUser.getUserGrade());
			userInfo.put("change", "NO");
		}else {
			userInfo.put("beforeGarde", beforeUser.getUserGrade());
			userInfo.put("afterGrade", afterUser.getUserGrade());
		}
		
		Gson gson = new GsonBuilder().create();
		String jsonMap = gson.toJson(userInfo);
		req.setAttribute("userInfojson", jsonMap);
		req.setAttribute("userInfo", userInfo);
		
		req.setAttribute("buyList", vo2);
		
		
		req.setAttribute("getPoint", getPoint);
		try {
			req.getRequestDispatcher("/order/orderfinish.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
