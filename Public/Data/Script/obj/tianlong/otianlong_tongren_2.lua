--大理NPC
--天仙妹妹
--普通

--**********************************
--事件交互入口
--**********************************
function x714007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Y猽 huy畉 c黙 th� d呓ng minh 鹫i tr叨ng kinh bao g癿: th呓ng d呓ng, h䅟 c痗, 鈓 kh�, thi阯 l竎h, 鬾 l遳, th� tam l�, kh鷆 tr�, ng� ng� l�, c� c痶, thi阯 痫nh, ngh阯h h呓ng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
