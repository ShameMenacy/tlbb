--¥��NPC....
--��翷����ʹ....

--�ű���
x001159_g_ScriptId = 001159


--��ӵ�е��¼�ID�б�
x001159_g_eventList={402276,402263,402289,402305}

--**********************************
--�¼��б�
--**********************************
function x001159_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#GPhi�u Di�u Phong#W l� n�i v� c�ng nguy hi�m nh�ng n�u nh� v� anh h�ng n�o �� ��nh b�i #GL� Thu Th�y#W, s� nh�n ���c r�t nhi�u v�t ph�m cao c�p ��. C� l�n...")
		for i, eventId in x001159_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x001159_OnDefaultEvent( sceneId, selfId,targetId )
	x001159_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001159_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001159_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001159_g_ScriptId )
		return
		end
	end
end
