--峨嵋NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x015030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hoan ngh阯h ng呓i t緄 Nga My S絥. n猽 ng呓i c gi鷓 疝, h銀 t緄 g S絥 M鬾 t靘 Tri Kh醕h S� 瓞 nh� gi鷓 疝.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
