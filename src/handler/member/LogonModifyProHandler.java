package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.CommandHandler;
import member.LogonDBBean;
import member.LogonDataBean;

public class LogonModifyProHandler implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//패스워드
		LogonDataBean memberDto = new LogonDataBean();
		memberDto.setPasswd( request.getParameter("passwd"));

		// 이메일
		String email1 = request.getParameter( "email1" );
		String email2 = request.getParameter( "email2" );
		String email = null;
		if( ! email1.equals( "" ) && ! email2.equals( "" ) ) {
			email = email1 + "@" + email2;
		}
		memberDto.setEmail( email );

		// 전화번호
		String tel1 = request.getParameter( "tel1" );
		String tel2 = request.getParameter( "tel2" );
		String tel3 = request.getParameter( "tel2" );
		String tel = null;
		if( ! tel1.equals( "" ) && ! tel2.equals( "" ) && ! tel3.equals( "" ) ) {
			tel = tel1 + "-" + tel2 + "-" + tel3;
		}
		memberDto.setTel( tel );

		// 아이디 
		memberDto.setId( (String) request.getSession().getAttribute( "memId" ) );

		LogonDBBean memberDao = LogonDBBean.getInstance();
		int result = memberDao.updateMember( memberDto );	
		
		request.setAttribute("result", result);
		
		return "/member/modifyPro.jsp";
	}
}
