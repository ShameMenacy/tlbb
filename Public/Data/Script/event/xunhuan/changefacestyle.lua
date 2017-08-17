--��������
--�ű���
x805029_g_ScriptId = 805029

--��������UI 21

--**********************************
--�о��¼�
--**********************************
function x805029_OnEnumerate( sceneId, selfId, targetId )
	-- ������Ϣ
	--BeginEvent(sceneId)
	--	AddText(sceneId, "����������ͽű�");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)	
	
	-- ΪʲôҪ NPC ���֣�
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 928)
	return
end

--**********************************
--��������
--**********************************
function x805029_FinishAdjust( sceneId, selfId, styleId)

	-- �õ���������������Ʒ��id��������
	local ItemId, ItemCount = GetChangeFaceItemIdAndItemCount(styleId)
		
	-- ����ֵ�Ƿ�
	if ItemId < 0 or ItemCount < 0 then
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	-- ��Ʒ�Ƿ��û�����
	if ItemCount > nItemNum then
		BeginEvent(sceneId)
			AddText(sceneId, "C�c h� kh�ng c� иnh Nhan Ch�u ho�c иnh Nhan Ch�u �� ���c c� �nh!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
		-- ��ö������ڱ����е�λ�ã���������ڸı����͵Ĺ����б�ɾ����������Ҫ�ȱ���������Ϣ��
	local ItemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, ItemId, 0)
	local szItemTransfer = GetBagItemTransfer(sceneId, selfId, ItemPos)
	
	-- ��Ʒ���ͨ�����ټ����ҽ�Ǯ
	local moneyJZ = GetMoneyJZ (sceneId, selfId)
	local money = GetMoney (sceneId, selfId)
	
	-- ��Ʒ�ͽ�Ǯ��ⶼͨ��
	if (moneyJZ + money >= 50000)	then	
		-- ������������ͣ��������������������Ʒ�ͽ�Ǯ��
		local ret = ChangeHumanFaceModel( sceneId, selfId, styleId )
		if ret == 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"Thay �i ngo�i h�nh th�nh c�ng!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		
		-- �ı�����ʧ��
		elseif ret == 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"H�y l�a ch�n m�t lo�i ngo�i h�nh");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 3 then
			BeginEvent(sceneId)
				AddText(sceneId, "C�c h� kh�ng c� иnh Nhan Ch�u ho�c иnh Nhan Ch�u �� ���c c� �nh!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 4 then	
			BeginEvent(sceneId)
				AddText(sceneId, "Kh�ng �� Ng�n L��ng");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else
			return
		end

	-- ��Ǯ����
	else
		BeginEvent(sceneId)
			AddText(sceneId, "Kh�ng �� Ng�n L��ng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end	
	
	-- ���͹㲥
	local message;	
	local randMessage = random(3);
	local nsex = LuaFnGetSex(sceneId, selfId)
	local str1,str2
	if nsex == 0  then
		str1 = "n�ng �y"
		str2 = "�p"
	else
		str1 = "huynh �y"
		str2 = "xo�n"
	end
	
	if randMessage == 1 then
		message = format("#HGiang h� tr�m tr� ng�i khen #W#{_INFOUSR%s}#H g߽ng m�t m�i tr� trung, ch�nh l� do s� d�ng #W#{_INFOMSG%s}#H m� th�nh. Th�t khi�n Phan An ph�i t�c ch�t, �i�u Thuy�n c�ng cay c� kh�ng ch�u n�i!", LuaFnGetName(sceneId, selfId), szItemTransfer);
	elseif randMessage == 2 then
		message = format("#HS�c �p l� v�ng, #W#{_INFOUSR%s}#H � th�c ���c s�c �p c�a m�nh, " .. str1 .. " �� s� d�ng #W#{_INFOMSG%s}#H thay �i khu�n m�t m�i, th�t khi�n ng߶i ta tr�m tr� ng�i khen!", LuaFnGetName(sceneId, selfId), szItemTransfer);
	else
		message = format("#HChim tr�n tr�i h�m nay �t nhi�n ng�ng bay, con n�o con n�y n�m im trong t�, c� d߾i n߾c im l�ng kh�ng �ng �y. Kh�ng bi�t c� ph�i tr�ng �c g� kh�ng. �, kh�ng ph�i ��u, nguy�n nh�n l� do #W#{_INFOUSR%s}#H "..str1.." �� s� d�ng #W#{_INFOMSG%s}#H thay �i g߽ng m�t, khi�n ch�ng ph�i tr�m tr� ng�m ngh�a v� th�t l�n m�t ch� \"Щp\"", LuaFnGetName(sceneId, selfId), szItemTransfer);
	end

	BroadMsgByChatPipe(sceneId, selfId, message, 4);
end
