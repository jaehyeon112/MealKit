package co.yedam.qa.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.qa.service.QaService;
import co.yedam.qa.serviceImpl.QaServiceImpl;

public class RemoveQaControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String qno = req.getParameter("qno");
		QaService svc = new QaServiceImpl();
		
		if(svc.removeQa(Integer.parseInt(qno))) {
			try {
				resp.sendRedirect("qaList.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
