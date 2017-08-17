-- 城市任务副本回城市的传送点

x400125_g_ScriptId = 400125
x400125_g_ControlScript = 600032

-- 玩家进入传送点
function x400125_OnEnterArea( sceneId, selfId )
	CallScriptFunction( x400125_g_ControlScript, "BackToCity", sceneId, selfId )
end

-- 玩家停留在传送点
function x400125_OnTimer( sceneId, selfId )
	return
end

-- 玩家离开传送点
function x400125_OnLeaveArea( sceneId, selfId )
	return
end
