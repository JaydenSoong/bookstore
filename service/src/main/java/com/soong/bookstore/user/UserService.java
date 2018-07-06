package com.soong.bookstore.user;

import com.soong.bookstore.exception.UserException;

public class UserService {
	private UserDao userDao = new UserDao();

	/**
	 * 验证用户名是否已被注册
	 * @param username, 需要验证的用户名
	 * @return 如果已经被注册，返回 true, 否则返回 false
	 */
	public boolean validateUsername(String username) {
		return userDao.queryByUsername(username) != null;
	}

	/**
	 * 验证手机号码是否已被注册
	 * @param phoneNumber, 需要验证的手机号码
	 * @return 如果已经被注册，返回 true, 否则返回 false
	 */
	public boolean validatePhoneNumber(String phoneNumber) {
		return userDao.queryByPhoneNumber(phoneNumber) != null;
	}

	/**
	 * 验证邮箱是否已被注册
	 * @param email, 需要验证的邮箱
	 * @return 如果已经被注册，返回 true, 否则返回 false
	 */
	public boolean validateEmail(String email) {
		return userDao.queryByEmail(email) != null;
	}

	/**
	 * 用户注册功能
	 * @param user, 被注册的用户
	 */
	public void register(User user) {
		userDao.add(user);
	}

	/**
	 * 用户激活功能
	 * @param code, 激活码
	 * @throws UserException, 用户激活异常
	 */
	public void active(String code) throws UserException {
		var user = userDao.queryByCode(code);
		if (user == null) throw new UserException("激活码错误！");
		if (user.isState()) throw new UserException("该账户已激活，请不要重复操作!");
		userDao.updateState(user.getUid(), true);
	}

	/**
	 * 用户登录功能
	 */
	public User login(User user) throws UserException {
		var username = user.getUsername();
		var _user = userDao.queryByUsername(username);
		// 根据用户输入的用户查询，如果没有查到或密码不匹配，则说明用户名或密码是错的
		if (_user == null || !_user.getPassword().equals(user.getPassword()))
			throw new UserException("用户名或密码错误！");
		if (!_user.isState()) throw new UserException("该账户尚未激活!");
		return _user;
	}
}
