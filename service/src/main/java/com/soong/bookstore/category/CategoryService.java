package com.soong.bookstore.category;

import java.util.List;

public class CategoryService {
	private CategoryDao categoryDao = new CategoryDao();

	/**
	 * 查询所有图书分类
	 * @return List<Category>
	 */
	public List<Category> findAllCategory() {
		return categoryDao.queryAllCategory();
	}
}
