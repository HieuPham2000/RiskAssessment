package utils;

import javax.servlet.http.HttpServletRequest;

public class SecurityUtils {
	 public static boolean isSecurityPage(HttpServletRequest request) {
	        String urlPattern = UrlPatternUtils.getUrlPattern(request);
	        if(urlPattern != null) {
	        	return true;
	        }
	        return false;
	    }
}
