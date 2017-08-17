--注意：

--物品技能的逻辑只能使用基础技能和脚本来实现

--脚本:

--以下是脚本样例:


--qiankunhu.lua
------------------------------------------------------------------------------------------
--一般物品的默认脚本

--脚本号
x300054_g_scriptId = 300054 --临时写这个,真正用的时候一定要改.

--需要的等级

--效果的ID
x300054_g_Impact1 = 57 --临时写这个
x300054_g_Impact2 = 8500 --干坤杯

--**********************************
--事件交互入口
--**********************************
function x300054_OnDefaultEvent( sceneId, selfId, bagIndex )
-- 不需要这个接口，但要保留空函数
end

--**********************************
--这个物品的使用过程是否类似于技能：
--系统会在执行开始时检测这个函数的返回值，如果返回失败则忽略后面的类似技能的执行。
--返回1：技能类似的物品，可以继续类似技能的执行；返回0：忽略后面的操作。
--**********************************
function x300054_IsSkillLikeScript( sceneId, selfId)
	return 1; --这个脚本需要动作支持
end

--**********************************
--直接取消效果：
--系统会直接调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function x300054_CancelImpacts( sceneId, selfId )
	return 0; --不需要这个接口，但要保留空函数,并且始终返回0。
end

--**********************************
--条件检测入口：
--系统会在技能检测的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function x300054_OnConditionCheck( sceneId, selfId )
	--校验使用的物品
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	if(-1~=x300054_g_Impact1) then
		local checkRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300054_g_Impact1);
		if checkRet and checkRet == 1 then
			x300054_NotifyTip(sceneId, selfId, "Ch� c� th� 瘙i sau khi hi畊 qu� t� 鸬ng nh v ph m m緄 c� th� s� d鴑g.");
			return 0
		end
		
		-- 不能拥有干坤杯的buff
		local checkRet2 = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300054_g_Impact2);
		if checkRet2 and checkRet2 == 1 then
			x300054_NotifyTip(sceneId, selfId, "Ch� c� th� 瘙i sau khi hi畊 qu� t� 鸬ng nh v ph m m緄 c� th� s� d鴑g.");
			return 0
		end
		
	end
	return 1; --不需要任何条件，并且始终返回1。
end

--**********************************
--消耗检测及处理入口：
--系统会在技能消耗的时间点调用这个接口，并根据这个函数的返回值确定以后的流程是否执行。
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--注意：这不光负责消耗的检测也负责消耗的执行。
--**********************************
function x300054_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--只会执行一次入口：
--聚气和瞬发技能会在消耗完成后调用这个接口（聚气结束并且各种条件都满足的时候），而引导
--技能也会在消耗完成后调用这个接口（技能的一开始，消耗成功执行之后）。
--返回1：处理成功；返回0：处理失败。
--注：这里是技能生效一次的入口
--**********************************
function x300054_OnActivateOnce( sceneId, selfId )
	if(-1~=x300054_g_Impact1) then
		local checkRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300054_g_Impact1);
		if checkRet and checkRet == 1 then
			x300054_NotifyTip(sceneId, selfId, "Ch� c� th� 瘙i sau khi hi畊 qu� t� 鸬ng nh v ph m m緄 c� th� s� d鴑g.");
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300054_g_Impact1, 0);
		end
	end
	return 1;
end

--**********************************
--引导心跳处理入口：
--引导技能会在每次心跳结束时调用这个接口。
--返回：1继续下次心跳；0：中断引导。
--注：这里是技能生效一次的入口
--**********************************
function x300054_OnActivateEachTick( sceneId, selfId)
	return 1; --不是引导性脚本, 只保留空函数.
end

--**********************************
--醒目提示
--**********************************
function x300054_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
