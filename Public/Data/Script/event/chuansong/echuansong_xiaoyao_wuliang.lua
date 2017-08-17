--玩家进入一个 area 时触发
function x400029_OnEnterArea( sceneId, selfId )
--	if	GetLevel( sceneId, selfId)<20 then
--		BeginEvent(sceneId)
--			strText = "C 鹫t c 20 tr� l阯 m緄 c� th� 皙n n絠 n鄖!"
--			AddText(sceneId,strText);
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--	else
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 6,114,44)
--	end
end

--玩家在一个 area 呆了一段时间没走则定时触发
function x400029_OnTimer( sceneId, selfId )
	-- 毫秒，看在这个 area 停留多久了
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5秒后仍未传送
	if StandingTime >= 5000 then
		x400029_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--玩家离开一个 area 时触发
function x400029_OnLeaveArea( sceneId, selfId )
end
