package com.soong.bookstore.book;

import com.soong.dbutils.TxQueryRunner;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class BookDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 按分类查询图书
	 * @param cid, 图书的分类
	 * @return List<Book>
	 */
	public List<Book> queryBybid(String cid) {
		var sql = "SELECT * FROM book WHERE cid = ?";
		try {
			return qr.query(sql, new BeanListHandler<>(Book.class), cid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 查询所有图书
	 * @return List<Book>
	 */
	public List<Book> queryAll() {
		var sql = "SELECT * FROM book";
		try {
			return qr.query(sql, new BeanListHandler<>(Book.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 根据 id 查询图书
	 * @param bid, 图书 id
	 * @return Book
	 */
	public Book queryBook(String bid) {
		var sql = "SELECT * FROM book WHERE bid = ?";
		try {
			return qr.query(sql, new BeanHandler<>(Book.class), bid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
