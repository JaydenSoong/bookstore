package com.soong.bookstore.book.controller.servlet;

import com.soong.bookstore.book.BookService;
import com.soong.servlet.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BookServlet", urlPatterns = "/BookServlet")
public class BookServlet extends BaseServlet {
	private BookService bookService = new BookService();

	/**
	 * 按分类列出图书
	 */
	public String listBycid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var cid = request.getParameter("cid");
		request.setAttribute("books", bookService.findBybid(cid));
		return "/jsps/book/list.jsp";
	}

	/**
	 * 列出所有图书
	 */
	public String listAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("books", bookService.findAll());
		return "/jsps/book/list.jsp";
	}
}
