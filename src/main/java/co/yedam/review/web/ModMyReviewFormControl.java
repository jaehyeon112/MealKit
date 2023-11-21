package co.yedam.review.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;

public class ModMyReviewFormControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		int orderDetailNumber = Integer.parseInt(req.getParameter("orderDetailNumber"));
//		String reviewDate = req.getParameter("reviewDate");
		String userId = req.getParameter("userId");
		String menuName = req.getParameter("menuName");
		req.setAttribute("userId", userId);
		req.setAttribute("orderDetailNumber", orderDetailNumber);
//		req.setAttribute("reviewDate", reviewDate);
		req.setAttribute("menuName", menuName);
		
		try {
			req.getRequestDispatcher("review/modMyReviewForm.tiles").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
