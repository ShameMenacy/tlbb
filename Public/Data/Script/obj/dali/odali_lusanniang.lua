--·����

--�ű���
x002042_g_scriptId = 002042


--��ӵ�е��¼�ID�б�
x002042_g_eventList={210209,210287}

--**********************************
--�¼��б�
--**********************************
function x002042_UpdateEventList( sceneId, selfId,targetId )
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " S� mu�i "
	else
		PlayerSex = " S� � "
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) <= 0 then --Add by S�i
		AddText(sceneId,"#{OBJ_dali_0021}")
	elseif Menpai == 4 then
		AddText(sceneId,"  "..PlayerSex..", nh�n ng߽i ti�n b� nhanh nh� v�y, M�nh ch߷ng m�n nh�n h�n vui l�ng l�m ��y. H�y v� Nga My S�n, ch߷ng m�n c� vi�c nh� ng߽i ��!")
	else
		AddText(sceneId,"A di �� ph�t. ��c ph�t t� bi, ph� � ch�ng sinh. Nh�n c�c h� th�ng ti�n nhanh nh� v�y, m�t nh�n t�i hi�m c�, ti�c thay kh�ng � Nga My ta!...")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002042_g_scriptId,"�i Nga My S�n m�t chuy�n",9,0)
	end
	misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--�õ���������к�
	if	IsHaveMission(sceneId,selfId,1060) > 0	 then
		if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and	 GetMissionParam( sceneId, selfId, misIndex,2) == 2   then
			AddNumText(sceneId,x002042_g_scriptId,"S� huynh c� m�t b�c th� ��a cho ng߽i",4,1)
		end
	end
	for i, eventId in x002042_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002042_OnDefaultEvent( sceneId, selfId,targetId )
	x002042_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002042_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Tr�n ng߶i ng߽i c� ng�n phi�u, kh�ng th� truy�n t�ng ���c!");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else	
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 15,89,144)
		end
	elseif	GetNumText()==1	then
		misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--�õ���������к�
		DelItem (  sceneId, selfId, 40002115, 1)	
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"H�y b�o v�i Tu� Ph߽ng s� huynh l� ta �� nh�n ���c th� c�a huynh �y r�i! C�m �n ng߽i nhi�u")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi�m v� ho�n th�nh!")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)

	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	else
		for i, findId in x002042_g_eventList do
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
function x002042_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002042_g_eventList do
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
function x002042_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002042_g_eventList do
		if missionScriptId == findId then
			x002042_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002042_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002042_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002042_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002042_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002042_OnDie( sceneId, selfId, killerId )
end
