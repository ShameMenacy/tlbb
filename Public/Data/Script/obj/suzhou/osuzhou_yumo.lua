--苏州NPC
--雨墨
--一般

--**********************************
--事件交互入口
--**********************************
function x001034_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C鬾g t� c黙 ch鷑g ta t鄆 cao, nh 鸶nh tr鷑g.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
