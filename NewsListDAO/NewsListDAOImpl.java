package com.news.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsListDAOImpl implements NewsListDAO{
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/db01?serverTimezone=Asia/Taipei";
	String userid = "root";
	String passwd = "asdf1111";

	private static final String INSERT_STMT = 
		"INSERT INTO news_list (admin_id, news_title, news_content, news_date, news_photo) VALUES (?, ?, ?, ?, ?)";
	private static final String GET_ALL_STMT = 
		"SELECT * FROM news_list order by news_id";
	private static final String GET_ONE_STMT = 
		"SELECT * FROM news_list where news_id = ?";
	private static final String DELETE = 
		"DELETE FROM news_list where news_id = ?";
	private static final String UPDATE = 
		"UPDATE news_list set admin_id=?, news_title=?, news_content=?, news_date=?, news_photo=? where news_id = ?";

	@Override
	public void insert(NewsListVO newsListVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(INSERT_STMT);

			pstmt.setInt(1, newsListVO.getAdminId());
			pstmt.setString(2, newsListVO.getNewsTitle());
			pstmt.setString(3, newsListVO.getNewsContent());
			pstmt.setDate(4, newsListVO.getNewsDate());
			pstmt.setBytes(5, newsListVO.getNewsPhoto());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

	}

	@Override
	public void update(NewsListVO newsListVO) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(UPDATE);

			pstmt.setInt(1, newsListVO.getAdminId());
			pstmt.setString(2, newsListVO.getNewsTitle());
			pstmt.setString(3, newsListVO.getNewsContent());
			pstmt.setDate(4, newsListVO.getNewsDate());
			pstmt.setBytes(5, newsListVO.getNewsPhoto());
			pstmt.setInt(6, newsListVO.getNewsId());

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

	}

	@Override
	public void delete(Integer newsId) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(DELETE);

			pstmt.setInt(1, newsId);

			pstmt.executeUpdate();

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}

	}

	@Override
	public NewsListVO findByPrimaryKey(Integer newsId) {

		NewsListVO newsListVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ONE_STMT);

			pstmt.setInt(1, newsId);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				newsListVO = new NewsListVO();
				newsListVO.setNewsId(rs.getInt("news_id"));
				newsListVO.setAdminId(rs.getInt("admin_id"));
				newsListVO.setNewsTitle(rs.getString("news_title"));
				newsListVO.setNewsContent(rs.getString("news_content"));
				newsListVO.setNewsDate(rs.getDate("news_date"));
				newsListVO.setNewsPhoto(rs.getBytes("news_photo"));

			}

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return newsListVO;
	}

	@Override
	public List<NewsListVO> getAll() {
		List<NewsListVO> list = new ArrayList<NewsListVO>();
		NewsListVO newsListVO = null;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(GET_ALL_STMT);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// empVO ¤]ºÙ¬° Domain objects
				newsListVO = new NewsListVO();
				newsListVO.setNewsId(rs.getInt("news_id"));
				newsListVO.setAdminId(rs.getInt("admin_id"));
				newsListVO.setNewsTitle(rs.getString("news_title"));
				newsListVO.setNewsContent(rs.getString("news_content"));
				newsListVO.setNewsDate(rs.getDate("news_date"));
				newsListVO.setNewsPhoto(rs.getBytes("news_photo"));
				list.add(newsListVO); // Store the row in the list
			}

			// Handle any driver errors
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Couldn't load database driver. "
					+ e.getMessage());
			// Handle any SQL errors
		} catch (SQLException se) {
			throw new RuntimeException("A database error occured. "
					+ se.getMessage());
			// Clean up JDBC resources
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException se) {
					se.printStackTrace(System.err);
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace(System.err);
				}
			}
		}
		return list;
	}

}
