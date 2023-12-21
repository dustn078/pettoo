package controller.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.dao.CommunityDAO;
import model.CommunityDto;
import model.service.UserManager;

public class CreateCommunityController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(CreateCommunityController.class);

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	CommunityDto comm = new CommunityDto(
    		Integer.parseInt(request.getParameter("comm_num")),
    		request.getParameter("comm_title"),
			request.getParameter("comm_text"),
			request.getParameter("comm_date"),
			 Integer.parseInt(request.getParameter("comm_memberlimit")),
			request.getParameter("comm_leader")
    			);		
        
		try {
			UserManager manager = UserManager.getInstance();
			manager.createCommunity(comm);
			
	    	log.debug("Create Community : {}", comm);
	        return "redirect:/community/list";	// 성공 시 커뮤니티 리스트 화면으로 redirect
	        
		} catch (Exception e) {		// 예외 발생 시 입력 form으로 forwarding
            request.setAttribute("creationFailed", true);
			request.setAttribute("exception", e);
			request.setAttribute("comm", comm);
			return "/community/creationForm.jsp";
		}
    }
}
