-- 大双倍经验时间药水
-- 消耗一个药水，

--脚本号
x300048_g_scriptId = 300048
x300048_g_ItemId = 30008017

x300048_g_BuffPalyer_25 = 60
x300048_g_BuffAll_15 = 62
x300048_g_BuffPet_25 = 61
x300048_g_BuffPet_2 = 53

--**********************************
--事件交互入口
--**********************************
function x300048_OnDefaultEvent( sceneId, selfId, nItemIndex )

	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300048_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Tr阯 ng叨i c醕 h� 疸 t皀 t読 th秈 gian nh鈔 痿i kinh nghi甿 qu� cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300048_g_BuffAll_15) == 1   then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300048_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Tr阯 ng叨i c醕 h� 疸 t皀 t読 th秈 gian nh鈔 痿i kinh nghi甿, mu痭 x醕 nh s� d鴑g ch錸g?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)

		return
	end
	
	x300048_UseItem( sceneId, selfId, nItemIndex)

end

function x300048_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300048_EatMe( sceneId, selfId, nItemIndex)
	x300048_UseItem( sceneId, selfId, nItemIndex)
end


--**********************************
-- 
--**********************************
function x300048_UseItem( sceneId, selfId, nItemIndex)
	-- 先检测这个 nItemIndex 的物品是不是和当前的对应，
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300048_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"V ph b� h鰊g")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--1，看玩家是不是当前的身上的双倍经验时间是多少，如果达到上限，就不能使用
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	
	if nCurHaveTime >= 95*60*60   then
		BeginEvent(sceneId)
			AddText(sceneId,"Thi阯 Linh 衋n cao c m� c醕 h� s� d鴑g 瓞 thu 疬㧟 th秈 gian nh鈔 痿i kinh nghi甿 疸 鹫t m裞 c馽 h課.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- 符合使用这个物品的条件，
	local ret = EraseItem(sceneId, selfId, nItemIndex)
	
	-- 现在时间
	local nCurTime = LuaFnGetCurrentTime()

	if ret == 1    then
		DESetMoneyTime(sceneId, selfId, nCurHaveTime + 3600*5 )
		
		-- 如果玩家当前的双倍经验时间是被冻结的，给玩家一个提示
		if 1 == DEIsLock(sceneId, selfId)  then
			DESetLock( sceneId, selfId, 0 )
			BeginEvent(sceneId)
				AddText(sceneId,"Th秈 gian nh鈔 痿i kinh nghi甿 m� c醕 h� 痼ng b錸g 疸 疬㧟 gi鋓 痿ng, v� 疬㧟 t錸g th阭 5 gi� th秈 gian nh鈔 痿i kinh nghi甿.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		else
			BeginEvent(sceneId)
				AddText(sceneId,"C醕 h� t錸g th阭 5 gi� th秈 gian nh鈔 痿i kinh nghi甿.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V ph kh鬾g th� s� d鴑g")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
	
	-- 同步数据到客户端
	SendDoubleExpToClient(sceneId,selfId)
	
end

