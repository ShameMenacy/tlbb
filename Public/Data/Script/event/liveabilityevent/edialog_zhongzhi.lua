--对话事件 npc周老实

--脚本号
x713610_g_ScriptId = 713610

--**********************************
--任务入口函数
--**********************************
function x713610_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0010}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--列举事件
--**********************************
function x713610_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713610_g_ScriptId,"T読 h� mu痭 t靘 hi瑄 tr皀g tr鱰",11,-1)
end

--**********************************
--检测接受条件
--**********************************
function x713610_CheckAccept( sceneId, selfId )
end

--**********************************
--接受
--**********************************
function x713610_OnAccept( sceneId, selfId, AbilityId )
end
