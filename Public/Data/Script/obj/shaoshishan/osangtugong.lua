--��翷帱��....
--ɣ�����Ի��ű�....

--�ű���
x890071_g_ScriptId = 890071

--�����߼��ű���....
x890071_g_FuBenScriptId = 890063

--**********************************
--������ں���....
--**********************************
function x890071_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "Ta s� kh�ng bu�ng tha c�c ng߽i!" )
		AddNumText( sceneId, x890071_g_ScriptId, "Khi�u chi�n", 10, 1 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x890071_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x890071_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
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
	local ret, msg = CallScriptFunction( x890071_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--�жϵ�ǰ�Ƿ������սɣ����....	
	if 1 ~= CallScriptFunction( x890071_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ZhuangJuXian" ) then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_09}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������翷��ʱ���������Լ�....
	CallScriptFunction( x890071_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x890071_g_ScriptId, -1, -1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x890071_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x890071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 5 gi�y sau b�t �u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x890071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 4 gi�y sau b�t �u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x890071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 3 gi�y sau b�t �u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x890071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 2 gi�y sau b�t �u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x890071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 1 gi�y sau b�t �u." )
		return
	end

	if 2 == step then
		--��ʾChi�n �u b�t �u.....
		CallScriptFunction( x890071_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u b�t �u." )
		--ɾ��NPC....
		CallScriptFunction( x890071_g_FuBenScriptId, "DeleteBOSS", sceneId, "ZhuangJuXian_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x890071_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuangJuXian_BOSS", -1, -1 )
		return
	end

end