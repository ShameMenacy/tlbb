--洛阳NPC
--镖头
--普通

--**********************************
--事件交互入口
--**********************************
function x000072_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "C� n呓ng"
	else
		PlayerSex = "Thi猽 hi畃"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"B眓 ti陁 c鴆 l ch� t韓 l鄊 tr鱪g, 疬㧟 c� h b誧h l咿ng 鹫o n� nang, m緄 li阯 t鴆 m叨i n錷 kh鬾g m m醫 l n鄌. "..PlayerName..PlayerSex..", c� g� c c醕 h� c� m� l秈, l阯 n鷌 xu痭g bi琻 C醝 Nh Minh t鬷 皤u s莕 s鄋g.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
