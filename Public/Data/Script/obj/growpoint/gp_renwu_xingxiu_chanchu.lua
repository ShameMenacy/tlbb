--生长 餴琺
--蟾蜍
--脚本号715026
--蟾蜍100%
--等c1

--每次打开必定 鹫t 疬㧟to� 鸬 产品
x715026_g_MainItemId = 40003036
--任务号
x715026_g_MissionId = 1095

--生成函数开始************************************************************************
--每c醝ItemBox中最多10c醝物品
function	x715026_OnCreate(sceneId,growPointType,x,y)
	--放入ItemBox同时放入m祎 c醝物品
	ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x715026_g_MainItemId)	--每c醝生长 餴琺最少能 餴琺到m祎 c醝物品,这里直接放入itembox中m祎 c醝
end
--生成函数结束**********************************************************************


--打开前函数开始&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	x715026_OnOpen(sceneId,selfId,targetId)
	local ret = CallScriptFunction(SHIMEN_MISSION_SCRIPT_ID, "IsCaiJiMission", sceneId,selfId,x715026_g_MissionId,x715026_g_MainItemId)
	if ret > 0 then
		return OR_OK
	else
		return OR_U_CANNT_DO_THIS_RIGHT_NOW
	end

end
--打开前函数结束&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--回收函数开始########################################################################
function	x715026_OnRecycle(sceneId,selfId,targetId)
	--Tr� v�1,生长 餴琺回收
	return 1
end
--回收函数结束########################################################################



--打开后函数开始@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x715026_OnProcOver(sceneId,selfId,targetId)
	return 0
end
--打开后函数结束@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

function x715026_OnTickCreateFinish( sceneId, growPointType, tickCount )
end
