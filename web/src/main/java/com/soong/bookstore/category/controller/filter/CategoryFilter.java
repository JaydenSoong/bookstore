package com.soong.bookstore.category.controller.filter;

import com.soong.bookstore.response.StaticResponse;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

/**
 * 左边分类页面的静态化
 */
@WebFilter(filterName = "CategoryFilter", urlPatterns = "/CategoryServlet")
public class CategoryFilter implements Filter {
	// 通过该成员可以得到项目真实路径
	private FilterConfig config;

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
		var request = (HttpServletRequest)req;
		var response = (HttpServletResponse) resp;
		// 静态页面名称
		var htmlPage = "category.html";
		// 静态页面真实路径
		var htmlPath = config.getServletContext().getRealPath("/htmls");
		// 创建静态页面文件
		var destFile = new File(htmlPath, htmlPage);

		// 如果静态页面存在，直接重定向, 否则，让 Servlet 响应到一个自定义的 response 中，生成静态页面，再重定向
		if (destFile.exists()) {
			response.sendRedirect(request.getContextPath() + "/htmls/" + htmlPage);
			return;
		}
		var sr = new StaticResponse(response, destFile.getAbsolutePath());
		// 注意，这里放行是放行到自定义 Response 中
		chain.doFilter(request, sr);
		response.sendRedirect(request.getContextPath() + "/htmls/" + htmlPage);
	}

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}
}
