--洛阳NPC
--男仆
--普通

--**********************************
--事件交互入口
--**********************************
function x000037_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L鉶 gia 餫ng ngh� ng絠, kh鬾g ai 疬㧟 qu r")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
