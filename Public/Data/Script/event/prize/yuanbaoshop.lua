--新的元宝商店

x888902_g_scriptId = 888902
--元宝商店列表 要与客户端界面对应
x888902_g_shoplist = {}
x888902_g_shoplist[1] = {301, 302, 303, 304, 305, 306, 307, 308}			--大卖场--197,鲜花武器
x888902_g_shoplist[2] = {309, 310, 311, 312, 313, 314, 315, 316}			--宝石商城,添加"大理宝石斋--149",czf,2009.07.21
x888902_g_shoplist[3] = {317, 318, 319, 320, 321, 322, 323, 324}			--珍兽商城
x888902_g_shoplist[4] = {325, 326, 327, 328, 329, 330, 331, 332}			--南北杂货, 164
x888902_g_shoplist[5] = {333, 334, 335, 336, 337, 338, 339, 340}			--形象广场
x888902_g_shoplist[6] = {341, 342, 343, 344, 345, 346, 347, 348}			--花舞人间
x888902_g_shoplist[7] = {349, 350, 351, 352, 353, 354, 355, 356}			--武功秘籍146, 
x888902_g_shoplist[8] = {357, 358, 359, 360, 361, 362, 363, 364}			--打造图


--**********************************
-- 检查此随身NPC的功能
-- op是请求类别，比如1代表元宝相关的随身操作……
--**********************************
function x888902_OpenYuanbaoShop( sceneId, selfId, targetId , shopA ,shopB )

	local bCheck = x888902_YuanbaoShopCheckOp(sceneId,selfId);
	
	if bCheck > 0 then
		if shopA > 0 and shopA < 16 and x888902_g_shoplist[shopA][shopB] ~= nil then
			--PrintStr(x888902_g_shoplist[shopA][shopB])
			if targetId == -1 then
				DispatchYuanbaoShopItem( sceneId, selfId, x888902_g_shoplist[shopA][shopB])
			else
				DispatchNpcYuanbaoShopItem( sceneId, selfId, targetId , x888902_g_shoplist[shopA][shopB])
			end
		end
	end
end

function x888902_YuanbaoShopCheckOp(sceneId,selfId)
	--地府
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Ch裞 n錸g n鄖 kh鬾g th� s� d鴑g � 懈a Ph�", 0);
		return 0
	end
	--生死擂台
	if sceneId == 410 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: N絠 n鄖 kh鬾g th� s� d鴑g ch裞 n錸g 疬㧟.", 0);
		return 0
	end
	--少室山
	if sceneId == 530 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: N絠 n鄖 kh鬾g th� s� d鴑g ch裞 n錸g 疬㧟.", 0);
		return 0
	end
	--组队跟随
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	--双人骑乘
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--处于双人骑乘状态，且是被动的，交给主动方来处理
			return 0
		end
	end
	--10级以上
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 10 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: 姓t c 10 tr� l阯 m緄 c� th� s� d鴑g ch裞 n錸g n鄖!", 0);
		return 0
	else

		return 1
	end
	return 0
end
