--大理NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x013033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� 甬 t� ph醝 Thi阯 Long.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
