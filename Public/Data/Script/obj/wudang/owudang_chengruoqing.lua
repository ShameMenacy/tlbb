--武当NPC
--程若清
--普通

--**********************************
--事件交互入口
--**********************************
function x012000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"N鷌 V� 衋ng g 疴y 姓o gi醥 ph醫 tri琻 h遪g th竛h, 疸 v唼t qua Long H� S絥, tr� th鄋h th� l馽 姓o gi醥 danh ti猲g nh Trung Hoa.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
