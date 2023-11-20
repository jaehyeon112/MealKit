package co.yedam.common;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoUpdateMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuVO vo = new MenuVO();
		MenuService svc = new MenuServiceImpl();
		
		String mid = req.getParameter("mid");
		String name = req.getParameter("name");
		String nameIn = req.getParameter("nameIn");
		String imgo = req.getParameter("imgo");
		String imgt = req.getParameter("imgt");
		String imgtr = req.getParameter("imgtr");
		String kind = req.getParameter("kind");
		String pri = req.getParameter("pri");
		String prO = req.getParameter("prO");
		String cont = req.getParameter("cont");
		String cout = req.getParameter("cout");
		String poin = req.getParameter("poin");
		String time = req.getParameter("time");
		String many = req.getParameter("many");
		
		vo.setMenuId(mid);
		vo.setMenuName(name);
		vo.setMenuNameInfo(nameIn);
		vo.setMenuImage1(imgo);
		vo.setMenuImage2(imgt);
		vo.setMenuImage3(imgtr);
		vo.setMenuKind(kind);
		vo.setMenuPrice(Integer.parseInt(pri));
		vo.setMenuPriceOff(Integer.parseInt(prO));
		vo.setMenuContent(cont);
		vo.setMenuCount(Integer.parseInt(cout));
		vo.setMenuPoint(Integer.parseInt(poin));
		vo.setMenuTime(Integer.parseInt(time));
		vo.setMenuMany(Integer.parseInt(many));
		
		
		
		if(svc.updateMenu(vo)) {
			try {
				resp.sendRedirect("menuList.do");
			} catch(Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("updateMenuForm.do");
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	}

}
