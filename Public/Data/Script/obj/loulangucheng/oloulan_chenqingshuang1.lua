--¥��NPC....
--��翷����ʹ....

--�ű���
x892022_g_ScriptId = 892022


--��ӵ�е��¼�ID�б�
x892022_g_eventList={890063}

--**********************************
--�¼��б�
--**********************************
function x892022_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		--AddText(sceneId,"Ʈ��壺СƮר����ʯ���ӣ������������������캮������飬���ֱ�ʯ��7����ç������ֹ�������ϣ���Ʈ����ʯ���ӣ����������飬���캮��7����ç������ֹ�������ϣ�")
		AddText(sceneId,"����ɽ��ר���ռ�����ͼ����7����ç�����7����ڣ������ͳ�������ͼ�������߼���Ʒ��")
		for i, eventId in x892022_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x892022_OnDefaultEvent( sceneId, selfId,targetId )
	x892022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892022_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892022_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x892022_g_ScriptId )
		return
		end
	end
end
