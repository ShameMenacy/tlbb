--创建
--烽火台

-- scriptId = 715001
x715001_g_missionId = 552

function  x715001_OnCreate(sceneId,growPointType,x,y)
	ItemCount = 0-- 物品数量
	ItemBoxId = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,ItemCount)	--函数调用
end

--Tr� v嘈�
-- 0 表示打开成功
--打开前
--T読 CONFIG/ABILITY.TXT文件中
function	 x715001_OnOpen(sceneId,selfId,targetId)
	if HaveItem(sceneId,selfId,40002070) <0 then
		BeginEvent(sceneId)
			strText = "C 火折子"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return OR_NOT_ENOUGH_ITEM
	end

	if HaveItem(sceneId,selfId,40002069) <0	then
		BeginEvent(sceneId)
			strText = "C 狼粪"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return OR_NOT_ENOUGH_ITEM
	end
	
	return OR_OK
end

--回收  (与其他3c醝相反,Tr� v�1 表示要回收,就喧ng生长 餴琺消失,不能再使用)
function	 x715001_OnRecycle(sceneId,selfId,targetId)
 	return 0;
end

--打开后
function	x715001_OnProcOver(sceneId,selfId,targetId)
	
	local Ret1 = DelItem( sceneId, selfId, 40002069, 1 )
	local Ret2 = DelItem( sceneId, selfId, 40002070, 1 )
	
	if( Ret1 > 0 and Ret2 > 0 ) then
	
	misIndex = GetMissionIndexByID(sceneId,selfId,x715001_g_missionId)
	SetMissionByIndex(sceneId,selfId,misIndex,0,1)
	SetMissionByIndex(sceneId,selfId,misIndex,1,1)
	BeginEvent(sceneId)
	  	strText = "衭眎 theo H Phong(完成)"
	  	AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

    end
    
	return OR_OK
end

function x715001_OnTickCreateFinish( sceneId, growPointType, tickCount )
end
