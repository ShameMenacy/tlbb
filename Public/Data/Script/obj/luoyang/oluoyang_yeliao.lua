--洛阳NPC
--业了
--普通

--**********************************
--事件交互入口
--**********************************
function x000096_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " C� n呓ng"
	else
		PlayerSex = " Thi猽 hi畃"
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,""..PlayerName..PlayerSex..", chi猲 s� Nh課 M鬾 Quan ra sao r癷? Ta th r nhi玼 d鈔 ch鷑g t� n課 qua th鄋h...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
