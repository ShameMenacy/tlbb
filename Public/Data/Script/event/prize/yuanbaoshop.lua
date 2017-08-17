--�µ�Ԫ���̵�

x888902_g_scriptId = 888902
--Ԫ���̵��б� Ҫ��ͻ��˽����Ӧ
x888902_g_shoplist = {}
x888902_g_shoplist[1] = {301, 302, 303, 304, 305, 306, 307, 308}			--������--197,�ʻ�����
x888902_g_shoplist[2] = {309, 310, 311, 312, 313, 314, 315, 316}			--��ʯ�̳�,���"����ʯի--149",czf,2009.07.21
x888902_g_shoplist[3] = {317, 318, 319, 320, 321, 322, 323, 324}			--�����̳�
x888902_g_shoplist[4] = {325, 326, 327, 328, 329, 330, 331, 332}			--�ϱ��ӻ�, 164
x888902_g_shoplist[5] = {333, 334, 335, 336, 337, 338, 339, 340}			--����㳡
x888902_g_shoplist[6] = {341, 342, 343, 344, 345, 346, 347, 348}			--�����˼�
x888902_g_shoplist[7] = {349, 350, 351, 352, 353, 354, 355, 356}			--�书�ؼ�146, 
x888902_g_shoplist[8] = {357, 358, 359, 360, 361, 362, 363, 364}			--����ͼ


--**********************************
-- ��������NPC�Ĺ���
-- op��������𣬱���1����Ԫ����ص������������
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
	--�ظ�
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Ch�c n�ng n�y kh�ng th� s� d�ng � иa Ph�", 0);
		return 0
	end
	--������̨
	if sceneId == 410 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: N�i n�y kh�ng th� s� d�ng ch�c n�ng ���c.", 0);
		return 0
	end
	--����ɽ
	if sceneId == 530 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: N�i n�y kh�ng th� s� d�ng ch�c n�ng ���c.", 0);
		return 0
	end
	--��Ӹ���
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
	--˫�����
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--����˫�����״̬�����Ǳ����ģ�����������������
			return 0
		end
	end
	--10������
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 10 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: ��t c�p 10 tr� l�n m�i c� th� s� d�ng ch�c n�ng n�y!", 0);
		return 0
	else

		return 1
	end
	return 0
end
