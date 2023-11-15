package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.cart.GoCartControl;
import co.yedam.join.GoJoinControl;
import co.yedam.login.GoLoginControl;
import co.yedam.menu.web.GoAddFromControl;
import co.yedam.order.GoOrderControl;
import co.yedam.review.web.GoReviewControl;






public class FrontController extends HttpServlet {
	Map<String, command> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		map.put("/review.do", new GoReviewControl());
		map.put("/main.do", new GoMainControl());
		map.put("/cart.do", new GoCartControl());
		map.put("/order.do", new GoOrderControl());
		map.put("/menu.do", new GoMenuControl());
		map.put("/login.do", new GoLoginControl());
		map.put("/join.do", new GoJoinControl());
		map.put("/myPage.do", new GoMyPageControl());
		map.put("/menupage.do", new GoMenuPageControl());
		map.put("/addMenu.do", new GoAddMenuControl());
		map.put("/addForm.do", new GoAddFromControl());

	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");

		String page = req.getServletPath();

		command controller = map.get(page);
		controller.execute(req, resp);
		//gggggggdd@@@@@
	}

}
