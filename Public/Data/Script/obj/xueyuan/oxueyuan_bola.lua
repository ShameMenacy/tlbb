--NPC
--博拉
--普通

--**********************************
--事件交互入口
--**********************************
function x021201_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC对话
--**********************************
		AddText(sceneId,"Ng鈔 Nhai Tuy猼 Nguy阯 n絠 n絠 nguy c� th m課h, � trong n鄖 ho誸 鸬ng n阯 c th.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
