-- 889083 ��װ�һ�NPC


--�ű���
x889083_g_ScriptId = 889083
--��ӵ�е��¼�ID�б�
x889083_g_eventList={}
x889083_g_EquipList={	
-- #GС����
{n=110,id=30900046},
-- #G�߼���ʯ�ϳɷ�
{n=120,id=30900016},
-- #G������
{n=130,id=39999901},
-- #G����ת����
{n=140,id=39910006},
-- #G9��9��ڤ��ʯ��
{n=150,id=50921016},
-- #G9��9��ڤ��ʯ��
{n=160,id=50921017},
-- #G9��9��ڤ��ʯ��
{n=170,id=50921015},
-- #G9��9��ڤ��ʯ��
{n=180,id=50921018},
}

x889083_g_StoneList={
-- ��ɫ����
{n=1,id=30505141,num=50,str="��ɫ����"},
-- ��ɫ����
{n=2,id=30505141,num=30,str="��ɫ����"},
-- ��ɫ����
{n=3,id=30505141,num=30,str="��ɫ����"},
-- ��ɫ����
{n=4,id=30505141,num=300,str="��ɫ����"},
-- ��ɫ����
{n=5,id=30505141,num=100,str="��ɫ����"},
-- ��ɫ����
{n=6,id=30505141,num=100,str="��ɫ����"},
-- ��ɫ����
{n=7,id=30505141,num=100,str="��ɫ����"},
-- ��ɫ����
{n=8,id=30505141,num=100,str="��ɫ����"},
}

--**********************************
--�¼��б�
--**********************************
function x889083_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #Y#b��ѡ���Ӧ�Ľ��жһ�...")
		for i, eventId in x889083_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x889083_g_ScriptId, "#G����Ҫ�һ���Ʒ��", 3, 100 )
		AddNumText( sceneId, x889083_g_ScriptId, "�뿪����", 13, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x889083_OnDefaultEvent( sceneId, selfId,targetId )
	x889083_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x889083_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	if nNumText == 0  then
		-- �رմ���
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	if nNumText == 100 or nNumText == 200 then
		BeginEvent(sceneId)
			AddText(sceneId, "��ʲô������û�м���������ң��Һ�æ������")
			if nNumText == 100 then
			AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ������̷���", 1, nNumText+10)
			AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ����߼���ʯ�ϳɷ���", 1, nNumText+20)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ�����������", 1, nNumText+30)
			AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ�������ת���", 1, nNumText+40)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ�����ڤ��ʯ9����9����", 1, nNumText+50)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ�����ڤ��ʯ9����9����", 1, nNumText+60)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ�����ڤ��ʯ9����9����", 1, nNumText+70)
			--AddNumText(sceneId, x889083_g_ScriptId, "#gFF3E96�һ�����ڤ��ʯ9����9����", 1, nNumText+80)
			end
			if nNumText == 200 then
			AddNumText(sceneId, x889083_g_ScriptId, "#Y�桤��¥��״̬��ȡ", 4, nNumText+10)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y�桤��¥��״̬��ȡ", 4, nNumText+11)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y�桤��¥��״̬��ȡ", 4, nNumText+12)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y�桤��¥��״̬��ȡ", 4, nNumText+13)
			AddNumText(sceneId, x889083_g_ScriptId, "#Y�桤��¥��״̬��ȡ", 4, nNumText+14)
			end																		
			AddNumText( sceneId, x889083_g_ScriptId, "�뿪����", 0, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 210 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554054) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "��û�д˵��ߣ�������ȡ״̬��"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 211 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554055) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "��û�д˵��ߣ�������ȡ״̬��"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5989, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 212 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554053) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "��û�д˵��ߣ�������ȡ״̬��"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	
	if nNumText == 213 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554071) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "��û�д˵��ߣ�������ȡ״̬��"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5994, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	
	if nNumText == 214 then
		BeginEvent(sceneId)
		local bStoneOk = 0
		if GetItemCount(sceneId, selfId, 10554073) >= 1  then
			bStoneOk = 1
		end
		
		if  bStoneOk == 0 then
			BeginEvent(sceneId)
				strText = "��û�д˵��ߣ�������ȡ״̬��"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else 
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5997, 0 )	
		end	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end		
	
	if nNumText > 100 and nNumText < 800  then
		BeginEvent(sceneId)
			AddText(sceneId, "  ���ǰ׸��ģ����������������Ŷ����")
			
			local nLevel = 0
			if nNumText == 110 then    -- С����
				nLevel = 1
			end
			if nNumText == 120 then    -- �߼���ʯ�ϳɷ�
				nLevel = 2
			end
			if nNumText == 130 then    -- ������
				nLevel = 3
			end
			if nNumText == 140 then    -- ����ת����
				nLevel = 4
			end
			if nNumText == 150 then    -- ڤ��ʯ��
				nLevel = 5
			end
			if nNumText == 160 then    -- ڤ��ʯ��
				nLevel = 6
			end
			if nNumText == 170 then    -- ڤ��ʯ��
				nLevel = 7
			end
			if nNumText == 180 then    -- ڤ��ʯ��
				nLevel = 8
			end
			local szStr = "  Ҫ�����Щװ��������Ҫ���ҡ�" .. x889083_g_StoneList[nLevel].str
										.. "����".. tostring(x889083_g_StoneList[nLevel].num) .. "����  #r  #Gע�⿴װ���ʺ�ʲô���ɣ���Ҫ������Ŷ#W"
			AddText(sceneId, szStr)
			
			for i, item in x889083_g_EquipList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    		EndEvent(sceneId)
   	 	--DispatchMissionDemandInfo(sceneId,selfId,targetId, x889083_g_ScriptId, x210200_g_MissionId)
   		DispatchMissionContinueInfo(sceneId,selfId,targetId, x889083_g_ScriptId, 0)		
	end
			
	for i, findId in x889083_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x889083_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x889083_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			x889083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			x889083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x889083_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x889083_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	--�����ύ�����ʾ���
	--Ϊ�˰�ȫ������Ҫ��ϸ�����ܳ���
	local nItemIndex = -1
	
	for i, item in x889083_g_EquipList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	
	if nItemIndex == -1  then
		return
	end
	
	-- ������ǲ��ǹ������ύ
	local nLevel = 0
	if x889083_g_EquipList[nItemIndex].n == 110 then
		nLevel = 1
	end
	if x889083_g_EquipList[nItemIndex].n == 120 then
		nLevel = 2
	end
	if x889083_g_EquipList[nItemIndex].n == 130 then
		nLevel = 3
	end	
	if x889083_g_EquipList[nItemIndex].n == 140 then
		nLevel = 4
	end	
	if x889083_g_EquipList[nItemIndex].n == 150 then
		nLevel = 5
	end	
	if x889083_g_EquipList[nItemIndex].n == 160 then
		nLevel = 6
	end	
	if x889083_g_EquipList[nItemIndex].n == 170 then
		nLevel = 7
	end	
	if x889083_g_EquipList[nItemIndex].n == 180 then
		nLevel = 8
	end	
		
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x889083_g_StoneList[nLevel].id) >= x889083_g_StoneList[nLevel].num  then
		bStoneOk = 1
	end
	
	if  bStoneOk == 0 then
		BeginEvent(sceneId)
			strText = "��û���㹻����Ʒ�����ܻ�ȡװ����"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ����ǲ������㹻��ʯͷ���Կ۳�
	if LuaFnGetAvailableItemCount(sceneId, selfId, x889083_g_StoneList[nLevel].id) < x889083_g_StoneList[nLevel].num   then
		BeginEvent(sceneId)
			strText = "��û���㹻����Ʒ���Ա��۳���������Ʒ�Ƿ�������"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
		
	end
	
	-- ��鱳���ռ�
	BeginAddItem(sceneId)
		AddItem(sceneId, selectRadioId, 1)
	local bBagOk = EndAddItem(sceneId, selfId)
	
	if bBagOk < 1 then
		BeginEvent(sceneId)
			strText = "��ı���û�пռ��ˡ�"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x889083_g_StoneList[nLevel].id)
	local szTransferStone = GetBagItemTransfer(sceneId,selfId, nItemBagIndexStone)
	
	-- ɾ����ص�ʯͷ
	local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x889083_g_StoneList[nLevel].id, x889083_g_StoneList[nLevel].num)
	
	if bDelOk < 1  then
		BeginEvent(sceneId)
			strText = "�۳�ʯͷʧ�ܡ�"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	else
		--����Ҷ��������
		-- AddItemListToHuman(sceneId,selfId)
		--
		local nBagIndex = TryRecieveItem( sceneId, selfId, x889083_g_EquipList[nItemIndex].id, 1 );
		
		BeginEvent(sceneId)
			strText = "�һ��ɹ���"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local message;	
		local randMessage = random(3);
		local sItemName = GetItemName(sceneId, x889083_g_EquipList[nItemIndex].id)
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
			message = format("#W#{WLS_00}#Y%d#cffffcc��#W#{_INFOMSG%s}#cffffcc���Ե��޵�����#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889083_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		elseif randMessage == 2 then
			message = format("#W#{WLS_00}#Y%d#cffffcc��#W#{_INFOMSG%s}#cffffcc���Ե��޵�����#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889083_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		else
			message = format("#W#{WLS_00}#Y%d#cffffcc��#W#{_INFOMSG%s}#cffffcc���Ե��޵�����#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889083_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
	end

	for i, findId in x889083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x889083_OnDie( sceneId, selfId, killerId )
end

