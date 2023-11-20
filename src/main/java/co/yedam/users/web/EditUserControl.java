package co.yedam.users.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class EditUserControl implements command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		UserVO vo = new UserVO();
		UserService svc = new UserServiceImpl();
		
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String username = req.getParameter("username");
		String birth = req.getParameter("birth");
		String phone = req.getParameter("phone");
		String address1 = req.getParameter("address1");
		String address2 = req.getParameter("address2");
		String address3 = req.getParameter("address3");
		
		vo.setUserId(userid);
		vo.setUserPassword(password);
		vo.setUserEmail(email);
		vo.setUserName(username);
		vo.setUserBirth(birth);
		vo.setUserPhone(phone);
		vo.setUserAddress1(address1);
		vo.setUserAddress2(address2);
		vo.setUserAddress3(address3);
		
		Map<String,Object> map = new HashMap<>();
		if(svc.editUser(vo)) {
			map.put("retCode", "OK");
			map.put("vo", vo);
			try {
				req.getRequestDispatcher("/edit/editSuccess.tiles").forward(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else {
			try {
				map.put("retCode", "NG");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}
