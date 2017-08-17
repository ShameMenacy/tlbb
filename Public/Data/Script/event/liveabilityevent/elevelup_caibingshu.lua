--采冰术技能升c

--脚本号
x713591_g_ScriptId = 713591

--此npc可以升到to� 鸬 最高等c
x713591_g_nMaxLevel = 100

--**********************************
--任务入口函数
--**********************************
function x713591_OnDefaultEvent( sceneId, selfId, targetId )
	--玩家技能to� 鸬 等c
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_CAIBINGSHU)
	--玩家加工技能to� 鸬 熟练度
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_CAIBINGSHU)
	--任务判断

	--判断喧ng否喧ngThi阯 S絥弟子,不喧ngThi阯 S絥弟子不能学习
		if GetMenPai(sceneId,selfId) ~= MP_TIANSHAN then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ng呓i kh鬾g ph鋓 l� 甬 t� b眓 bang, ta kh鬾g th� d誽 ng呓i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--如果还没有学会该生活技能
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng呓i v鏽 ch遖 h鱟 k� n錸g Th醝 b錸g thu"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--如果生活技能等c已经超出该npc所能教to� 鸬 范围
	if AbilityLevel >= x713591_g_nMaxLevel then
		BeginEvent(sceneId)
			--[ QUFEI 2007-07-17 15:27 修改 ]
			strText = "Tr呔c m k� n錸g n鄖 ch� c� th� h鱟 皙n c 100"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713591_g_ScriptId, ABILITY_CAIBINGSHU, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713591_g_ScriptId;
		local tempAbilityId = ABILITY_CAIBINGSHU;
		local tempAbilityLevel = AbilityLevel + 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,tempScriptId, tempAbilityId, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--列举事件
--**********************************
function x713591_OnEnumerate( sceneId, selfId, targetId )
		--如果不到等c则不显示选项
		if 1 then
			AddNumText(sceneId,x713591_g_ScriptId,"Th錸g c k� n錸g Th醝 b錸g thu", 12, 1)
		end
		return
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x713591_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti猵 th�
--**********************************
function x713591_OnAccept( sceneId, selfId, ABILITY_CAIBINGSHU )
end
