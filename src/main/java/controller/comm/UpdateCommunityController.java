package controller.comm;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import controller.Controller;
import model.service.UserManager;
import model.CommunityDto;
import model.UserDto;

public class UpdateCommunityController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(UpdateCommunityController.class);

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
 
		int comm_num = Integer.parseInt(request.getParameter("comm_num"));
		
		if (request.getMethod().equals("GET")) {	
    		// GET request: 커뮤니티 수정 form 요청	
    		UserManager manager = UserManager.getInstance();
    		CommunityDto comm = manager.findCommunity(comm_num);	// 수정하려는 커뮤니티 정보 검색
			request.setAttribute("community", comm);			
			
			List<UserDto> members = manager.findCommunityMembers(comm_num); // 커뮤니티 회원 리스트 검색
			request.setAttribute("members", members);		
			return "/community/updateForm.jsp";   // 검색한 정보를 update form으로 전송     
	    }	
    	
    	// POST request (커뮤니티 정보가 parameter로 전송됨)
		CommunityDto comm = new CommunityDto(
				comm_num,
	    		request.getParameter("comm_title"),
				request.getParameter("comm_text"),
				request.getParameter("comm_date"),
				Integer.parseInt(request.getParameter("comm_memberlimit")),
				request.getParameter("comm_leader")
				);

    	log.debug("Update Community : {}", comm);

		UserManager manager = UserManager.getInstance();
		manager.updateCommunity(comm);			
        return "redirect:/community/list";			
    }
}
