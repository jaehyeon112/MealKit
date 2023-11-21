package co.yedam.review.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class ModMyReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		ReviewVO vo = new ReviewVO();
		String savaDir = req.getServletContext().getRealPath("image");
		int size = 5 * 1024 * 1024;
		try {
			MultipartRequest mr = new MultipartRequest(req, savaDir, size, "UTF-8", new DefaultFileRenamePolicy());
		
		String userId = (String) session.getAttribute("userId");
		int orderDetailNumber = Integer.parseInt(mr.getParameter("orderDetailNumber"));
		int reviewStar = Integer.parseInt(mr.getParameter("reviewStar"));
		String reviewImage = mr.getParameter("reviewImage");
		String reviewContent = mr.getParameter("reviewContent");
		
		vo.setReviewStar(reviewStar);
		vo.setReviewImage(reviewImage);
		vo.setReviewContent(reviewContent);
		vo.setOrderDetailNumber(orderDetailNumber);
		if(userId==null) {
			session.setAttribute("userId", "guest");
		}
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ReviewService svc = new ReviewServiceImpl();
		if(svc.updateReview(vo)) {
			
			try {
				resp.sendRedirect("getMyReview.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} else {
			try {
				resp.sendRedirect("myPage.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

}
