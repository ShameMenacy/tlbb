--苏州NPC
--张耒
--一般

--**********************************
--事件交互入口
--**********************************
function x001004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " C� n呓ng"
		else
			PlayerSex = " Thi猽 hi畃"
		end
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c醕 h� c鹡g t緄 d� thi? 玄i khi thi xong, t読 h� mu痭 皙n b醝 ki猲 s� ph� "..PlayerSex.." kh鬾g bi猼 c� ph鋓 c鵱g 餴 v� ph韆 tr呔c?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
