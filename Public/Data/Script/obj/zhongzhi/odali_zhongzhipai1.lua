--大理
--种植牌1

--脚本号
x714057_g_ScriptId = 714057

event_xuanzezhiwu = 713550

--植物产品编号列表
x714057_g_eventList={20104001,20104002,20104005,20104007,20104009,20104012,
			20105001,20105004,20105007,20105012} --植物的编号,不是eventId
--**********************************
--事件交互入口
--**********************************
function x714057_OnDefaultEvent( sceneId, selfId,targetId )
	--PLANTFLAG[1] =0
	--PLANTFLAG[2] =0
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)
	--如果玩家不会种植技能
	if AbilityLevel == 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "C醕 h� n阯 h鱟 k� n錸g tr皀g tr鱰 tr呔c")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--如果玩家会种植技能
	if AbilityLevel ~= 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "M瞚 m祎 v tr皀g 皤u c� th� chia th鄋h 2 lo読: thu ho誧h s緈 v� mu祅. Th秈 gian tr叻ng th鄋h c黙 lo読 thu ho誧h s緈 ch譶g 5 ph鷗. Th秈 gian tr叻ng th鄋h c黙 lo読 thu ho誧h mu祅 ch譶g 70 ph鷗. Nh遪g k猼 qu� thu ho誧h 疬㧟 r nhi玼. anh ch鱪 lo読 n鄌?")
			AddNumText(sceneId, x714057_g_ScriptId, "Tr皀g lo読 thu ho誧h s緈",6,254)
			AddNumText(sceneId, x714057_g_ScriptId, "Tr皀g lo読 thu ho誧h mu祅",6,255)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--事件列表选中一项
--**********************************
function x714057_OnEventRequest( sceneId, selfId, targetId, eventId )
	local name_Index
	local NumText = GetNumText()

	if NumText == 254 or NumText == 255 then
		BeginEvent(sceneId)
			AddText(sceneId, "Xin ch鱪 lo読 v tr皀g")
			--通过x714057_g_eventList和scriptglobal中的植物列表对比，并根据玩家种植技能等来显示相应植物
			for i, eventId in x714057_g_eventList do	--遍历这个稻草人可以种植的植物列表
				for j,g_ZhiWuId in V_ZHONGZHI_ID do		--遍历scriptglobal中的所有植物列表
					if eventId == g_ZhiWuId then
						AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)
						if AbilityLevel >= V_ZHONGZHI_NEEDLEVEL[j] then --如果玩家种植技能等>=该植物要求技能等]
							
							if NumText == 254 then
								name_Index = j								
							else
								name_Index = j + getn(V_ZHONGZHI_NAME)/2
							end

							AddNumText(sceneId, x714057_g_ScriptId, V_ZHONGZHI_NAME[name_Index].."(C "..V_ZHONGZHI_NEEDLEVEL[j]..")",6,name_Index)
							break
						end
					end
				end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return

	end
	
	zhiwuId = NumText
	for i, findId in x714057_g_eventList do
		if zhiwuId <= getn(V_ZHONGZHI_NAME) then
			CallScriptFunction( 713550, "OnDefaultEvent",sceneId, selfId, targetId, zhiwuId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务（暂时借用任务接口）
--**********************************
function x714057_OnMissionSubmit( sceneId, selfId, targetId, scriptId )
	for i, findId in x714057_g_eventList do
		if scriptId == findId then
			ret = CallScriptFunction( scriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( scriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )
				CallScriptFunction( scriptId, "OnDefaultEvent",sceneId, selfId, targetId, ABILITY_ZHONGZHI )
			end
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x714057_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x714057_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )	
			end
			return
		end
	end
end

