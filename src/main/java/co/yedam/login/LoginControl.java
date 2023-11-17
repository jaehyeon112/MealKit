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

			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("userPassword", vo.getUserPassword());
			session.setAttribute("userName", vo.getUserName());
			try {
				resp.sendRedirect("main.do");
			} catch (IOException e) {
				e.printStackTrace();
			}

		} else {
			req.setAttribute("errMsg", "로그인 정보가 올바르지 않습니다.");
			
			try {
				req.getRequestDispatcher("login/loginForm.tiles").forward(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
