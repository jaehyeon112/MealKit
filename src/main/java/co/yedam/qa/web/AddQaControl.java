package co.yedam.qa.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.common.command;
import co.yedam.qa.service.QaService;
import co.yedam.qa.service.QaVO;
import co.yedam.qa.serviceImpl.QaServiceImpl;
import co.yedam.users.service.UserService;

public class AddQaControl implements command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		QaVO vo = new QaVO();
		QaService svc = new QaServiceImpl();
		
		String savaDir = req.getServletContext().getRealPath("image");
		System.out.println(savaDir);
		int size = 5 * 1024 * 1024;
		try {
			MultipartRequest mr = new MultipartRequest(req, savaDir, size, "UTF-8", new DefaultFileRenamePolicy());
			String userId = mr.getParameter("userId");
			String qaContent = mr.getParameter("qaContent");
			String userName = mr.getParameter("userName");
			String qaImage = mr.getFilesystemName("qaImage");
			String qaState = mr.getParameter("qaState");
			String title = mr.getParameter("title");
			
			vo.setUserId(userId);
			vo.setQaContent(qaContent);
			vo.setUserName(userName);
			vo.setQaImage(qaImage);
			vo.setQaState(qaState);
			vo.setTitle(title);
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(svc.addQa(vo)) {
			try {
				resp.sendRedirect("qaList.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			try {
				resp.sendRedirect("qa.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
