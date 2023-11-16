package co.yedam.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.command;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class LoginControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String userId = req.getParameter("userId");
		String userPassword = req.getParameter("userPassword");
		UserService svc = new UserServiceImpl();

		HttpSession session = req.getSession();
		UserVO vo = svc.loginCheck(userId, userPassword);

		if (svc.loginCheck(userId, userPassword) != null) {
			try {
				session.setAttribute("userId", vo.getUserId());
				session.setAttribute("userPassword", vo.getUserPassword());
				session.setAttribute("userName", vo.getUserName());
				resp.sendRedirect("main.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				session.setAttribute("errMsg", "로그인 정보가 올바르지 않습니다.");
				resp.sendRedirect("login.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}
}
