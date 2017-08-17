--八宝粥任务
--寻物
--MisDescBegin
--脚本号
x210233_g_ScriptId = 210233

--接受任务NPC属性
x210233_g_Position_X=282
x210233_g_Position_Z=220
x210233_g_SceneID=2
x210233_g_AccomplishNPC_Name="L� C鬾g B�"

--前提任务
--g_MissionIdPre =

--任务号
x210233_g_MissionId = 713

--任务目标npc
x210233_g_Name	="L� C鬾g B�"

--任务归类
x210233_g_MissionKind = 13

--任务等级
x210233_g_MissionLevel = 2

--是否是精英任务
x210233_g_IfMissionElite = 0

--下面几项是动态显示的内容，用于在任务列表中动态显示任务情况**********************
--任务是否已经完成
x210233_g_IsMissionOkFail = 0		--变量的第0位

--任务需要得到的物品
x210233_g_DemandItem={{id=20309001,num=1},{id=20309005,num=1}}		--从背包中计算
--以上是动态**************************************************************

--任务变量第一位用来存储随机得到的脚本号

--任务文本描述
x210233_g_MissionName="Ng� T� Tinh Ph鰊g M鉶"
x210233_g_MissionInfo="#{event_dali_0046}"  --任务描述
x210233_g_MissionTarget="T靘 疬㧟 Nh Ph Nhu M� v� Nh Ph H皀g 效u, sau 痼 v� #GNg� Hoa 朽n th鄋h 姓i L�#W t靘 1 trong T� 鹫i thi畁 nh鈔 #RL� C鬾g B� #W#{_INFOAIM282,220,2,L� C鬾g B祡."		--任务目标
x210233_g_ContinueInfo="Nh Ph Nhu M� v� Nh Ph H皀g 效u c醕 h� 疸 t靘 疬㧟 ch遖?"		--未完成任务的npc对话
x210233_g_MissionComplete="Ng叨i tr� tu眎, l鄊 t痶 l."					--完成任务npc说话的话

--任务奖励
x210233_g_ItemBonus={{id=10410047,num=1}}
x210233_g_MoneyBonus=0
--MisDescEnd
--**********************************
--任务入口函数
--**********************************
function x210233_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	--发送任务需求的信息
	BeginEvent(sceneId)
		AddText(sceneId,x210233_g_MissionName)
		AddText(sceneId,x210233_g_MissionInfo)
		for i, item in x210233_g_DemandItem do
			AddItemDemand( sceneId, item.id, item.num )
		end
	EndEvent( )
	bDone = x210233_CheckSubmit( sceneId, selfId )
	DispatchMissionDemandInfo(sceneId,selfId,targetId,x210233_g_ScriptId,x210233_g_MissionId,bDone)
end

--**********************************
--列举事件
--**********************************
function x210233_OnEnumerate( sceneId, selfId, targetId )
	--如果玩家完成过这个任务
    if IsMissionHaveDone(sceneId,selfId,x210233_g_MissionId) > 0 then
    	return
	--满足任务接收条件
	elseif x210233_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210233_g_ScriptId,x210233_g_MissionName,1,-1);
    end
end

--**********************************
--检测接受条件
--**********************************
function x210233_CheckAccept( sceneId, selfId )
	return 1
end

--**********************************
--接受
--**********************************
function x210233_OnAccept( sceneId, selfId )
end

--**********************************
--放弃
--**********************************
function x210233_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应的任务
    DelMission( sceneId, selfId, x210233_g_MissionId )
end

--**********************************
--继续
--**********************************
function x210233_OnContinue( sceneId, selfId, targetId )
	--提交任务时的说明信息
    BeginEvent(sceneId)
    AddText(sceneId,x210233_g_MissionName)
    AddText(sceneId,x210233_g_MissionComplete)
    AddMoneyBonus( sceneId, x210233_g_MoneyBonus )
    for i, item in x210233_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210233_g_ScriptId,x210233_g_MissionId)
end

--**********************************
--检测是否可以提交
--**********************************
function x210233_CheckSubmit( sceneId, selfId )
	--如果玩家完成过这个任务
    if IsMissionHaveDone( sceneId, selfId, x210233_g_MissionId ) > 0 then
		return 0
	end

	for i, item in x210233_g_DemandItem do
		itemCount = GetItemCount( sceneId, selfId, item.id )
		if itemCount < item.num then
			return 0
		end
	end
	return 1
end

--**********************************
--提交
--**********************************
function x210233_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210233_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		BeginAddItem(sceneId)
			for i, item in x210233_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--添加任务奖励
		if ret > 0 then
			--扣除任务物品
			for i, item in x210233_g_DemandItem do
				ret = DelItem( sceneId, selfId, item.id, item.num )
			end
			if	ret > 0 then
				AddMoney(sceneId,selfId,x210233_g_MoneyBonus );
				LuaFnAddExp( sceneId, selfId,450)
				--LuaFnAddExp( sceneId, selfId,250)
				ret = DelMission( sceneId, selfId, x210233_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210233_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YNhi甿 v� ho鄋 th鄋h#W: Ng� T� Tinh Ph鰊g M誳",MSG2PLAYER_PARA )
				end
			else
				--删除物品不成功
				BeginEvent(sceneId)
					strText = "Kh鬾g 瘘 nguy阯 li畊"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		else
			--任务奖励没有加成功
			BeginEvent(sceneId)
				strText = "Nhi甿 v� th b読"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x210233_OnKillObject( sceneId, selfId, objdataId ,objId)--参数意思：场景号、玩家objId、怪物表位置号、怪物objId
end

--**********************************
--进入区域事件
--**********************************
function x210233_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x210233_OnItemChanged( sceneId, selfId, itemdataId )
end
