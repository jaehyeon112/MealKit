 package co.yedam.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class ModMyReviewFormControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		int orderDetailNumber = Integer.parseInt(req.getParameter("orderDetailNumber"));
//		String reviewDate = req.getParameter("reviewDate");
		ReviewService svc = new ReviewServiceImpl();
		ReviewVO vo = svc.selectOne(orderDetailNumber);
		System.out.println(vo);
		req.setAttribute("vo", vo);
		
		
//		String test = req.getParameter("date");
//		System.out.println(test);
//		String userId = req.getParameter("userId");
//		String menuName = req.getParameter("menuName");
//		vo.setUserId(userId);
//		req.setAttribute("orderDetailNumber", orderDetailNumber);
////		req.setAttribute("reviewDate", reviewDate);
//		req.setAttribute("menuName", menuName);
		
		try {
			req.getRequestDispatcher("review/modMyReviewForm.tiles").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
