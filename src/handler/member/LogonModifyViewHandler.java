package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.CommandHandler;
import member.LogonDBBean;
import member.LogonDataBean;

public class LogonModifyViewHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		String id = (String) request.getSession().getAttribute( "memId" );
		String passwd = request.getParameter( "passwd" );	
		LogonDBBean memberDao = LogonDBBean.getInstance();
		
		int result = memberDao.check( id, passwd );
		
		request.setAttribute("result", result);
		
		if( result ==1 ) {
			LogonDataBean memberDto = memberDao.getMember( id );
			request.setAttribute("memberDto", memberDto);
		}
		
		return "/member/modifyView.jsp";
	}
}
