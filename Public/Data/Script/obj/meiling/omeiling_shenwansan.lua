--梅岭NPC
--沈万三
--普通

--**********************************
--事件交互入口
--**********************************
function x033001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh鬾g ng� chuy猲 h鄋g ph son n鄖 b醤 nhanh th�, xem ra l n鄖 痍n 疴y r 瘊ng. 衖 qua th鋙 nguy阯, Lan L錸g qu ch鷄 c騨 khen ng㱮 h鄋g c黙 ta, ta ph鋓 t韓h to醤 k� xem chuy猲 n鄖 ki猰 bao nhi陁 l秈...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
