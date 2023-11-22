package co.yedam.reply.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.reply.service.QaReplyService;
import co.yedam.reply.serviceImpl.QaReplyServiceImpl;

public class RemoveQaReplyControl implements command {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String rno = req.getParameter("replyNo");
		QaReplyService svc = new QaReplyServiceImpl();
		Map<String, String> map = new HashMap<>();
		Gson gson = new GsonBuilder().create();
		
		if(svc.removeReply(Integer.parseInt(rno))) {
			map.put("retCode", "OK");
		}else {
			map.put("retCode", "NG");
		}
		resp.setContentType("text/json; charset=UTF-8");
		try {
			resp.getWriter().print(gson.toJson(map));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
