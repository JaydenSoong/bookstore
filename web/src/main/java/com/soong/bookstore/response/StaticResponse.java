package com.soong.bookstore.response;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/**
 * 用户掉包 Servlet 的响应 response，生成静态页面
 */
public class StaticResponse  extends HttpServletResponseWrapper {
	private PrintWriter pw;

	/**
	 * @param response the {@link HttpServletResponse} to be wrapped.
	 * @throws IllegalArgumentException if the response is null
	 */
	public StaticResponse(HttpServletResponse response, String path) throws FileNotFoundException, UnsupportedEncodingException {
		super(response);
		pw = new PrintWriter(path, "utf-8");
	}

	public PrintWriter getWriter() {
		return pw;
	}
}
