package co.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import co.yedam.menu.mapper.MenuMapper;
import co.yedam.menu.service.MenuService;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoDeleteMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String mid = req.getParameter("menuId");
		MenuService svc = new MenuServiceImpl();
		
		if(svc.deleteMenu(mid)) {
			
			try {
				resp.sendRedirect("menuList.do");
			} catch(IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("deleteMenuForm.do");
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
