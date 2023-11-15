package co.yedam.review.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
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
		String reviewDate = req.getParameter("reviewDate"); // 날짜
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		ReviewVO vo = new ReviewVO();
		
		vo.setMenuName(menuName);
		vo.setReviewContent(reviewContent);
		vo.setUserId(userId);
		vo.setReviewImage(reviewImage);
		vo.setReviewStar(reviewStar);
		vo.setReviewBoomup(reviewBoomup);
		
		try {
			vo.setReviewDate(sdf.parse(reviewDate));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
		if (svc.addReview(vo)) {
			try {
				resp.sendRedirect("addReview.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("myPage.do");
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

	}

}
