package co.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;




public class GoAddMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MenuVO vo = new MenuVO();
		if(req.getMethod().equals("GET")) {
		
		String menuId = req.getParameter("menuId");
//		System.out.println(menuId+ "입니다");
		String menuName = req.getParameter("menuName");
		String menuNameInfo = req.getParameter("menuNameInfo");
//		String menuImage1 = req.getParameter("menuImage1");
//		String menuImage2 = req.getParameter("menuImage2");
		String menuImage3 = req.getParameter("menuImage3");
		String menuKind = req.getParameter("menuKind");
		String menuPrice = req.getParameter("menuPrice");
		String menuPriceOff = req.getParameter("menuPriceOff");
		String menuCentent = req.getParameter("menuCentent");
		String menuCount = req.getParameter("menuCount");
		String menuPoint = req.getParameter("menuPoint");

		vo.setMenuId(menuId);
		vo.setMenuName(menuName);
		vo.setMenuNameInfo(menuNameInfo);
//		vo.setMenuImage1(menuImage1);
//		vo.setMenuImage2(menuImage2);
		vo.setMenuImage3(menuImage3);
		vo.setMenuKind(menuKind);
		vo.setMenuPrice(Integer.parseInt(menuPrice));
		vo.setMenuPriceOff(Integer.parseInt(menuPriceOff));
		vo.setMenuContent(menuCentent);
		vo.setMenuCount(Integer.parseInt(menuCount));
		vo.setMenuPoint(Integer.parseInt(menuPoint));
		
		} else if(req.getMethod().equals("POST")) {
			String menuImage = req.getServletContext().getRealPath("image");
			int size = 5 * 1024 * 1024;
			try {
				MultipartRequest mr =
						new MultipartRequest(req,
								menuImage,
								size,
								"UTF-8",
								new DefaultFileRenamePolicy()
								);
				String menuId = mr.getParameter("menuId");
				String menuName = mr.getParameter("menuName");
				String menuNameInfo = mr.getParameter("menuNameInfo");
				String menuImage1 = mr.getFilesystemName("menuImage1");
				String menuImage2 = mr.getFilesystemName("menuImage2");
				String menuImage3 = mr.getFilesystemName("menuImage3");
				String menuKind = mr.getParameter("menuKind");
				String menuPrice = mr.getParameter("menuPrice");
				String menuPriceOff = mr.getParameter("menuPriceOff");
				String menuCentent = mr.getParameter("menuCentent");
				String menuCount = mr.getParameter("menuCount");
				String menuPoint = mr.getParameter("menuPoint");
				
				vo.setMenuId(menuId);
				vo.setMenuName(menuName);
				vo.setMenuNameInfo(menuNameInfo);
				vo.setMenuImage1(menuImage1);
				vo.setMenuImage2(menuImage2);
				vo.setMenuImage3(menuImage3);
				vo.setMenuKind(menuKind);
				vo.setMenuPrice(Integer.parseInt(menuPrice));
				vo.setMenuPriceOff(Integer.parseInt(menuPriceOff));
				vo.setMenuContent(menuCentent);
				vo.setMenuCount(Integer.parseInt(menuCount));
				vo.setMenuPoint(Integer.parseInt(menuPoint));
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		MenuService svc = new MenuServiceImpl();
		if (svc.addMenu(vo)) {
			try {
				resp.sendRedirect("addMenu.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("main.do");
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}

}
