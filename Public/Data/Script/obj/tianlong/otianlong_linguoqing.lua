--天龙NPC
--林国清
--普通

--**********************************
--事件交互入口
--**********************************
function x013008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H� qu鈔 L鈓 Qu痗 Thanh ph鴑g th醤h ch� t緄 v an l鉶 ph� ho鄋g.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
