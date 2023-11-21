package co.yedam.qa.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.qa.service.QaService;
import co.yedam.qa.service.QaVO;
import co.yedam.qa.serviceImpl.QaServiceImpl;

public class ModifyFormControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String qno = req.getParameter("qno");
		QaService svc = new QaServiceImpl();
		QaVO vo = svc.getQa(Integer.parseInt(qno));
		req.setAttribute("vo", vo);
		
		try {
			req.getRequestDispatcher("/qa/modifyForm.tiles").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

}
