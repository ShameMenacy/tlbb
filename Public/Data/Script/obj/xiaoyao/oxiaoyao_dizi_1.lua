--逍遥NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x014030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C th trong L錸g Ba 械ng 馥y r鐈 c� quan, 鹱ng n阯 餴 v鄌 trong khu c 鸶a. N猽 c醕 h� c s� gi鷓 疝, m秈 皙n g Tri kh醕h s� � g c豠 鸬ng 瓞 t靘 s� gi鷓 疝.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
