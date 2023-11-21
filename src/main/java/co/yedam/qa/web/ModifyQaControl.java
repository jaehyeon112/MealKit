package co.yedam.qa.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.command;
import co.yedam.qa.service.QaService;
import co.yedam.qa.service.QaVO;
import co.yedam.qa.serviceImpl.QaServiceImpl;

public class ModifyQaControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		QaVO vo = new QaVO();
		QaService svc = new QaServiceImpl();
		
		String qno = req.getParameter("qno");
		String title = req.getParameter("title");
		String userId = req.getParameter("userId");
		String userName = req.getParameter("userName");
		String qaContent = req.getParameter("qaContent");
		String qaImage = req.getParameter("qaImage");
		
		vo.setQaNo(Integer.parseInt(qno));
		vo.setTitle(title);
		vo.setUserId(userId);
		vo.setUserName(userName);
		vo.setQaContent(qaContent);
		vo.setQaImage(qaImage);
		if(svc.editQa(vo)) {
			try {
				resp.sendRedirect("qaList.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			try {
				resp.sendRedirect("modifyForm.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
