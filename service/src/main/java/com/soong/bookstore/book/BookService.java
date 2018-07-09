package com.soong.bookstore.book;

import java.util.List;

public class BookService {
	private BookDao bookDao = new BookDao();

	/**
	 * 按分类查找图书
	 * @param cid, 图书分类
	 * @return List<Book>
	 */
	public List<Book> findBycid(String cid) {
		return bookDao.queryBybid(cid);
	}

	/**
	 * 查找所有图书
	 * @return List<Book>
	 */
	public List<Book> findAll() {
		return bookDao.queryAll();
	}

	/**
	 * 根据 id 查找国书
	 * @param bid, 图书 id
	 * @return Book
	 */
	public Book findBybid(String bid) {
		return bookDao.queryBook(bid);
	}
}
