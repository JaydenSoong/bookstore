package com.soong.bookstore.category.controller.servlet;

import com.soong.bookstore.category.CategoryService;
import com.soong.servlet.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryServlet", urlPatterns = "/CategoryServlet")
public class CategoryServlet extends BaseServlet {
	private CategoryService categoryService = new CategoryService();

	/**
	 * 列出所有图书分类
	 */
	public String listAllCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("categories", categoryService.findAllCategory());
		return "/jsps/left.jsp";
	}
}
