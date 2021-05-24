package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import utils.SecurityUtils;

/**
 * Servlet Filter implementation class SecurityFilter
 */
@WebFilter("/123")
public class SecurityFilter implements Filter {

    public SecurityFilter() {
        // TODO Auto-generated constructor stub
    }


	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String servletPath = req.getServletPath();
        
//        System.out.println(servletPath);
        if (servletPath.equals("/login")) {
            chain.doFilter(request, response);
            return;
        }
        
        /* lỗi chưa fix: do 1 số link cần khi load page jsp nên filter bị sai
         * còn dẫn tới việc không load được trang
         * */
        if (SecurityUtils.isSecurityPage(req)) {
	    	HttpSession session = req.getSession();
			User user = (User)session.getAttribute("user");
			if(user == null) {
				resp.sendRedirect(req.getContextPath() + "/login"); 
				return;
			}
        }
        
		chain.doFilter(req, resp);
	}


	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
