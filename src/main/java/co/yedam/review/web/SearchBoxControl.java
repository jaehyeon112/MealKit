package co.yedam.review.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class SearchBoxControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String path = "review/review.tiles";
		String word = req.getParameter("word");

		ReviewService svc = new ReviewServiceImpl();
		List <ReviewVO> list = svc.searchBoxList(word);
		req.setAttribute("searchWord", word);
		req.setAttribute("list", list);

		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
