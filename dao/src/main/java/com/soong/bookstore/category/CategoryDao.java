package com.soong.bookstore.category;

import com.soong.dbutils.TxQueryRunner;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CategoryDao {
	private QueryRunner qr = new TxQueryRunner();

	/**
	 * 查询所有的图书分类
	 * @return List<Category>
	 */
	public List<Category> queryAllCategory() {
		var sql = "SELECT * FROM category";
		try {
			return qr.query(sql, new BeanListHandler<>(Category.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
