--天龙NPC
--破痴
--普通

--**********************************
--事件交互入口
--**********************************
function x013006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ti瑄 t錸g ph醦 hi畊 l� Ph� Si, xu gia � Ni阭 Hoa T�, ti瑄 t錸g 皙n Thi阯 Long t� 瓞 tr� nh�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
