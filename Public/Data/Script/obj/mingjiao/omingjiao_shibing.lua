--明教NPC
--士兵
--普通

--**********************************
--事件交互入口
--**********************************
function x011010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Quang Minh 痫nh l� 黏t c. Kh鬾g 疬㧟 ch誽 lung tung! C th l誧 疬秐g!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
