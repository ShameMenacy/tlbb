--�Ż�

--�ű���
x002041_g_scriptId = 002041


--��ӵ�е��¼�ID�б�
x002041_g_eventList={210209,210287}

--**********************************
--�¼��б�
--**********************************
function x002041_UpdateEventList( sceneId, selfId,targetId )
	
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "S� mu�i"
	else
		PlayerSex = "S� �"
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) <= 0 then --Add by S�i
		AddText(sceneId,"#{OBJ_dali_0020}")
	elseif Menpai == 3 then
		AddText(sceneId,"  "..PlayerSex..", v� c�ng c�a ng߽i ti�n b� nhanh th�t. Xem ra ch�n nh�n �� gi�o hu�n ng߽i h�t l�ng r�i!")
	else
		AddText(sceneId,"Nh�n ng߽i m�t nh�n t�i nh� v�y th�t ti�c kh�ng gia nh�p V� �ang.")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002041_g_scriptId,"�i V� �ang S�n m�t chuy�n",9,0)
	end
	misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--�õ���������к�
	if	IsHaveMission(sceneId,selfId,1060) > 0	 then
		if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and	 GetMissionParam( sceneId, selfId, misIndex,2) == 3   then
			AddNumText(sceneId,x002041_g_scriptId,"S� huynh ��a ng߽i m�t t�n v�t.",4,1)
		end
	end
	for i, eventId in x002041_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002041_OnDefaultEvent( sceneId, selfId,targetId )
	x002041_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002041_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �ang trong tr�ng th�i T�o V�n ho�c Th߽ng Nh�n, kh�ng th� d�ch chuy�n.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 12,93,182)
		end
	elseif	GetNumText()==1	then
		misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--�õ���������к�
		DelItem (  sceneId, selfId, 40002115, 1)	
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"B�o cho Tu� Ph߽ng s� huynh ta �� �n. C�m �n nhi�u.")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi�m v� ho�n th�nh!")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)

	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_wudang_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_wudang_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_wudang_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_wudang_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	else
		for i, findId in x002041_g_eventList do
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
function x002041_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002041_g_eventList do
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
function x002041_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002041_g_eventList do
		if missionScriptId == findId then
			x002041_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002041_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002041_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002041_OnDie( sceneId, selfId, killerId )
end
