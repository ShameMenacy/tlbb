--天山NPC
--天山童姥
--普通

--**********************************
--事件交互入口
--**********************************
function x017000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Con ranh L� Thu Th鼀 n� t韓h 瘊ng ng鄖 l鉶 l鉶 c鋓 l鉶 ho鄋 鸢ng 瓞 皙n ph�... Phen n鄖 l鉶 l鉶 ph鋓 quy猼 m祎 tr sinh t� v緄 n�...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
