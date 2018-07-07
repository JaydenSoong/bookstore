package com.soong.bookstore.book;

import java.util.List;

public class BookService {
	private BookDao bookDao = new BookDao();

	/**
	 * 按分类查找图书
	 * @param cid, 图书分类
	 * @return List<Book>
	 */
	public List<Book> findBybid(String cid) {
		return bookDao.queryBybid(cid);
	}

	/**
	 * 查找所有图书
	 * @return List<Book>
	 */
	public List<Book> findAll() {
		return bookDao.queryAll();
	}
}
