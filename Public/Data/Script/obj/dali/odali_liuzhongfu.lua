-- 大理NPC
-- 刘仲甫

x002092_g_scriptId = 002092

--**********************************
--事件交互入口
--**********************************
function x002092_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "L遳 M� 皙n nay ph鄊 52 n錷, v鏽 ch遖 th c� ai x裯g 疳ng l� 鸶ch th�. M n錷 tr呔c, ta 疸 b読 d呔i tay m祎 v� L� S絥 Ti阯 Nh鈔, l鷆 痼 ta m緄 bi猼 thi阯 ngo読 h鎢 thi阯, nh鈔 th唼ng h鎢 nh鈔..." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
