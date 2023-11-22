package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.menu.service.MenuService;
import co.yedam.menu.service.MenuVO;
import co.yedam.menu.serviceImpl.MenuServiceImpl;

public class GoDeleteMenuControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		Gson gson = new GsonBuilder().create();
		String mid = req.getParameter("mid"); // 나는 fetch의 get방식인 mid='이걸 받겠다'
		Map<String, Object> map = new HashMap<>();
		MenuService svc = new MenuServiceImpl();
		if(svc.deleteMenu(mid)) {
//			map.put("test", "OK");
			try {
				resp.getWriter().print("{\"retCode\":\"OK\"}");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}else {
//			map.put("test", "NG");
			try {
				resp.getWriter().print("{\"retCode\":\"NG\"}");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		};
		
//		try {
//			// Object => json으로 변환
//			resp.getWriter().print(gson.toJson(mid));
//		} catch(IOException e) {
//			e.printStackTrace();
//		}
	}

}
