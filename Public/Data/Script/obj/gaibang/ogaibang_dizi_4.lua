--丐帮NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x010033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� 甬 t� C醝 Bang.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
