--婚庆副本NPC
--普通

--**********************************
--事件交互入口
--**********************************
function x155006_OnDefaultEvent(sceneId, selfId,targetId)
	BeginEvent(sceneId);
		AddText(sceneId,"C醕 h� xem v� t鈔 n呓ng kia, xinh 皓p l鄊 sao! Mong ng鄖 n鄌 痼 t読 h� c鹡g 疬㧟 l鄊 t鈔 lang.");
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end

