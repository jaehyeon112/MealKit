package co.yedam.qa.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.qa.service.QaService;
import co.yedam.qa.service.QaVO;
import co.yedam.qa.serviceImpl.QaServiceImpl;

public class GoQaListAllControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		QaService svc= new QaServiceImpl();
		List<QaVO> list = svc.qaListAll();
		req.setAttribute("list", list);
		try {
			req.getRequestDispatcher("/qa/qaListAll.tiles").forward(req, resp);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}