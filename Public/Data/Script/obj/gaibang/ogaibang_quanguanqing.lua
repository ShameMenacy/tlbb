--丐帮NPC
--全冠清
--普通

--**********************************
--事件交互入口
--**********************************
function x010004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Th� l緉 c黙 ph� bang ch� nh 鸶nh ph鋓 b醥, ai ph鋘 鸠i k� 痼 ch韓h l� 鸢ng b鱪 c黙 l� gi猼 ch猼 M� ph� bang ch�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
