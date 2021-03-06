package com.floorcrasher.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.floorcrasher.common.ActiveUserHelper;


public class BaseInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		boolean result = super.preHandle(request, response, handler);
		
		//Add the CSRF token as a response header.
		CsrfToken csrf = (CsrfToken) request.getAttribute("_csrf");
		response.addHeader(csrf.getHeaderName(), csrf.getToken());
		
		Authentication activeUser = ActiveUserHelper.getActiveUser();
		request.setAttribute("userAuthentication", activeUser);
		
		return result;
	}

	
}
