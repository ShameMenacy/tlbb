--NPC
--傀儡
--普通

--**********************************
--事件交互入口
--**********************************
function x014009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"B� nh靚 Ti陁 Dao lo読 F-874 餫ng ti猲 h鄋h x� l� d� li畊 鸬ng t醕: #r#r10: Du瞚 c醤h tay b阯 ph鋓. #r#r20: V鐈 v� ph韆 tr醝. #r#r30: V鐈 v� ph韆 ph鋓. #r#rQuay l読 20, B 馥u tu ho鄋...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
