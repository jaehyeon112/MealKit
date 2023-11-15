package co.yedam.review.web;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class GoAddReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String path = "/review/addReview.tiles";
		ReviewService svc = new ReviewServiceImpl();
		
		String menuName = req.getParameter("menuName"); // 상품명
		String reviewContent = req.getParameter("reviewContent"); // 리뷰내용
		String userId = req.getParameter("userId"); // 아이디
		String reviewImage = req.getParameter("reviewImage"); // 이미지
		int reviewStar = Integer.parseInt(req.getParameter("reviewStar")); // 별점
		int reviewBoomup = Integer.parseInt(req.getParameter("reviewBoomup")); // 추천수
		String reviewDate = (req.getParameter("reviewImage")); // 날짜
		
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}

	}

}
