--洛阳NPC
--朴明善
--普通

--**********************************
--事件交互入口
--**********************************
function x000046_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " C� n呓ng"
	else
		PlayerSex = " Thi猽 hi畃"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"L誧 D呓ng c� hoa M鐄 薪n qu� th danh b h� truy玭, s醤h ngang Hoa S絥 Tr� c黙 Cao Ly ta. Nghe n骾 th鄋h T� Ch鈛 c黙 tri玼 T痭g r t呓i 皓p, "..PlayerName..PlayerSex..", 疸 t譶g 皙n 痼 ch遖?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
