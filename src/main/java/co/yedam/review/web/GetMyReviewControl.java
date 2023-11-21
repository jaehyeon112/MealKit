package co.yedam.review.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class GetMyReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		Gson gson = new GsonBuilder().create();
		
		
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		ReviewService svc = new ReviewServiceImpl();
		List<ReviewVO> list = svc.getReview(userId);
		req.setAttribute("getReview", list);
		
		String arr = gson.toJson(list);
		req.setAttribute("getReviewJson", arr);
		
		if(userId==null) {
			session.setAttribute("userId", "guest");
		}
		try {
			req.getRequestDispatcher("review/getMyReview.tiles").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

}
