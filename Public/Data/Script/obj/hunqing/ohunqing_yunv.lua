--婚庆副本NPC
--普通

--**********************************
--事件交互入口
--**********************************
function x155004_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"Nh靚 v� t鈔 lang k靉, 皓p trai qu�! Mong m祎 ng鄖 n鄌 t鬷 c鹡g 疬㧟 l鄊 t鈔 n呓ng.");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

