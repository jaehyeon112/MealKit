package co.yedam.review.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class DeleteMyReviewControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String orderDetailNumber = req.getParameter("orderDetailNumber");
		System.out.println(orderDetailNumber);
		Map<String, String> map = new HashMap<>();
		ReviewService svc = new ReviewServiceImpl();
		if(svc.deleteReview(Integer.parseInt(orderDetailNumber))) {
			
			try {
				resp.sendRedirect("getMyReview.do");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
			
		}else {
			map.put("retCode","NG");
		}
		
		Gson gson = new GsonBuilder().create();
		
		try {
			resp.getWriter().print(gson.toJson(map));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

}
