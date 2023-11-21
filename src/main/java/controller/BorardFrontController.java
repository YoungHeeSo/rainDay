package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.*;

/**
 * Servlet implementation class BorardFrontController
 */
@WebServlet("*.bo")
public class BorardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorardFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Action action = null;
		
		request.setCharacterEncoding("UTF-8");
		String path=null;
		
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);
		
		//String contextPath = request.getContextPath();
		//System.out.println(contextPath);
		
		int i = requestURI.lastIndexOf('/');
		System.out.println(i);
		
		String homeUri=requestURI.substring(0, i);
		
		String command = requestURI.substring(i);
		System.out.println(command);
		
		if(command.equals("/boardWriteForm.bo")) {
			path=homeUri + "/board/qua_board_write.jsp";
			
		}else if(command.equals("/boardWritePro.bo")) {
			System.out.println("1 ok");
			action = new BoardWriteProAction();
			
			try {
				action.execute(request, response);
			
			}catch (Exception e) {
				e.printStackTrace();
				
			}
			
		}
		
		response.sendRedirect(path);
		
	}

}
