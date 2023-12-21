package controller.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.service.UserManager;
import model.CommunityDto;

public class ViewCommunityController implements Controller {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {			
    	
    	CommunityDto comm = null;
		UserManager manager = UserManager.getInstance();
		int comm_num = Integer.parseInt(request.getParameter("comm_num"));
		comm = manager.findCommunity(comm_num);		// 커뮤니티 정보 검색			
		
		request.setAttribute("community", comm);	// 커뮤니티 정보 저장				
		return "/community/view.jsp";				// 커뮤니티 보기 화면으로 이동
    }
}
