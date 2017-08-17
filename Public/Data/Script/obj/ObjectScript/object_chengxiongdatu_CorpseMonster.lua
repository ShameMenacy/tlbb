--动态生成的僵尸

x807001_g_scriptId=807001



--**********************************

--事件交互入口

--**********************************

function x807001_OnDefaultEvent( sceneId, selfId, targetId )

	--判断是否能够激活该npc的条件

	--PrintStr("haha...我是僵尸")

	local npcLevel = GetCharacterLevel(sceneId, targetId)

	local teamCount = GetTeamMemberCount(sceneId, selfId)

	local teamLeaderID = GetTeamLeader(sceneId, selfId)

	local teamLeaderLevel = GetCharacterLevel(sceneId, teamLeaderID)

	

	--PrintNum(teamLeaderID)

	--PrintNum(teamCount)

	--PrintNum(teamLeaderLevel)

	--PrintNum(npcLevel)

	
	--取得玩家附近的队友数量（包括自己）
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if  nearteammembercount < 1 then	

		BeginEvent(sceneId)

			AddText(sceneId, "D醡 coi th叨ng ta, ch� 韙 c鹡g ph鋓 l� 3 ng叨i h䅟 l読 m緄 疬㧟, ha ha.")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return

	elseif teamLeaderLevel < npcLevel then

		--提示条件不符

		BeginEvent(sceneId)

			AddText(sceneId, "D醡 coi th叨ng ta, 鹌ng c cao h絥 s� bi猼 l㱮 h読 c黙 ta")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return



	else

		--激活npc

		--PrintStr("active npc...")

		--设置对怪为敌对的 目前是28号是敌对的，如果有人改变了相应的势力声望那我就惨了！！:-(((
		SetUnitReputationID(sceneId, selfId, targetId, 28)


	end

	

end



function x807001_OnDie(sceneId, selfId, killerId)



end

