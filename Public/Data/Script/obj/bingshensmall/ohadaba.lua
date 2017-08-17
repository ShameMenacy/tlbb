--��翷帱��....
--����ԶԻ��ű�....

--�ű���
x895070_g_ScriptId = 895070

--�����߼��ű���....
x895070_g_FuBenScriptId = 895063

--**********************************
--������ں���....
--**********************************
function x895070_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"Thi�n �߶ng c� �߶ng ng߽i kh�ng �i, c� th�ch xu�ng t�m g�p qu� d� xoa �a ng�c l�m chi?")
		--�жϵ�ǰ�Ƿ������ս....	
		if 0 == CallScriptFunction( x895070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoYiFeng" ) then
		    AddNumText( sceneId, x895070_g_ScriptId, "Khi�u chi�n", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x895070_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x895070_g_FuBenScriptId, "IBQZSTimerRunning", sceneId ) then
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
	local ret, msg = CallScriptFunction( x895070_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--�жϵ�ǰ�Ƿ������սɣ����....	
	if 0 ~= CallScriptFunction( x895070_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "XiaoYiFeng" ) then
		BeginEvent(sceneId)
			AddText( sceneId, "Ng߽i �� khi�u chi�n r�i!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������翷��ʱ���������Լ�....
	CallScriptFunction( x895070_g_FuBenScriptId, "OpenBQZTimer", sceneId, 7, x895070_g_ScriptId, -1 ,-1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x895070_OnBQZTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 5 gi�y sau b�t �u!" )
		return
	end

	if 6 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 4 gi�y sau b�t �u!" )
		return
	end

	if 5 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 3 gi�y sau b�t �u!" )
		return
	end

	if 4 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 2 gi�y sau b�t �u!" )
		return
	end

	if 3 == step then
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 1 gi�y sau b�t �u!" )
		return
	end

	if 2 == step then
		--��ʾChi�n �u b�t �u!....
		CallScriptFunction( x895070_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u b�t �u!" )
		--ɾ��NPC....
		CallScriptFunction( x895070_g_FuBenScriptId, "DeleteBOSS", sceneId, "XiaoYiFeng_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x895070_g_FuBenScriptId, "CreateBOSS", sceneId, "XiaoYiFeng_BOSS", -1, -1 )
		return
	end

end
