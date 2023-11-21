package co.yedam.qa.web;


import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.qa.service.QaService;
import co.yedam.qa.service.QaVO;
import co.yedam.qa.serviceImpl.QaServiceImpl;

public class getQaControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String qno = req.getParameter("qaNo");
		QaService svc = new QaServiceImpl();
		QaVO vo = svc.getQa(Integer.parseInt(qno));
		
		req.setAttribute("qno", vo);
		
		RequestDispatcher rd = req.getRequestDispatcher("qa/getQa.tiles");
		try {
			rd.forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

}
