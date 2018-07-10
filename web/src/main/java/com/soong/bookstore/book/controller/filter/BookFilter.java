package com.soong.bookstore.book.controller.filter;

import com.soong.bookstore.response.StaticResponse;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebFilter(filterName = "BookFilter", urlPatterns = "/BookServlet")
public class BookFilter implements Filter {
	private FilterConfig config;

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
		var request = (HttpServletRequest) req;
		var response = (HttpServletResponse) resp;
		var bid = request.getParameter("bid");
		var method = request.getParameter("method");

		if (method.equals("load") && bid != null) {
			var htmlPage = bid + ".html";
			var htmlPath = config.getServletContext().getRealPath("/htmls");
			var destFile = new File(htmlPath, htmlPage);

			if (destFile.exists()) {
				response.sendRedirect(request.getContextPath() + "/htmls/" + htmlPage);
				return;

			}
			var sr = new StaticResponse(response, destFile.getAbsolutePath());
			chain.doFilter(request, sr);
			response.sendRedirect(request.getContextPath() + "/htmls/" + htmlPage);
		} else {
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}
}
