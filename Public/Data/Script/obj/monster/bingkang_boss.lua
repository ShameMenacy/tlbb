--企鹅王BOSS刷新公告

--脚本编号
x502003_g_ScriptId	= 502003

--**********************************
--Monster Timer
--**********************************
function x502003_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--全球公告
	local	nam_mob	= GetName( sceneId, objId )
	if nam_mob ~= nil then
		str	= format( "#cff99ccCh� nh鈔 th s� c黙 #GNg鈔 Ngai Tuy猼 Nguy阯 l� X� Nga V呓ng #cff99ccv� 鹫i 疸 vung quy玭 tr唼ng xu hi畁 t読 l鉵h th� c黙 n� r癷!", nam_mob )
		AddGlobalCountNews( sceneId, str )
	end

	--取消时钟
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--死亡事件
--**********************************
function x502003_OnDie( sceneId, objId, killerId )
	--全球公告
	--local	nam_mob	= GetName( sceneId, objId )
	--local	nam_ply	= GetName( sceneId, killerId )
	--if nam_mob ~= nil and nam_ply ~= nil then
		--str	= format( "#P经过#W#{_INFOUSR%s}#P和其队伍的一番苦战，#G%s#P终于被打败了。", nam_ply, nam_mob )
		--AddGlobalCountNews( sceneId, str )
	--end
end
