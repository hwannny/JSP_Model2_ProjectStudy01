package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//localhost:8080/MemberEx/aaa.do
public class DefaultHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//작업처리
		request.setAttribute("result", "처리할수 없는 요청입니다");
		
		//경로반환
		return "/member/default.jsp";
		
	}//process
}
