package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.cart.GoCartControl;
import co.yedam.cart.web.HowManyControl;
import co.yedam.menu.web.GoAddFormControl;

import co.yedam.join.GoJoinFormControl;
import co.yedam.join.JoinControl;
import co.yedam.login.GoLoginFormControl;
import co.yedam.login.LoginControl;
import co.yedam.login.LogoutControl;
import co.yedam.menu.web.AddCartList;
import co.yedam.order.GoOrderControl;
import co.yedam.review.web.AddMyReviewControl;
import co.yedam.review.web.GoAddReviewControl;
import co.yedam.review.web.GoReviewControl;

public class FrontController extends HttpServlet {
	Map<String, command> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		map.put("/review.do", new GoReviewControl()); // 전체 리뷰 조회 페이지
		map.put("/main.do", new GoMainControl());
		map.put("/cart.do", new GoCartControl());
		map.put("/calcart.do", new HowManyControl());
		map.put("/order.do", new GoOrderControl());
		map.put("/menu.do", new GoMenuControl());
		
		map.put("/login.do", new GoLoginFormControl());
		map.put("/signIn.do", new LoginControl());
		map.put("/logout.do", new LogoutControl()); 
		
		map.put("/join.do", new GoJoinFormControl());
		map.put("/signUp.do", new JoinControl());
		
		map.put("/myPage.do", new GoMyPageControl());
		
		map.put("/menupage.do", new GoMenuPageControl());
		map.put("/addReview.do", new GoAddReviewControl()); // 마이페이지 -> 리뷰작성, 조회페이지로 이동
		map.put("/addMyReview.do", new AddMyReviewControl()); // 리뷰작성페이지
		map.put("/addMenu.do", new GoAddMenuControl());
		map.put("/addForm.do", new GoAddFormControl());
		map.put("/addCart.do", new AddCartList()); //장바구니 버튼 클릭시 장바구니에 메뉴 추가
		map.put("/selMenu.do", new GoSelMenuControl());
		

	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");

		String page = req.getServletPath();

		command controller = map.get(page);
		controller.execute(req, resp);

	}

}
