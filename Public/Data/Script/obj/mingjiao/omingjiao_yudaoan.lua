--明教NPC
--余道安
--普通

--**********************************
--事件交互入口
--**********************************
function x011009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Th醤h n� 鹫i nh鈔 g 疴y kh鬾g 疬㧟 vui.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
