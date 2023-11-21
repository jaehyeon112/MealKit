package co.yedam.review.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class AddMyReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ReviewService svc = new ReviewServiceImpl();
		String savaDir = req.getServletContext().getRealPath("image");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		ReviewVO vo = new ReviewVO();

		int size = 5 * 1024 * 1024;

		try {
			MultipartRequest mr = new MultipartRequest(req, savaDir, size, "UTF-8", new DefaultFileRenamePolicy());
			String menuName = mr.getParameter("menuName"); // 상품명
			int orderDetailNumber = Integer.parseInt(mr.getParameter("orderDetailNumber"));
			String reviewContent = mr.getParameter("reviewContent"); // 리뷰내용
			String userId = mr.getParameter("userId"); // 아이디
			String reviewImage = mr.getFilesystemName("reviewImage");
			int reviewStar = Integer.parseInt(mr.getParameter("reviewStar")); // 별점
			// int reviewBoomup = Integer.parseInt(req.getParameter("reviewBoomup")); // 추천수
			String reviewDate = mr.getParameter("reviewDate"); // 날짜

			try {
				vo.setReviewDate(sdf.parse(reviewDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			vo.setOrderDetailNumber(orderDetailNumber);
			vo.setMenuName(menuName);
			vo.setReviewContent(reviewContent);
			vo.setUserId(userId);
		    vo.setReviewImage(reviewImage);
			vo.setReviewStar(reviewStar);
			// vo.setReviewBoomup(reviewBoomup);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (svc.addReview(vo)) {
			try {
				resp.sendRedirect("myPage.do");
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else {
			try {
				resp.sendRedirect("addReview.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
