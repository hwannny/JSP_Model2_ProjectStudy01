package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.CommandHandler;
import member.LogonDBBean;

public class LogonCofirmIdHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter( "id" );
		LogonDBBean memberDao = LogonDBBean.getInstance();
		int result = memberDao.check( id );
		
		request.setAttribute("id", id);
		request.setAttribute("result", result);
		
		return "/member/confirmId.jsp";
	}
}
