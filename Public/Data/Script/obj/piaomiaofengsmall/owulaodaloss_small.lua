--缥缈峰副本....
--战败乌老大对话脚本....

--脚本号
x402288_g_ScriptId = 402288

--副本逻辑脚本号....
x402288_g_FuBenScriptId = 402276


--**********************************
--任务入口函数....
--**********************************
function x402288_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "#{PMF_20080521_19}" )

		--判断当前是否可以挑战李秋水....	
		if 1 == CallScriptFunction( x402288_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			AddNumText( sceneId, x402288_g_ScriptId, "T� chi猲 L� Thu Th鼀", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--事件列表选中一项
--**********************************
function x402288_OnEventRequest( sceneId, selfId, targetId, eventId )

	--如果正在激活BOSS则返回....
	if 1 == CallScriptFunction( x402288_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
		return
	end

	--是不是队长....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--判断当前是否可以挑战李秋水....	
	if 1 ~= CallScriptFunction( x402288_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
		return
	end

	--如果正在和别的BOSSChi猲 黏u 则返回....
	local ret, msg = CallScriptFunction( x402288_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--开启缥缈峰计时器来激活自己....
	CallScriptFunction( x402288_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402288_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--缥缈峰计时器的OnTimer....
--**********************************
function x402288_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x402288_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 5 gi鈟 sau b 馥u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x402288_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 4 gi鈟 sau b 馥u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x402288_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 3 gi鈟 sau b 馥u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x402288_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 2 gi鈟 sau b 馥u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x402288_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u 1 gi鈟 sau b 馥u." )
		return
	end

	if 2 == step then
		--提示Chi猲 黏u b 馥u.....
		CallScriptFunction( x402288_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi猲 黏u b 馥u." )
		return
	end

	if 1 == step then
		--建立BOSS....
		CallScriptFunction( x402288_g_FuBenScriptId, "CreateBOSS", sceneId, "LiQiuShui_BOSS", -1, -1 )
		return
	end

end
