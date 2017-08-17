--����NPC
--��·
--�ű���
x016034_g_scriptId = 016034

--��ӵ�е��¼�ID�б�
x016034_g_eventList={500067}	

--**********************************
--�¼��б�
--**********************************
function x016034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n߽ng "
		else
			PlayerSex = " thi�u hi�p "
		end
		AddText(sceneId,"Tinh T�c H�i �c tr�ng kh�p n�i, n�u kh�ng c�n th�n c�c h� c� th� s� b� m�ng ch� v� m�t con r�t con. T�t nh�t h�y t�i ��y t�i h� ch� �߶ng r�i c�c h� h�y v�o b�i ki�n ch߷ng m�n nh�.")
		for i, eventId in x016034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x016034_OnDefaultEvent( sceneId, selfId,targetId )
	x016034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x016034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--���ܴ�NPC������
--**********************************
function x016034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016034_g_eventList do
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
function x016034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x016034_g_eventList do
		if missionScriptId == findId then
			x016034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x016034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x016034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x016034_OnDie( sceneId, selfId, killerId )
end
