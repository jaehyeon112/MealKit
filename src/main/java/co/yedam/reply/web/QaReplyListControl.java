package co.yedam.reply.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.reply.service.QaReplyService;
import co.yedam.reply.service.QaReplyVO;
import co.yedam.reply.serviceImpl.QaReplyServiceImpl;

public class QaReplyListControl implements command{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String qaNo = req.getParameter("qaNo");
		QaReplyService svc = new QaReplyServiceImpl();
		List<QaReplyVO> list = svc.replyList(Integer.parseInt(qaNo));
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		String json = gson.toJson(map);
		resp.setContentType("text/json;charset=UTF-8");
		try {
			resp.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
