package org.liufeng.course.service;

import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.liufeng.course.message.resp.TextMessage;
import org.liufeng.course.util.GameUtil;
import org.liufeng.course.util.MessageUtil;

/**
 * ���ķ�����
 * 
 * @author liufeng
 * @date 2013-09-29
 */
public class CoreService {
	/**
	 * ����΢�ŷ���������
	 * 
	 * @param request
	 * @return xml
	 */
	public static String processRequest(HttpServletRequest request) {
		// xml��ʽ����Ϣ����
		String respXml = null;
		// Ĭ�Ϸ��ص��ı���Ϣ����
		String respContent = GameService.getGameRule();
		try {
			// ����parseXml��������������Ϣ
			Map<String, String> requestMap = MessageUtil.parseXml(request);
			// ���ͷ��ʺ�
			String fromUserName = requestMap.get("FromUserName");
			// ������΢�ź�
			String toUserName = requestMap.get("ToUserName");
			// ��Ϣ����
			String msgType = requestMap.get("MsgType");

			// �ظ��ı���Ϣ
			TextMessage textMessage = new TextMessage();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);

			// �ı���Ϣ
			if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_TEXT)) {
				String content = requestMap.get("Content").trim();
				// �鿴��Ϸ����
				if (content.equalsIgnoreCase("help")) {
					respContent = GameService.getGameRule();
				}
				// �鿴��Ϸս��
				else if (content.equalsIgnoreCase("score")) {
					respContent = GameService.getUserScore(request, fromUserName);
				}
				// �����4λ���ֲ������ظ�
				else if (GameUtil.verifyNumber(content) && !GameUtil.verifyRepeat(content)) {
					respContent = GameService.process(request, fromUserName, content);
				}
				// ����ĸ�ʽ����
				else {
					respContent = "������4�����ظ������֣����磺0269";
				}
			}
			// �¼�����
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT)) {
				// �¼�����
				String eventType = requestMap.get("Event");
				// ��ע
				if (eventType.equals(MessageUtil.EVENT_TYPE_SUBSCRIBE)) {
					respContent = "��ӭ��ע��������Ϸ��\n�ظ���help���鿴��Ϸ�淨��";
				}
			}
			// �����ı���Ϣ������
			textMessage.setContent(respContent);
			// ���ı���Ϣ����ת����xml
			respXml = MessageUtil.messageToXml(textMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respXml;
	}
}
