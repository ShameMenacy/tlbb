--����

--�ű���
x002038_g_scriptId = 002038


--��ӵ�е��¼�ID�б�
x002038_g_eventList={210209,210287}

--**********************************
--�¼��б�
--**********************************
function x002038_UpdateEventList( sceneId, selfId,targetId )
	
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "S� mu�i"
	else
		PlayerSex = "S� �"
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) <= 0 then --Add by S�i
		AddText(sceneId,"#{OBJ_dali_0017}")
	elseif Menpai == 0 then
		AddText(sceneId,"  "..PlayerSex..", v� c�ng c�a ng߽i ti�n b� nhanh th�t. �� l�u ta kh�ng tr� v� Thi�u L�m T�, th�t nh� nhung thay!")
	else
		AddText(sceneId,"�� l�u kh�ng nh�n th�y ng߽i. Th�t ��ng ti�c kh�ng ph�i Thi�u L�m � t�")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002038_g_scriptId,"�i Thi�u L�m T� m�t chuy�n.",9,0)
	end
	for i, eventId in x002038_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002038_OnDefaultEvent( sceneId, selfId,targetId )
	x002038_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002038_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �ang trong tr�ng th�i T�o V�n ho�c Th߽ng Nh�n, kh�ng th� d�ch chuy�n.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else	
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 9,95,146)
		end
		
	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	else
		for i, findId in x002038_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
				return
			end
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x002038_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002038_g_eventList do
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
function x002038_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002038_g_eventList do
		if missionScriptId == findId then
			x002038_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002038_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002038_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002038_OnDie( sceneId, selfId, killerId )
end
