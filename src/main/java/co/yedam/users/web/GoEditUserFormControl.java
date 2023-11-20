package co.yedam.users.web;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.serviceImpl.ReviewServiceImpl;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class GoEditUserFormControl implements command{
	   @Override
	   public void execute(HttpServletRequest req, HttpServletResponse resp) {
	      UserService svc = new UserServiceImpl();
	      HttpSession session = req.getSession();
	      String userId = (String)session.getAttribute("userId");
	      UserVO vo = svc.userId(userId);
	      req.setAttribute("user", vo);
	      
	      
	      
	      try {
	         req.getRequestDispatcher("/edit/editForm.tiles").forward(req, resp);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } 
	}
}
