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
	 * @param phoneNumber, 需要查询的手机
	 * @return 查找到的用户，若没有找到，则为 null
	 */
	public User queryByPhoneNumber(String phoneNumber) {
		var sql = "SELECT * FROM tb_user WHERE phoneNumber = ?";
		try {
			return qr.query(sql, new BeanHandler<>(User.class), phoneNumber);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 按激活码查询用户
	 * @param code, 需要查询的激活码
	 * @return 查找到的用户，若没有找到，则为 null
	 */
	public User queryByCode(String code) {
		var sql = "SELECT * FROM tb_user WHERE code = ?";
		try {
			return qr.query(sql, new BeanHandler<>(User.class), code);
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
		Object[] params = {user.getUid(), user.getUsername(), user.getPassword(), user.getPhoneNumber(),
				user.getEmail(), user.getCode(), user.isState()};
		try {
			qr.update(sql, params);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 完成用户的激活功能
	 * @param uid, 被激活的用户 id
	 * @param b, 激活状态
	 */
	public void updateState(String uid, boolean b) {
		var sql = "UPDATE tb_user SET state = ? WHERE uid = ?";
		try {
			qr.update(sql, b, uid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
