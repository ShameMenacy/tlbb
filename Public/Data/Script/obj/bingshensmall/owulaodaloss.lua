--��翷帱��....
--ս�����ϴ�Ի��ű�....

--�ű���
x895075_g_ScriptId = 895075

--�����߼��ű���....
x895075_g_FuBenScriptId = 895063


--**********************************
--������ں���....
--**********************************
function x895075_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"C�c ng߽i s� ph�i tr� gi� cho t�i l�i c�c ng߽i �� g�y ra...")

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 == CallScriptFunction( x895075_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "YeLvLian" ) then
			AddNumText( sceneId, x895075_g_ScriptId, "Quy�t chi�n", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x895075_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x895075_g_FuBenScriptId, "IBQZSTimerRunning", sceneId ) then
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

	--�жϵ�ǰ�Ƿ������ս����ˮ....	
	if 1 ~= CallScriptFunction( x895075_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "YeLvLian" ) then
		return
	end

	--������ںͱ��BOSSChi�n �u �򷵻�....
	local ret, msg = CallScriptFunction( x895075_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--������翷��ʱ���������Լ�....
	CallScriptFunction( x895075_g_FuBenScriptId, "OpenBQZTimer", sceneId, 7, x895075_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x895075_OnBQZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x895075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 5 gi�y sau b�t �u!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x895075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 4 gi�y sau b�t �u!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x895075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 3 gi�y sau b�t �u!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x895075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 2 gi�y sau b�t �u!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x895075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 1 gi�y sau b�t �u!" )
		return
	end

	if 2 == step then
		--��ʾChi�n �u b�t �u!....
		CallScriptFunction( x895075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u b�t �u!" )
		--ɾ��NPC....
		CallScriptFunction( x895075_g_FuBenScriptId, "DeleteBOSS", sceneId, "LiFan_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x895075_g_FuBenScriptId, "CreateBOSS", sceneId, "YeLvLian_BOSS", -1, -1 )
		return
	end

end
