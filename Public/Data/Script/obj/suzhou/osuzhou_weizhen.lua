--苏州NPC
--魏真
--一般

--**********************************
--事件交互入口
--**********************************
function x001035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " C� n呓ng"
		else
			PlayerSex = " Thi猽 hi畃"
		end
		AddText(sceneId,"    "..PlayerName..PlayerSex..", 瘅 t鄆 � Mai Hoa Trang m緄 th 疬㧟 b鋘 l頽h th")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
