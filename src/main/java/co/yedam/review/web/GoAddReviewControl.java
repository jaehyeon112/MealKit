package co.yedam.review.web;

import java.io.IOException;

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
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}

	}

}
