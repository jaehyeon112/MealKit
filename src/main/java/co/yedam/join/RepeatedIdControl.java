package co.yedam.join;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.command;
import co.yedam.users.service.UserService;
import co.yedam.users.service.UserVO;
import co.yedam.users.serviceImpl.UserServiceImpl;

public class RepeatedIdControl implements command {
@Override
public void execute(HttpServletRequest req, HttpServletResponse resp) {
	String id = req.getParameter("userId");

    UserVO vo = null;

    Gson gson = new GsonBuilder().create();
    UserService svc = new UserServiceImpl();
    Map<String, Object> map = new HashMap<>();
    vo = svc.userId(id);
    if(vo != null) {
    	map.put("vo", vo);
    	map.put("retCode", "Exists");
    }else {
    	map.put("retCode", "NotExists");
    }
    resp.setContentType("text/json;charset=utf-8");
    try {
		resp.getWriter().print(gson.toJson(map));
	} catch (IOException e) {
		e.printStackTrace();
	}	
}
}
