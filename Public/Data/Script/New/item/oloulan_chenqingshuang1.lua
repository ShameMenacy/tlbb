--¥��NPC....
--��翷����ʹ....

--�ű���
x893022_g_ScriptId = 893022


--��ӵ�е��¼�ID�б�
x893022_g_eventList={890063}

--**********************************
--�¼��б�
--**********************************
function x893022_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		--AddText(sceneId,"Ʈ��壺СƮר����ʯ���ӣ������������������캮������飬���ֱ�ʯ��7����ç������ֹ�������ϣ���Ʈ����ʯ���ӣ����������飬���캮��7����ç������ֹ�������ϣ�")
		AddText(sceneId,"Ľ��ɽׯ����˵������Ľ��������פ�������棬�ǳ���ǿ������������ǳ�������ϡ�е���Ʒ��")
		for i, eventId in x893022_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x893022_OnDefaultEvent( sceneId, selfId,targetId )
	x893022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x893022_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x893022_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x893022_g_ScriptId )
		return
		end
	end
end
