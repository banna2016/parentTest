package org.liufeng.course.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.liufeng.course.pojo.Game;
import org.liufeng.course.pojo.GameRound;

/**
 * Mysql���ݿ������
 * 
 * @author liufeng
 * @date 2013-11-21
 */
public class MySQLUtil {
	/**
	 * ��ȡMysql���ݿ�����
	 * 
	 * @return Connection
	 */
	private Connection getConn(HttpServletRequest request) {
		Connection conn = null;

		// ��request����ͷ��ȡ��IP���˿ڡ��û���������
		String host = request.getHeader("BAE_ENV_ADDR_SQL_IP");
		String port = request.getHeader("BAE_ENV_ADDR_SQL_PORT");
		String username = request.getHeader("BAE_ENV_AK");
		String password = request.getHeader("BAE_ENV_SK");
		// ���ݿ�����
		String dbName = "FTGJUvPHrbXsLGsYpwlp";
		// JDBC URL
		String url = String.format("jdbc:mysql://%s:%s/%s", host, port, dbName);

		try {
			// ����MySQL����
			Class.forName("com.mysql.jdbc.Driver");
			// ��ȡ���ݿ�����
			conn = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * �ͷ�JDBC��Դ
	 * 
	 * @param conn ���ݿ�����
	 * @param ps
	 * @param rs ��¼��
	 */
	private void releaseResources(Connection conn, PreparedStatement ps, ResultSet rs) {
		try {
			if (null != rs)
				rs.close();
			if (null != ps)
				ps.close();
			if (null != conn)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * ������Ϸ��Ϣ
	 * 
	 * @param request �������
	 * @param game ��Ϸ����
	 * @return gameId
	 */
	public static int saveGame(HttpServletRequest request, Game game) {
		int gameId = -1;
		String sql = "insert into game(open_id, game_answer, create_time, game_status, finish_time) values(?, ?, ?, ?, ?)";

		MySQLUtil mysqlUtil = new MySQLUtil();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = mysqlUtil.getConn(request);
			// ������Ϸ
			ps = conn.prepareStatement(sql);
			ps.setString(1, game.getOpenId());
			ps.setString(2, game.getGameAnswer());
			ps.setString(3, game.getCreateTime());
			ps.setInt(4, game.getGameStatus());
			ps.setString(5, game.getFinishTime());
			ps.executeUpdate();
			// ��ȡ��Ϸ��id
			sql = "select game_id from game where open_id=? and game_answer=? order by game_id desc limit 0,1";
			ps = conn.prepareStatement(sql);
			ps.setString(1, game.getOpenId());
			ps.setString(2, game.getGameAnswer());
			rs = ps.executeQuery();
			if (rs.next()) {
				gameId = rs.getInt("game_id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ͷ���Դ
			mysqlUtil.releaseResources(conn, ps, rs);
		}
		return gameId;
	}

	/**
	 * ��ȡ�û����һ�δ�������Ϸ <br>
	 * 
	 * @param request �������
	 * @param openId �û���OpendID
	 * @return
	 */
	public static Game getLastGame(HttpServletRequest request, String openId) {
		Game game = null;
		String sql = "select * from game where open_id=? order by game_id desc limit 0,1";

		MySQLUtil mysqlUtil = new MySQLUtil();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = mysqlUtil.getConn(request);
			ps = conn.prepareStatement(sql);
			ps.setString(1, openId);
			rs = ps.executeQuery();
			if (rs.next()) {
				game = new Game();
				game.setGameId(rs.getInt("game_id"));
				game.setOpenId(rs.getString("open_id"));
				game.setGameAnswer(rs.getString("game_answer"));
				game.setCreateTime(rs.getString("create_time"));
				game.setGameStatus(rs.getInt("game_status"));
				game.setFinishTime(rs.getString("finish_time"));
			}
		} catch (SQLException e) {
			game = null;
			e.printStackTrace();
		} finally {
			// �ͷ���Դ
			mysqlUtil.releaseResources(conn, ps, rs);
		}
		return game;
	}

	/**
	 * ������Ϸid�޸���Ϸ״̬�����ʱ��
	 * 
	 * @param request �������
	 * @param gameId ��Ϸid
	 * @param gameStatus ��Ϸ״̬��0:��Ϸ�� 1:�ɹ� 2:ʧ�� 3:ȡ����
	 * @param finishTime ��Ϸ���ʱ��
	 */
	public static void updateGame(HttpServletRequest request, int gameId, int gameStatus, String finishTime) {
		String sql = "update game set game_status=?, finish_time=? where game_id=?";
		MySQLUtil mysqlUtil = new MySQLUtil();
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = mysqlUtil.getConn(request);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, gameStatus);
			ps.setString(2, finishTime);
			ps.setInt(3, gameId);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ͷ���Դ
			mysqlUtil.releaseResources(conn, ps, null);
		}
	}

	/**
	 * ������Ϸ�Ļغ���Ϣ
	 * 
	 * @param request �������
	 * @param gameRound ��Ϸ�غ϶���
	 */
	public static void saveGameRound(HttpServletRequest request, GameRound gameRound) {
		String sql = "insert into game_round(game_id, open_id, guess_number, guess_time, guess_result) values (?, ?, ?, ?, ?)";
		MySQLUtil mysqlUtil = new MySQLUtil();
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = mysqlUtil.getConn(request);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, gameRound.getGameId());
			ps.setString(2, gameRound.getOpenId());
			ps.setString(3, gameRound.getGuessNumber());
			ps.setString(4, gameRound.getGuessTime());
			ps.setString(5, gameRound.getGuessResult());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ͷ���Դ
			mysqlUtil.releaseResources(conn, ps, null);
		}
	}

	/**
	 * ������Ϸid��ȡ��Ϸ��ȫ���غ�<br>
	 * 
	 * @param request �������
	 * @param gameId ��Ϸid
	 * @return
	 */
	public static List<GameRound> findAllRoundByGameId(HttpServletRequest request, int gameId) {
		List<GameRound> roundList = new ArrayList<GameRound>();
		// ����id��������
		String sql = "select * from game_round where game_id=? order by id asc";
		MySQLUtil mysqlUtil = new MySQLUtil();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = mysqlUtil.getConn(request);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, gameId);
			rs = ps.executeQuery();
			GameRound round = null;
			while (rs.next()) {
				round = new GameRound();
				round.setGameId(rs.getInt("game_id"));
				round.setOpenId(rs.getString("open_id"));
				round.setGuessNumber(rs.getString("guess_number"));
				round.setGuessTime(rs.getString("guess_time"));
				round.setGuessResult(rs.getString("guess_result"));
				roundList.add(round);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// �ͷ���Դ
			mysqlUtil.releaseResources(conn, ps, rs);
		}
		return roundList;
	}

	/**
	 * ��ȡ�û���ս��
	 * 
	 * @param request �������
	 * @param openId �û���OpenID
	 * @return HashMap<Integer, Integer>
	 */
	public static HashMap<Integer, Integer> getScoreByOpenId(HttpServletRequest request, String openId) {
		HashMap<Integer, Integer> scoreMap = new HashMap<Integer, Integer>();
		// ����id��������
		String sql = "select game_status,count(*) from game where open_id=? group by game_status order by game_status asc";
		MySQLUtil mysqlUtil = new MySQLUtil();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = mysqlUtil.getConn(request);
			ps = conn.prepareStatement(sql);
			ps.setString(1, openId);
			rs = ps.executeQuery();
			while (rs.next()) {
				scoreMap.put(rs.getInt(1), rs.getInt(2));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// �ͷ���Դ
			mysqlUtil.releaseResources(conn, ps, rs);
		}
		return scoreMap;
	}
}
