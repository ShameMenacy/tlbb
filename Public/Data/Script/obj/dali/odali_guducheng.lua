--大理NPC
--古笃诚
--普通

--**********************************
--事件交互入口
--**********************************
function x002012_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "C� n呓ng"
	else
		PlayerSex = "Thi猽 hi畃"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", 疸 l鈛 ng鄖 kh鬾g th ng呓i. Ho鄋g th唼ng 餫ng ch� ng呓i 痼!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
