--缥缈峰副本....
--端木元对话脚本....

--脚本号
x890074_g_ScriptId	= 890074

--副本逻辑脚本号....
x890074_g_FuBenScriptId = 890063

--**********************************
--死亡....
--**********************************
function x890074_OnDie( sceneId, selfId, killerId )

	--如果还没有挑战过李秋水则可以挑战李秋水....
	if 2 ~= CallScriptFunction( x890074_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" )	then
		CallScriptFunction( x890074_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "DingChunQiu", 1 )
	end
	-- zchw 全球公告
	local	playerName	= GetName( sceneId, killerId )
	
	--杀死怪物的是宠物则获取其主人的名字....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--如果玩家组队了则获取队长的名字....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("Thi猽 Th S絥 #{_INFOUSR%s}D鏽 d  鸬i ng� m祎 疬秐g h醫 vang, 疳nh b読  #Y Thi阯 S絥 邪ng L鉶 #W,#Y Thi阯 S絥 邪ng L鉶 #W t th� ti玭 b l #{_INFOUSR%s}, v� h課 o醤 h  n骾: Th鄋h qu�...... Th鄋h qu� ta c鹡g......", playerName,playerName); --任平生
		AddGlobalCountNews( sceneId, str )
	end
end
