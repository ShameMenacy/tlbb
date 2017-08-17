--��翷帱��....
--ս�����ϴ�Ի��ű�....

--�ű���
x890075_g_ScriptId = 890075

--�����߼��ű���....
x890075_g_FuBenScriptId = 890063


--**********************************
--������ں���....
--**********************************
function x890075_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "B�n nh�n �inh Xu�n Thu - Tr߷ng m�n nh�n ph�i Tinh T�c. Mu�n khi�u chi�n v�i ta, h�y ��nh b�i c�c �i th� kh�c tr߾c. C�n th�n n�p m�ng v� �ch!." )

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 == CallScriptFunction( x890075_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" ) then
			AddNumText( sceneId, x890075_g_ScriptId, "Quy�t chi�n �inh Xu�n Thu", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x890075_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x890075_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
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
	if 1 ~= CallScriptFunction( x890075_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" ) then
		return
	end

	--������ںͱ��BOSSChi�n �u �򷵻�....
	local ret, msg = CallScriptFunction( x890075_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--������翷��ʱ���������Լ�....
	CallScriptFunction( x890075_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x890075_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x890075_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x890075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 5 gi�y sau b�t �u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x890075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 4 gi�y sau b�t �u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x890075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 3 gi�y sau b�t �u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x890075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 2 gi�y sau b�t �u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x890075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 1 gi�y sau b�t �u." )
		return
	end

	if 2 == step then
		--��ʾChi�n �u b�t �u.....
		CallScriptFunction( x890075_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u b�t �u." )
	--local nMonsterNum = GetMonsterCount(sceneId)
	--for i=0, nMonsterNum-1 do
		--local MonsterId = GetMonsterObjID(sceneId,i)
		--if 42206 == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			--LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			--SetCharacterDieTime( sceneId, MonsterId, 1000 )
		--end
	--end
		--CallScriptFunction( x890075_g_FuBenScriptId, "DeleteBOSS", sceneId, "MuRongFuLoss_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x890075_g_FuBenScriptId, "CreateBOSS", sceneId, "DingChunQiu_BOSS", -1, -1 )
		return
	end

end
