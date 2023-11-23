package co.yedam.review.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class GoReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		
		String path = "/review/review.tiles";
		ReviewService svc = new ReviewServiceImpl();
		//여기서 보내는 값임;
		List<ReviewVO> list = svc.reviewList();
		req.setAttribute("reviewList", list);
		int reviewCnt = svc.reviewCnt();
		req.setAttribute("reviewCnt", reviewCnt);
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
