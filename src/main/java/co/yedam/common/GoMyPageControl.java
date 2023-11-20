package co.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class GoMyPageControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		UserService svc = new UserServiceImpl();
		HttpSession session = req.getSession();
		String userId = (String)session.getAttribute("userId");
		UserVO vo = svc.userId(userId);
		req.setAttribute("user", vo);
		try {
			req.getRequestDispatcher("/main/myPage.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
