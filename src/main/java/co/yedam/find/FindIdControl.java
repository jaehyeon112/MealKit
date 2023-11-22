package co.yedam.find;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.command;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class FindIdControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String userName = req.getParameter("userName");
		String userPhone = req.getParameter("userPhone");
		UserService svc = new UserServiceImpl();
		UserVO vo = svc.idCheck(userName, userPhone);
		
		if(svc.idCheck(userName, userPhone) != null) {
			
			req.setAttribute("errMsg", vo.getUserName()+"님의 아이디는 "+vo.getUserId()+"입니다");
			try {
				req.getRequestDispatcher("find/findId.tiles").forward(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			req.setAttribute("errMsg","회원 정보가 없습니다.");
		}
	}

}
