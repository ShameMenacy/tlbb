--NPC萨雪
--苍山
--普通

--**********************************
--事件交互入口
--**********************************
function x025112_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC对话
--**********************************
		AddText(sceneId,"M瞚 n錷 m鵤 痿ng 皙n n絠 疴y tuy猼 ph� kh n絠. N� 餫ng 醡 ch� g� 疴y ? �! M祎 th� gi緄 k� di畊 nh遪g c� ch鷗 疳ng s�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
