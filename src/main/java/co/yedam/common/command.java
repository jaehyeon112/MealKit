package co.yedam.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface command {
	public void execute(HttpServletRequest req, HttpServletResponse resp);
}
