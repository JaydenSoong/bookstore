package com.soong.bookstore.user.controller.servlet;

import com.soong.bookstore.exception.UserException;
import com.soong.bookstore.user.User;
import com.soong.bookstore.user.UserService;
import com.soong.common.CommonUtils;
import com.soong.mail.Mail;
import com.soong.mail.MailUtils;
import com.soong.servlet.BaseServlet;
import net.sf.json.JSONObject;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Properties;

@WebServlet(name = "UserServlet", urlPatterns = "/UserServlet")
public class UserServlet extends BaseServlet {
	private UserService userService = new UserService();

	/**
	 * 验证用户名是否已经被注册，将结果以 JSON 对象的方式返回
	 */
	public void validateUsername(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 取得输入的用户名
		var username = request.getParameter("username");
		// map 对象用户保存结果，并转成 JSON 对象
		var map = new HashMap<String, Boolean>();
		if (username != null || !username.trim().isEmpty()) {
			if (userService.validateUsername(username)) {
				map.put("valid", false);
			} else {
				map.put("valid", true);
			}
			response.getWriter().print(JSONObject.fromObject(map).toString());
		}
	}

	/**
	 * 验证手机号码是否已经被注册，将结果以 JSON 对象的方式返回
	 */
	public void validatePhoneNumber(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 取得输入的手机号码
		var phoneNumber = request.getParameter("phoneNumber");
		// map 对象用户保存结果，并转成 JSON 对象
		var map = new HashMap<String, Boolean>();
		if (phoneNumber != null || !phoneNumber.trim().isEmpty()) {
			if (userService.validatePhoneNumber(phoneNumber)) {
				map.put("valid", false);
			} else {
				map.put("valid", true);
			}
			response.getWriter().print(JSONObject.fromObject(map).toString());
		}
	}

	/**
	 * 验证邮箱是否已经被注册，将结果以 JSON 对象的方式返回
	 */
	public void validateEmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 取得输入的邮箱
		var email = request.getParameter("email");
		// map 对象用户保存结果，并转成 JSON 对象
		var map = new HashMap<String, Boolean>();
		if (email != null || !email.trim().isEmpty()) {
			if (userService.validateEmail(email)) {
				map.put("valid", false);
			} else {
				map.put("valid", true);
			}
			response.getWriter().print(JSONObject.fromObject(map).toString());
		}
	}

	/**
	 * 用户注册功能
	 */
	public String register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var user = CommonUtils.toBean(request.getParameterMap(), User.class);
		user.setUid(CommonUtils.uuid());
		user.setCode(CommonUtils.uuid() + CommonUtils.uuid());
		userService.register(user);

		var prop = new Properties();
		prop.load(this.getClass().getClassLoader().getResourceAsStream("email_template.properties"));
		var host = prop.getProperty("host");
		var uname = prop.getProperty("uname");
		var pwd = prop.getProperty("pwd");
		var from = prop.getProperty("from");
		var to = user.getEmail();
		var subject = prop.getProperty("subject");
		var content = prop.getProperty("content");
		content = MessageFormat.format(content, user.getCode());

		var session = MailUtils.createSession(host, uname, pwd);
		var mail = new Mail(from, to, subject, content);
		try {
			MailUtils.send(session, mail);
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

		var x = user.getEmail().indexOf("@");
		var emailAdd = "https://mail." + to.substring(x + 1);
		request.setAttribute("msg", "恭喜您，注册成功，请前往您的<a href=" + emailAdd + ">注册邮箱</a>激活账号！");
		return "/jsps/msg.jsp";
	}

	/**
	 * 用户激活功能
	 */
	public String active(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var code = request.getParameter("code");
		try {
			userService.active(code);
			request.setAttribute("msg", "恭喜，账号已激活！");
			return "/jsps/msg.jsp";
		} catch (UserException e) {
			request.setAttribute("msg", e.getMessage());
			return "/jsps/msg.jsp";
		}
	}
}
