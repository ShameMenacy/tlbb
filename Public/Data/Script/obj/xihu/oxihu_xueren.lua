-- 中秋NPC
-- 雪人

x050200_g_scriptId = 050200

--**********************************
--事件交互入口
--**********************************
function x050200_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta ........ Ta l� m祎 Ng叨i Tuy猼!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
