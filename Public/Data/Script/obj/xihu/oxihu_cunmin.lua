--西湖NPC
--村民
--普通

--**********************************
--事件交互入口
--**********************************
function x030005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H� B鉶 Th鬾 hi畁 gi� kh鬾g 疬㧟 y阯 t頽h 疴u.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
