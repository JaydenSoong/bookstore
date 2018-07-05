package com.soong.bookstore.user;

import com.soong.dbutils.TxQueryRunner;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class UserDao{
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 按用户名查询用户
	 * @param username, 需要查询的用户名
	 * @return 查找到的用户，若没有找到，则为 null
	 */
	public User queryByUsername(String username) {
		var sql = "SELECT * FROM tb_user WHERE username = ?";
		try {
			return qr.query(sql, new BeanHandler<>(User.class), username);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 按邮箱查询用户
	 * @param email, 需要查询的邮箱
	 * @return 查找到的用户，若没有找到，则为 null
	 */
	public User queryByEmail(String email) {
		var sql = "SELECT * FROM tb_user WHERE email = ?";
		try {
			return qr.query(sql, new BeanHandler<>(User.class), email);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 按手机查询用户
	 * @param cellphone, 需要查询的手机
	 * @return 查找到的用户，若没有找到，则为 null
	 */
	public User queryByCellphone(String cellphone) {
		var sql = "SELECT * FROM tb_user WHERE cellphone = ?";
		try {
			return qr.query(sql, new BeanHandler<>(User.class), cellphone);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 向用户表中添加用户
	 * @param user, 被添加的用户
	 */
	public void add(User user) {
		var sql = "INSERT INTO tb_user VALUES(?, ?, ?, ?, ?, ?, ?)";
		Object[] params = {user.getUid(), user.getUsername(), user.getPassword(), user.getCellphone(), user.getEmail(),
				user.getCode(), user.isState()};
		try {
			qr.update(sql, params);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
