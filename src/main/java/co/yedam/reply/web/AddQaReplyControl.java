package co.yedam.reply.web;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.reply.service.QaReplyService;
import co.yedam.reply.service.QaReplyVO;
import co.yedam.reply.serviceImpl.QaReplyServiceImpl;

public class AddQaReplyControl implements command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		QaReplyVO vo = new QaReplyVO();
		QaReplyService svc = new QaReplyServiceImpl();
		String qaNo = req.getParameter("qaNo");
		String qaReply = req.getParameter("qaReply");
		String userName = req.getParameter("userName");

		vo.setQaNo(Integer.parseInt(qaNo));
		vo.setQaReply(qaReply);
		vo.setUserName(userName);
		vo.setReplyDate(new Date());

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		Map<String, Object> map = new HashMap<>();

		if (svc.addReply(vo)) {
			try {
				map.put("retCode", "OK");
				map.put("vo", vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				map.put("retCode", "NG");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		resp.setContentType("text/json;charset=UTF-8");
		try {
			resp.getWriter().print(gson.toJson(map));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
