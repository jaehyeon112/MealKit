package co.yedam.review.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class GetMyReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		ReviewService svc = new ReviewServiceImpl();
		List<ReviewVO> list = svc.getReview(userId);
		req.setAttribute("getReview", list);
		
		String path = "/review/getMyReview.tiles";
		
		if(userId==null) {
			session.setAttribute("userId", "guest");
		}
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

}
