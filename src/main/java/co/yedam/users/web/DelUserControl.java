package co.yedam.users.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class DelUserControl implements command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		UserVO vo = new UserVO();
		UserService svc = new UserServiceImpl();
		
		String userId = req.getParameter("userId");
		String userPassword = req.getParameter("userPassword");
		
		Map<String,Object> map = new HashMap<>();
		if(svc.delUser(userId, userPassword)) {
			map.put("retCode", "OK");
			map.put("vo", vo);
			req.getSession().invalidate();
			try {
				resp.sendRedirect("delSuccess.do");
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else {
			req.setAttribute("errMsg", "비밀번호가 올바르지 않습니다.");
			try {
				map.put("retCode", "NG");
				req.getRequestDispatcher("delete/deleteForm.tiles").forward(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
