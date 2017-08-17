--��翷帱��....
--���ϴ�Ի��ű�....

--�ű���
x895072_g_ScriptId = 895072

--�����߼��ű���....
x895072_g_FuBenScriptId = 895063

--ս�����ϴ�Ի��ű���....
x895072_g_LoBQZcriptId = 895075

--**********************************
--������ں���....
--**********************************
function x895072_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText(sceneId,"C�c ng߽i s� ph�i tr� gi� cho t�i l�i c�c ng߽i �� g�y ra...")

		if 1 == CallScriptFunction( x895070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "YeLvYan" ) then
		    AddNumText( sceneId, x895072_g_ScriptId, "Khi�u chi�n", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x895072_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x895072_g_FuBenScriptId, "IBQZSTimerRunning", sceneId ) then
		return
	end

	if 2 ~= CallScriptFunction( x895072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoRuJun" ) then
		BeginEvent(sceneId)
			AddText( sceneId, "Ph�i ��nh b�i Ti�u th� huynh � m�i c� th� chi�n �u v�i ta." )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if 2 ~= CallScriptFunction( x895072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
		BeginEvent(sceneId)
			AddText( sceneId, "Ph�i ��nh b�i Ti�u th� huynh � m�i c� th� chi�n �u v�i ta." )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--�ǲ��Ƕӳ�....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������ںͱ��BOSSChi�n �u �򷵻�....
	local ret, msg = CallScriptFunction( x895072_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--�жϵ�ǰ�Ƿ������ս���ϴ�....	
		if 1 ~= CallScriptFunction( x895072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "YeLvYan" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_11}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--������翷��ʱ���������Լ�....
		CallScriptFunction( x895072_g_FuBenScriptId, "OpenBQZTimer", sceneId, 7, x895072_g_ScriptId, -1 ,-1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x895072_OnBQZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x895072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 5 gi�y sau b�t �u!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x895072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 4 gi�y sau b�t �u!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x895072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 3 gi�y sau b�t �u!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x895072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 2 gi�y sau b�t �u!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x895072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 1 gi�y sau b�t �u!" )
		return
	end

	if 2 == step then
		--��ʾChi�n �u b�t �u!....
		CallScriptFunction( x895072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u b�t �u!" )
		--ɾ��NPC....
		CallScriptFunction( x895072_g_FuBenScriptId, "DeleteBOSS", sceneId, "YeLvYan_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		objId = CallScriptFunction( x895072_g_FuBenScriptId, "CreateBOSS", sceneId, "YeLvYan_BOSS", -1, -1 )
		SetMonsterGroupID(sceneId, objId, 1);	--ÿ���������ͬһ��GroupID�����������ǿ��Ի�����Ԯ
		return
	end

end
