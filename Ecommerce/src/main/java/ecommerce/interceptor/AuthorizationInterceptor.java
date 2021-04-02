package ecommerce.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthorizationInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	throws Exception{
		String url = request.getRequestURL().toString();
		HttpSession session= request.getSession();
		session.setAttribute("url", url);
		if (session != null && session.getAttribute("userOnline") != null) {
			System.out.println("Bạn đang đăng nhập với tài khoản "+session.getAttribute("userOnline"));
		}else {
			response.sendRedirect("../login");
		}
		return super.preHandle(request, response, handler);
	}
}
