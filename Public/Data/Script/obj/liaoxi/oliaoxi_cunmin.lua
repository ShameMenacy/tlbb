--辽西NPC
--村民
--普通

--**********************************
--事件交互入口
--**********************************
function x021005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ch鷑g t鬷 hi畁 t読 b� m� ph� t c鬾g, ch� y猽 l� v� ng叨i M鬾g C� qu� 韙, l読 kh鬾g bi猼 餺鄋 k猼. Nh 鸶nh s� c� ng鄖 m祎 v� Khan v� 鹫i s� l鉵h 鹫o d鈔 M鬾g C� 餴 t緄 chi猲 thg.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
