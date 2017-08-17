-- 自立门户

-- 找到王韶

--MisDescBegin

-- 脚本号
x228902_g_ScriptId = 228902

-- 目标 NPC
x228902_g_Position_X = 217
x228902_g_Position_Z = 255
x228902_g_SceneID = 2
x228902_g_AccomplishNPC_Name = "V呓ng Thi玼"

-- 任务号
x228902_g_MissionId = 944

-- 前续任务
-- g_PreMissionId = -1

-- Ti猵 th挝� NPC 属性
x228902_g_Name = "Lan Ki猰"

--任务归类
x228902_g_MissionKind = 28

--衅ng c nhi甿 v� 
x228902_g_MissionLevel = 30

--喧ng否喧ngTinh英任务
x228902_g_IfMissionElite = 0

--任务名
x228902_g_MissionName = "T� l m鬾 h�"
x228902_g_MissionInfo = "#{TIANSHAN_SKILL_01}"
x228902_g_MissionTarget = "    T読 #Gth鄋h 姓i L� Tu V錸 朽i#W t靘 #RV呓ng Thi玼 #W#{_INFOAIM217,255,2,V呓ng Thi玼}."
x228902_g_MissionContinue = "    "
x228902_g_MissionComplete = "#{TIANSHAN_SKILL_02}"

x228902_g_MoneyBonus = 1000
x228902_g_exp = 2000

x228902_g_IsMissionOkFail = 0					-- 喧ng否Ho鄋 t nhi甿 v鴗o� 鸬 标记位
x228902_g_IsFindTarget = 1						-- 喧ng否找到王韶标记位
x228902_g_Custom = { { id = "秀 t靘 疬㧟 V呓ng Thi玼", num = 1 } }

--MisDescEnd

x228902_g_XinfaDemand = {
	{ id = 43, lvl = 10 },				-- Linh鹫功 -- zchw
	{ id = 44, lvl = 10 },				-- 小无相功
	{ id = 45, lvl = 10 },				-- 龟息功
	{ id = 46, lvl = 10 },				-- Thi阯 S絥融雪功
	{ id = 47, lvl = 10 },				-- Thi阯 S絥折梅手
	{ id = 48, lvl = 10 },				-- Thi阯 S絥六阳掌心法
}

--**********************************
--任务入口函数
--**********************************
function x228902_OnDefaultEvent( sceneId, selfId, targetId )
	--如果玩家完成过C醝 n鄖 任务
	if IsMissionHaveDone( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return
	elseif IsHaveMission( sceneId, selfId, x228902_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228902_g_AccomplishNPC_Name then
			local misIndex = GetMissionIndexByID( sceneId, selfId, x228902_g_MissionId )
			SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsMissionOkFail, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsFindTarget, 1 )
			x228902_OnContinue( sceneId, selfId, targetId )
		end
	--Th鯽 m鉵任务接收条件
	elseif x228902_CheckAccept( sceneId, selfId ) > 0 then
		--发送任务Ti猵 th毕允総o� 鸬 信息
		BeginEvent( sceneId )
			AddText( sceneId, x228902_g_MissionName )
			AddText( sceneId, x228902_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, x228902_g_MissionTarget )
			AddText( sceneId, "#{M_SHOUHUO}#r" )
			AddMoneyBonus( sceneId, x228902_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x228902_g_ScriptId, x228902_g_MissionId )
	end
end

--**********************************
--列举事件
--**********************************
function x228902_OnEnumerate( sceneId, selfId, targetId )
	--如果玩家完成过C醝 n鄖 任务
	if IsMissionHaveDone( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return
	--如果已接此任务
	elseif IsHaveMission( sceneId, selfId, x228902_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228902_g_AccomplishNPC_Name then
			AddNumText( sceneId, x228902_g_ScriptId, x228902_g_MissionName, 2, -1 )
		end
	--Th鯽 m鉵任务接收条件
	elseif GetName( sceneId, targetId ) == x228902_g_Name and GetLevel( sceneId, selfId ) >= x228902_g_MissionLevel then
		AddNumText( sceneId, x228902_g_ScriptId, x228902_g_MissionName, 1, -1 )
	end
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x228902_CheckAccept( sceneId, selfId )
	-- 1,检测玩家喧ng不喧ng已经做过
	if IsMissionHaveDone( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return 0
	end

	-- 等c检测
	if GetLevel( sceneId, selfId ) < x228902_g_MissionLevel then
		return 0
	end

	if IsHaveMission( sceneId, selfId, x228902_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Ti猵 th�
--**********************************
function x228902_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x228902_g_Name then
		return 0
	end

	if x228902_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	for i, xinfa in x228902_g_XinfaDemand do										-- 检查心法c别喧ng否足够
		if HaveXinFa( sceneId, selfId, xinfa.id ) < xinfa.lvl then
			x228902_NotifyFailBox( sceneId, selfId, targetId, "    C黙 ng呓i #{_XINFA" .. xinfa.id
				.. "} t鈓 ph醦 tu luy畁 韙 nh ph鋓 皙n" .. xinfa.lvl .. " c." )
			return
		end
	end

	--加入任务到玩家列表
	local ret = AddMission( sceneId, selfId, x228902_g_MissionId, x228902_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		x228902_NotifyFailBox( sceneId, selfId, targetId, "    #YNh k� nhi甿 v� c黙 c醕 h� 疸 馥y" )
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228902_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsMissionOkFail, 0 )	-- 初始化任务完成标记
	SetMissionByIndex( sceneId, selfId, misIndex, x228902_g_IsFindTarget, 0 )		-- 初始化标记

	--显示内容告诉玩家已经Ti猵 th巳挝�
	x228902_NotifyFailTips( sceneId, selfId, "C醕 h� 疸 nh nhi甿 v�: " .. x228902_g_MissionName )
	Msg2Player( sceneId, selfId, "#YTi猵 nh " .. x228902_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--放弃
--**********************************
function x228902_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应to� 鸬 任务
	DelMission( sceneId, selfId, x228902_g_MissionId )
end

--**********************************
--继续
--**********************************
function x228902_OnContinue( sceneId, selfId, targetId )
	--提交任务时to� 鸬 � 餴琺餍畔�
    BeginEvent( sceneId )
		AddText( sceneId, x228902_g_MissionName )
		AddText( sceneId, x228902_g_MissionComplete )
		AddMoneyBonus( sceneId, x228902_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo( sceneId, selfId, targetId, x228902_g_ScriptId, x228902_g_MissionId )
end

--**********************************
--检测喧ng否可以提交
--**********************************
function x228902_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x228902_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228902_g_MissionId )				--  餴琺到任务to� 鸬 序列号
	bRet = GetMissionParam( sceneId, selfId, misIndex, x228902_g_IsMissionOkFail )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--提交
--**********************************
function x228902_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x228902_g_AccomplishNPC_Name then		--判断该npc喧ng否喧ng对应任务to� 鸬 npc
		return
	end

	if x228902_CheckSubmit( sceneId, selfId ) ~= 1 then
		return
	end

	--添加任务奖励
	AddMoney( sceneId, selfId, x228902_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x228902_g_exp )

	DelMission( sceneId, selfId, x228902_g_MissionId )
	--设置任务已经被完成过
	MissionCom( sceneId, selfId, x228902_g_MissionId )
	Msg2Player( sceneId, selfId, "#YHo鄋 th鄋h nhi甿 v�: " .. x228902_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x228902_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x228902_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x228902_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x228902_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x228902_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
