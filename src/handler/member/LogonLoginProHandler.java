package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.CommandHandler;
import member.LogonDBBean;

public class LogonLoginProHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String id = request.getParameter( "id" );
		String passwd = request.getParameter( "passwd" );
		LogonDBBean memberDao = LogonDBBean.getInstance();
		int result = memberDao.check( id, passwd );
		
		request.setAttribute("id", id);
		request.setAttribute("result", result);
		
		return "member/loginPro.jsp";
	}
}
