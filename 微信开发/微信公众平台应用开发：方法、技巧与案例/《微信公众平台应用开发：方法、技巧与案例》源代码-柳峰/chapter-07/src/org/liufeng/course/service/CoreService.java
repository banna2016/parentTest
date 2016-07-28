package org.liufeng.course.service;

import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.liufeng.course.message.resp.TextMessage;
import org.liufeng.course.util.MessageUtil;

/**
 * ���ķ�����
 * 
 * @author liufeng
 * @date 2013-10-26
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

		try {
			// �����˺ű�ʶ
			String accountId = request.getParameter("accountId");
			// ����parseXml��������������Ϣ
			Map<String, String> requestMap = MessageUtil.parseXml(request);
			// ���ͷ��ʺ�
			String fromUserName = requestMap.get("FromUserName");
			// ������΢�ź�
			String toUserName = requestMap.get("ToUserName");
			// ��Ϣ����
			String msgType = requestMap.get("MsgType");

			TextMessage textMessage = new TextMessage();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);

			// �¼�����
			if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT)) {
				// �¼�����
				String eventType = requestMap.get("Event");
				// ����
				if (eventType.equals(MessageUtil.EVENT_TYPE_SUBSCRIBE)) {
					// �жϹ����˺ű�ʶ
					if ("aaa".equals(accountId))
						textMessage.setContent("���ã���ӭ��ע��ҵA�Ĺٷ�΢�ţ�\n\n���ǿͷ�СA����������СA��");
					else if ("bbb".equals(accountId))
						textMessage.setContent("�ˣ���ϲ�������ҵ���֯�ˣ�\n\n���ǿͷ�СB��������ֱ������Ŷ��");
					respXml = MessageUtil.messageToXml(textMessage);
				} else {
					// TODO �������
				}
			} else {
				// TODO �������
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return respXml;
	}
}
