--��翷帱��....
--���ϴ�Ի��ű�....

--�ű���
x890072_g_ScriptId = 890072

--�����߼��ű���....
x890072_g_FuBenScriptId = 890063

--ս�����ϴ�Ի��ű���....
x890072_g_LossScriptId = 890075

--**********************************
--������ں���....
--**********************************
function x890072_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText( sceneId, "H�ng ph�c ��i Y�n th�t t߷ng trong v� v�ng...#rThi�n �߶ng c� �߶ng l�n ng߽i kh�ng �i, �a ng�c v� m�n ng߽i l�i d�n x�c �n.#r#b#YN�p m�ng �i!...." )
		AddNumText( sceneId, x890072_g_ScriptId, "Khi�u chi�n", 10, 1 )

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		--if 1 == CallScriptFunction( x890072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" ) then
			--AddNumText( sceneId, x890072_g_ScriptId, "��ս����ˮ��", 10, 2 )
		--end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x890072_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x890072_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
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
	local ret, msg = CallScriptFunction( x890072_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	if GetNumText() == 1 then

		--�жϵ�ǰ�Ƿ������ս���ϴ�....	
		if 1 ~= CallScriptFunction( x890072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "MuRongFu" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_11}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--������翷��ʱ���������Լ�....
		CallScriptFunction( x890072_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x890072_g_ScriptId, -1 ,-1 )

	elseif GetNumText() == 2 then

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 ~= CallScriptFunction( x890072_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" ) then
			return
		end
		--������翷��ʱ������������ˮ....
		CallScriptFunction( x890072_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x890072_g_LossScriptId, -1 ,-1 )

	end

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x890072_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 5 gi�y sau b�t �u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 4 gi�y sau b�t �u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 3 gi�y sau b�t �u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 2 gi�y sau b�t �u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 1 gi�y sau b�t �u." )
		return
	end

	if 2 == step then
		--��ʾChi�n �u b�t �u.....
		CallScriptFunction( x890072_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u b�t �u." )
		--ɾ��NPC....
		CallScriptFunction( x890072_g_FuBenScriptId, "DeleteBOSS", sceneId, "MuRongFu_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x890072_g_FuBenScriptId, "CreateBOSS", sceneId, "MuRongFu_BOSS", -1, -1 )
		return
	end

end
