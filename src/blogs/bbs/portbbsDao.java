package blogs.bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class portbbsDao {
	
	private Connection conn;// connection db에 접근하게 해주는 객체
	private ResultSet rs;
	public portbbsDao() {
		try {
			String driverName = "oracle.jdbc.driver.OracleDriver";
			String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
			String dbID = "System";
			String dbPassword = "051617";
			Class.forName(driverName);
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//현재의 시간을 가져오는 함수
	public String getDate() {
		//String SQL = "Select GETDATE()";
		//
		String SQL = "SELECT SYSDATE FROM PORTBBS";
		// Select GETDATE();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";// 데이터베이스 오류
	}
//bbsID 게시글 번호 가져오는 함수
	public int getNext() {
		//String SQL = "SELECT bbsID FROM dbo.[BBS] ORDER BY bbsID DESC";
		String SQL = "SELECT bbsID FROM PORTBBS ORDER BY BBSID DESC";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번째 게시물인경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// 데이터베이스 오류
	}
//글 작성하는 함수
	public int write(String bbsTitle, String userID, String bbsContent) {
		String SQL = "INSERT INTO PORTBBS VALUES(?,?,?,?,?,?)";
	//String SQL = "insert into dbo.[BBS](bbsID, bbsTitle, userID, bbsDate, bbsContent, bbsAvailable) values(?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			/*rs = pstmt.executeQuery();
			System.out.println(SQL);*/
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public ArrayList<portbbs> getList(int pageNumber) {
		
		String SQL = "SELECT * FROM (SELECT * FROM PORTBBS WHERE BBSID <? and BBSAVAILABLE=1 ORDER BY BBSID DESC) WHERE ROWNUM<=10";
		
		//Bbs에서 나오는 걸 보관할수 있는 인스턴스를 생성
		ArrayList<portbbs> list = new ArrayList<portbbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			//게시글의 개수에 따라 값으로 나오게 할려고 그래서 6보다 작게 할려고 모든 글자가 다 나오게 할려고 이다. 그래서 일부러 함수를 만든것이다.
			rs = pstmt.executeQuery();
			//System.out.println("여기 에러요~");
			while (rs.next()) {
				portbbs bbs = new portbbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2)); 
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getTimestamp(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		  String SQL = "select * from (select * from PORTBBS where BBSID <? and BBSAVAILABLE=1 order by BBSID desc) where rownum<=10";
		ArrayList<portbbs> list = new ArrayList<portbbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public portbbs getBbs(int bbsID) {
		//String SQL = "SELCET * FROM dbo.[BBS] WHERE bbsID = ?";
		String SQL = "SELECT * FROM PORTBBS WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			//System.out.println("여기 에러입니까??");
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				portbbs bbs = new portbbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				//bbs.setBbsTitle(rs.getString(4));
				bbs.setBbsDate(rs.getTimestamp(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));

				return bbs;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 수정 함수
		public int update(int bbsID, String bbsTitle, String bbsContent) {
			String SQL = "UPDATE PORTBBS SET bbsTitle = ?, bbsContent = ? WHERE bbsID = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, bbsTitle);
				pstmt.setString(2, bbsContent);
				pstmt.setInt(3, bbsID);
				return pstmt.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1; // 데이터베이스 오류
		}
		
		public int delete(int bbsID) {
			String SQL = "UPDATE PORTBBS SET bbsAvailable = 0 WHERE bbsID = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, bbsID);
				return pstmt.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1; // 데이터베이스 오류
		}
	}
