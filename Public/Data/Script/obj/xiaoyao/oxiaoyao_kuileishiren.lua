--NPC
--傀儡
--普通

--**********************************
--事件交互入口
--**********************************
function x014010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B� nh靚 Ti陁 Dao lo読 F-16 疸 疬㧟 kh鬷 ph鴆 l読 t� l瞚 nghi阭 tr鱪g c黙 h� th痭g.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
