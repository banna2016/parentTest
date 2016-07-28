package org.liufeng.course.service;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.liufeng.course.pojo.Game;
import org.liufeng.course.pojo.GameRound;
import org.liufeng.course.util.GameUtil;
import org.liufeng.course.util.MySQLUtil;

/**
 * ��������Ϸҵ����
 * 
 * @author liufeng
 * @date 2013-11-21
 */
public class GameService {
	/**
	 * �������֡���Ϸ�����߼�
	 * 
	 * @param request �������
	 * @param openId �û���OpenID
	 * @param content ��Ϣ����
	 * @return
	 */
	public static String process(HttpServletRequest request, String openId, String content) {
		// ��ȡ�û����һ�δ�������Ϸ
		Game game = MySQLUtil.getLastGame(request, openId);
		// ������Ϸ����ȷ��
		String gameAnswer = null;
		// ���غϵĲ²���
		String guessResult = null;
		// ������Ϸ��id
		int gameId = -1;
		// �Ƿ����µ�һ�֣�Ĭ��Ϊfalse��
		boolean newGameFlag = (null == game || 0 != game.getGameStatus());
		// �µ�һ��
		if (newGameFlag) {
			// ���ɲ��ظ���4λ�������Ϊ��
			gameAnswer = GameUtil.generateRandNumber();
			// ���㱾�غϡ������֡��Ľ����xAyB��
			guessResult = GameUtil.guessResult(gameAnswer, content);
			// ����game
			game = new Game();
			game.setOpenId(openId);
			game.setGameAnswer(gameAnswer);
			game.setCreateTime(GameUtil.getStdDateTime());
			game.setGameStatus(0);
			// ����game����ȡid
			gameId = MySQLUtil.saveGame(request, game);
		}
		// �����µ�һ��
		else {
			gameAnswer = game.getGameAnswer();
			guessResult = GameUtil.guessResult(game.getGameAnswer(), content);
			gameId = game.getGameId();
		}
		// ���浱ǰ��Ϸ�غ�
		GameRound gameRound = new GameRound();
		gameRound.setGameId(gameId);
		gameRound.setOpenId(openId);
		gameRound.setGuessNumber(content);
		gameRound.setGuessTime(GameUtil.getStdDateTime());
		gameRound.setGuessResult(guessResult);
		MySQLUtil.saveGameRound(request, gameRound);
		// ��ѯ������Ϸ�����лغ�
		List<GameRound> roundList = MySQLUtil.findAllRoundByGameId(request, gameId);
		// ������Ϸ�غϣ���װ���û��ظ�����Ϣ
		StringBuffer buffer = new StringBuffer();
		buffer.append("�鿴�淨��ظ���help").append("\n");
		buffer.append("�鿴ս����ظ���score").append("\n");
		for (int i = 0; i < roundList.size(); i++) {
			gameRound = roundList.get(i);
			buffer.append(String.format("��%d�غϣ� %s    %s", i + 1, gameRound.getGuessNumber(), gameRound.getGuessResult())).append("\n");
		}
		// �¶�
		if ("4A0B".equals(guessResult)) {
			buffer.append("��ȷ�𰸣�").append(gameAnswer).append("\n");
			buffer.append("��ϲ���¶��ˣ�[ǿ]").append("\n");
			buffer.append("��������4�����ظ������ֿ�ʼ�µ�һ�֡�");
			MySQLUtil.updateGame(request, gameId, 1, GameUtil.getStdDateTime());
		}
		// 10�غ���û�¶�
		else if (roundList.size() >= 10) {
			buffer.append("��ȷ�𰸣�").append(gameAnswer).append("\n");
			buffer.append("����10�غ϶�û�³��������ֽ�����[����]").append("\n");
			buffer.append("��������4�����ظ������ֿ�ʼ�µ�һ�֡�");
			MySQLUtil.updateGame(request, gameId, 2, GameUtil.getStdDateTime());
		}
		// ���غ�û�¶�
		else {
			buffer.append("���ٽ�������");
		}
		return buffer.toString();
	}

	/**
	 * �������֡���Ϸ�淨
	 * 
	 * @return String
	 */
	public static String getGameRule() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("����������Ϸ�淨��").append("\n");
		buffer.append("ϵͳ�趨һ��û���ظ����ֵ�4λ������������£�ÿ��10�λ��ᡣ").append("\n");
		buffer.append("ÿ��һ�Σ�ϵͳ������²���xAyB��x��ʾ������λ�þ���ȷ�����ĸ�����y��ʾ������ȷ��λ�ò��Ե����ĸ�����").append("\n");
		buffer.append("��Ҹ��ݲ²���xAyBһֱ�£�ֱ������(4A0B)Ϊֹ��").append("\n");
		buffer.append("���10�ζ�û���У�ϵͳ�ṫ���𰸣���Ϸ������").append("\n");
		buffer.append("�����������һ��û���ظ����ֵ�4λ������ʼ��Ϸ�����磺7890");
		return buffer.toString();
	}

	/**
	 * �������֡���Ϸս��
	 * 
	 * @param request �������
	 * @param openId �û���OpenID
	 * @return
	 */
	public static String getUserScore(HttpServletRequest request, String openId) {
		StringBuffer buffer = new StringBuffer();
		HashMap<Integer, Integer> scoreMap = MySQLUtil.getScoreByOpenId(request, openId);
		if (null == scoreMap || 0 == scoreMap.size()) {
			buffer.append("����û�������������Ϸ��").append("\n");
			buffer.append("������4�����ظ������ֿ�ʼ�µ�һ�֣����磺0269");
		} else {
			buffer.append("������Ϸս�����£�").append("\n");
			for (Integer status : scoreMap.keySet()) {
				if (0L == status) {
					buffer.append("��Ϸ�У�").append(scoreMap.get(status)).append("\n");
				} else if (1L == status) {
					buffer.append("ʤ��������").append(scoreMap.get(status)).append("\n");
				} else if (2L == status) {
					buffer.append("ʧ�ܾ�����").append(scoreMap.get(status)).append("\n");
				}
			}
			buffer.append("������4�����ظ������ֿ�ʼ�µ�һ�֣����磺0269");
		}
		return buffer.toString();
	}
}
