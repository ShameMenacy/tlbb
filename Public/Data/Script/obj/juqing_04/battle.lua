-- 当角色进入区域，就触发事件


--**********************************
--进入区域事件
--**********************************
function x037004_OnEnterArea( sceneId, selfId, areaId)
	-- 在这里打开战斗开关
	--if 0 == LuaFnGetCopySceneData_Param(sceneId, 7)    then
		--PrintNum(123)
	--	LuaFnSetCopySceneData_Param(sceneId, 7, 1) 
		
		-- 改变几个高手的阵营
		local nMonsterNum = GetMonsterCount(sceneId)
		local rrr = GetCurCamp(sceneId, selfId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)  == "Ho鄋g H� T�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Kh鬷 B鄌 Kh醕h"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "挟 t� H� Tr鋙 M鬾"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "C� Nhi璵 V� S�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "Su Gi醕 Cao Th�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
				
			elseif GetName(sceneId, nMonsterId)  == "衞鄋 D�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 0)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			elseif GetName(sceneId, nMonsterId)  == "V� S� T鈟 H�"  then
				SetUnitReputationID(sceneId, selfId, nMonsterId, 29)
				SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
			end
		end
	--end
end

--**********************************
--进入区域事件
--**********************************
function x037004_OnLeaveArea( sceneId, selfId, areaId)
end
