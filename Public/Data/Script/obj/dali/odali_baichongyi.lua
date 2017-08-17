-- 002058
-- �׳���

--�ű���
x002058_g_scriptId = 002058

--��ӵ�е��¼�ID�б�
x002058_g_eventList={125020}

--**********************************
--�¼��б�
--**********************************
function x002058_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #G$N#WAnh h�ng! Ъn Phong Thi�n ��i ch�ng t� th�c l�c c�a ng߽i �i! H�y gia nh�p m�t �t ng�, c�ng �i tr߷ng ti�n v�o C�nh K� Tr߶ng - Phong Thi�n ��i, h�y ��nh b�i t�t c� c�c �i th� � gi�nh c�c b�u v�t trong ��i B�o S߽ng qu� hi�m nh�!");
		for i, eventId in x002058_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002058_OnDefaultEvent( sceneId, selfId,targetId )
	x002058_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002058_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002058_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x002058_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002058_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x002058_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002058_g_eventList do
		if missionScriptId == findId then
			x002058_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002058_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002058_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002058_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002058_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002058_OnDie( sceneId, selfId, killerId )
end
