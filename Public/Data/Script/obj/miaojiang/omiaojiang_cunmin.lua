--苗疆NPC
--村民
--普通

--**********************************
--事件交互入口
--**********************************
function x029005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H鬽 nay ta u痭g r唼u m緄 pha, g鱥 l� H Mi陁 t豼, c鋗 gi醕 r d� ch竨. C� 鹫i s� c� tr靚h 鸬 pha r唼u th kh鬾g ai s醤h n眎.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
