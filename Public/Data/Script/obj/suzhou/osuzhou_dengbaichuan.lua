--苏州NPC
--邓百川
--一般

--**********************************
--事件交互入口
--**********************************
function x001016_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C鬾g t� c� ch� th醝 鸬 皤u c馽 gi痭g l鉶 gia, ch� c� tu眎 t醕 ch遖 t緄, ch� 瘙i tr叻ng th鄋h")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
