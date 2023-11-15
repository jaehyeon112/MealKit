package co.yedam.review.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class GoReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String path = "/review/review.tiles";
		ReviewService svc = new ReviewServiceImpl();
		List<ReviewVO> list = svc.reviewList();
		req.setAttribute("reviewList", list);
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
