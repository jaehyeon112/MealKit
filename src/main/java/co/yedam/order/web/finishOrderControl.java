package co.yedam.order.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;

public class finishOrderControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		try {
			req.getRequestDispatcher("/order/orderfinish.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
