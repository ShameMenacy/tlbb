--武当NPC
--张函芝
--普通

--**********************************
--事件交互入口
--**********************************
function x012005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nh靚 b� d課g c黙 ng呓i, h靚h nh� kh鬾g 疬㧟 vui v� cho l. C� c ta c鵱g 餴 ch絠 v緄 ng呓i hay kh鬾g?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
