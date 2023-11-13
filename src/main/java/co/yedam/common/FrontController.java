package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {
	Map<String, command> map = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		map.put("/main.do", new GoMainControl());	
		//kkkkkk
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String page = req.getServletPath();
		
		command controller = map.get(page);
		controller.execute(req, resp);
	}
	
}
