--生长 餴琺
--满月
--脚本号715006
--满月100%
--等c1

--每次打开必定 鹫t 疬㧟to� 鸬 产品
x715006_g_MainItemId = 40003003

--生成函数开始************************************************************************
--每c醝ItemBox中最多10c醝物品
function 		x715006_OnCreate(sceneId,growPointType,x,y)
	--放入ItemBox同时放入m祎 c醝物品
	targetId  = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x715006_g_MainItemId)	--每c醝生长 餴琺最少能 餴琺到m祎 c醝物品,这里直接放入itembox中m祎 c醝
	-- 鹫t 疬㧟1~3to� 鸬 随机数,如果喧ng1则不C 放入,如果多余1再用AddItemToBox增加物品
	--ItemCount = random(1,3)
	--if ItemCount ~= 1 then
	--	for i=1, (ItemCount - 1) do
			AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x715006_g_MainItemId)
	--	end
	--end
	--放入次要产品
	--if random(1,100) == 1 then
	--	AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,g_SubItemId)
	--end	
end
--生成函数结束**********************************************************************


--打开前函数开始&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	 x715006_OnOpen(sceneId,selfId,targetId)
--Tr� v嘈�
-- 0 表示打开成功
	--ABilityID		=	GetItemBoxRequireAbilityID(sceneId,targetId)
	--AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
	
	--if AbilityLevel<g_AbilityLevel then
	--if	IsHaveMission
	--	return OR_NO_LEVEL
	--else
		return OR_OK
	--	end
end
--打开前函数结束&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--回收函数开始########################################################################
function	 x715006_OnRecycle(sceneId,selfId,targetId)
	  --取 餴琺当前熟练度
		--ABilityID	=	GetItemBoxRequireAbilityID(sceneId,targetId)
		--AbilityExp	=	GetAbilityExp(sceneId, selfId, ABilityID)
		--判断以现T読 to� 鸬 等c喧ng否应该增加熟练度
		--AbilityLevel	=	QueryHumanAbilityLevel(sceneId,selfId,ABilityID)
		--if AbilityLevel - g_AbilityLevel <= 5 then
		--	ExpPlus = 1
		--elseif AbilityLevel - g_AbilityLevel <=10 then
		--	ExpPlus = 1/((AbilityLevel - g_AbilityLevel)+1)
		--else
		--	ExpPlus = 0
		--end
		--判断当前熟练度加上要增加to� 鸬 熟练度后喧ng否超过本等c熟练度上限
		--old
		--if (AbilityExp + ExpPlus) >= LEVELUP_ABILITY_PENGREN[AbilityLevel].AbilityExpLimitTop then
		--new
		--local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_PENGREN, AbilityLevel + 1);
		--if ret and ret == 1 and (AbilityExp + ExpPlus) >= currentLevelAbilityExpTop then
		--	AbilityExp = currentLevelAbilityExpTop;
		--else
		--	AbilityExp = AbilityExp + ExpPlus
		--end
		--增加熟练度
		--SetAbilityExp(sceneId, selfId, ABilityID, AbilityExp)
		--通知玩家熟练度增加了
		--AbilityExp	=	GetAbilityExp(sceneId, selfId, ABilityID)
		--Msg2Player(sceneId,selfId,"熟练度蘈inh�"..AbilityExp,MSG2PLAYER_PARA)
		
		--Tr� v�1,生长 餴琺回收
		return 1
end
--回收函数结束########################################################################



--打开后函数开始@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x715006_OnProcOver(sceneId,selfId,targetId)
	return 0
end
--打开后函数结束@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

function x715006_OnTickCreateFinish( sceneId, growPointType, tickCount )
end
