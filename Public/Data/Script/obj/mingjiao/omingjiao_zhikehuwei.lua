--����NPC
--��·
--�ű���
x011034_g_scriptId = 011034

--��ӵ�е��¼�ID�б�
x011034_g_eventList={500062}	

--**********************************
--�¼��б�
--**********************************
function x011034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n߽ng "
		else
			PlayerSex = " thi�u hi�p "
		end
		AddText(sceneId,"Quang Minh �i�n th�nh h�a r�c ch�y, n�u kh�ng c�n th�n � r�i xu�ng Li�t H�a th� ch� c�n �߶ng b�n m�ng cho Qu� D� Xoa. N�u c�m th�y kh� kh�n c�c h� c� th� t�m ta, ta s� ch� �߶ng gi�p.")
		for i, eventId in x011034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x011034_OnDefaultEvent( sceneId, selfId,targetId )
	x011034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x011034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--���ܴ�NPC������
--**********************************
function x011034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011034_g_eventList do
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
function x011034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x011034_g_eventList do
		if missionScriptId == findId then
			x011034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x011034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x011034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x011034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x011034_OnDie( sceneId, selfId, killerId )
end
