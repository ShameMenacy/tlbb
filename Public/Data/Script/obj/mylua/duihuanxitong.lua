-- 889080 ��װ�һ�NPC

-- ��ʦ��

--�ű���
x889080_g_ScriptId = 889080

--��ӵ�е��¼�ID�б�
x889080_g_eventList={889070}

x889080_g_EquipList={	

-- ���ּ�����װ���м���װ��
{n=1100,id=10470060},{n=1200,id=10470061},{n=1300,id=10470062},{n=1400,id=10470063},
{n=1500,id=10470064},{n=1600,id=10470065},{n=1700,id=10470066},{n=1800,id=10470067},
{n=1900,id=10470068},{n=1901,id=10470069},{n=1902,id=10470094},{n=1903,id=10470095},
{n=1904,id=10470096},{n=1905,id=10470097},
-- ���ּ�����װ���ռ���װ��
{n=10100,id=10470098},{n=10200,id=10470099},{n=10300,id=10470100},{n=10400,id=10470101},
{n=10500,id=10470102},{n=10600,id=10470103},{n=10700,id=10470104},{n=10800,id=10470105},
{n=10900,id=10470106},{n=10901,id=10470107},{n=10902,id=10470108},{n=10903,id=10470109},
{n=10904,id=10470110},{n=10905,id=10470111},
}

x889080_g_StoneList={
{n=1,id=10470030,num=5,str="#G��ԯ����#W"},
{n=2,id=10470031,num=5,str="#G��ԯ����#W"},
{n=3,id=10470032,num=5,str="#G��ԯ����#W"},
{n=4,id=10470033,num=5,str="#G��ԯ����#W"},
{n=5,id=10470034,num=5,str="#G��ԯ����#W"},
{n=6,id=10470035,num=5,str="#G��ԯ����#W"},
{n=7,id=10470036,num=5,str="#G��ԯ����#W"},
{n=8,id=10470037,num=5,str="#G��ԯ��ѥ#W"},
{n=9,id=10470038,num=5,str="#G��ԯ����#W"},
{n=10,id=10470039,num=5,str="#G��ԯ����#W"},
{n=11,id=10470082,num=5,str="#Y��ԯ����#W"},
{n=12,id=10470083,num=5,str="#Y��ԯ��ǹ#W"},
{n=13,id=10470084,num=5,str="#Y��ԯ����#W"},
{n=14,id=10470085,num=5,str="#Y��ԯ����#W"},
{n=15,id=10470060,num=5,str="#Y߱���׻���#W"},
{n=16,id=10470061,num=5,str="#Y߱���׻���#W"},
{n=17,id=10470062,num=5,str="#Y߱���׻ƿ�#W"},
{n=18,id=10470063,num=5,str="#Y߱���׻Ƽ�#W"},
{n=19,id=10470064,num=5,str="#Y߱���׻���#W"},
{n=20,id=10470065,num=5,str="#Y߱���׻���#W"},
{n=21,id=10470066,num=5,str="#Y߱���׻ƴ�#W"},
{n=22,id=10470067,num=5,str="#Y߱���׻�ѥ#W"},
{n=23,id=10470068,num=5,str="#Y߱���׻ƽ�#W"},
{n=24,id=10470069,num=5,str="#Y߱���׻Ʒ�#W"},
{n=25,id=10470094,num=5,str="#cFF0000߱��������#W"},
{n=26,id=10470095,num=5,str="#cFF0000߱������ն#W"},
{n=27,id=10470096,num=5,str="#cFF0000߱���޼���#W"},
{n=28,id=10470097,num=5,str="#cFF0000߱�񡤾��Ļ�#W"},
}

--**********************************
--�¼��б�
--**********************************
function x889080_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #cffffcc������ˣ��ʵ�گԻ��#r  ��������̫ƽ�����հ�����ҵ��ֻ��С�����ֵ��ˣ���ħ���ޣ�Ϊ���ķ����޾�������������ԯ�׵ģ�����5���һ�һ��������װ������ɱ�����������մˣ�")
		--for i, eventId in x889080_g_eventList do
		--	CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		--end
		AddNumText( sceneId, x889080_g_ScriptId, "#cFF0000�һ�߱���ס��м���װ��", 6, 1000 )
		AddNumText( sceneId, x889080_g_ScriptId, "#cFF0000�һ�����ס��ռ���װ��", 6, 10000 )

		AddNumText( sceneId, x889080_g_ScriptId, "�뿪����", 0, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x889080_OnDefaultEvent( sceneId, selfId,targetId )
	x889080_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x889080_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	if nNumText == 0  then
		-- �رմ���
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	if nNumText == 1000 or nNumText == 2000 or nNumText == 3000 or nNumText == 4000 or nNumText == 5000 or nNumText == 6000 or nNumText == 7000 or nNumText == 8000  or nNumText == 9000 or nNumText == 10000 then
		BeginEvent(sceneId)
			AddText(sceneId, "  ��ѡ��һ����Ҫ�ҵľ��岿λ")
			if nNumText < 10000  then
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻���", 6, nNumText+100)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻���", 6, nNumText+200)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻ƿ�", 6, nNumText+300)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻Ƽ�", 6, nNumText+400)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻���", 6, nNumText+500)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻���", 6, nNumText+600)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻ƴ�", 6, nNumText+700)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻�ѥ", 6, nNumText+800)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻ƽ�", 6, nNumText+900)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���׻Ʒ�", 6, nNumText+901)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱��������", 6, nNumText+902)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱������ն", 6, nNumText+903)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱���޼���", 6, nNumText+904)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000߱�񡤾��Ļ�", 6, nNumText+905)
			end
			if nNumText >= 10000  then
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻���", 6, nNumText+100)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻���", 6, nNumText+200)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻ƿ�", 6, nNumText+300)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻Ƽ�", 6, nNumText+400)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻���", 6, nNumText+500)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻���", 6, nNumText+600)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻ƴ�", 6, nNumText+700)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻�ѥ", 6, nNumText+800)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻ƽ�", 6, nNumText+900)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��׻Ʒ�", 6, nNumText+901)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ�������", 6, nNumText+902)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ�����ն", 6, nNumText+903)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ��޼���", 6, nNumText+904)
			AddNumText(sceneId, x889080_g_ScriptId, "#cFF0000��ۡ����Ļ�", 6, nNumText+905)
			end
			AddNumText( sceneId, x889080_g_ScriptId, "�뿪����", 0, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText > 1000 and nNumText < 11000  then
		BeginEvent(sceneId)
			AddText(sceneId, "  ���ǰ׸��ģ����������������Ŷ����")
			
			local nLevel = 0
			if nNumText == 1100 then
				nLevel = 1
			end
			if nNumText == 1200 then
				nLevel = 2
			end
			if nNumText == 1300 then
				nLevel = 3
			end
			if nNumText == 1400 then
				nLevel = 4
			end
			if nNumText == 1500 then
				nLevel = 5
			end
			if nNumText == 1600 then
				nLevel = 6
			end
			if nNumText == 1700 then
				nLevel = 7
			end
			if nNumText == 1800 then
				nLevel = 8
			end
			if nNumText == 1900 then
				nLevel = 9
			end
			if nNumText == 1901 then
				nLevel = 10
			end
			if nNumText == 1902 then
				nLevel = 11
			end
			if nNumText == 1903 then
				nLevel = 12
			end
			if nNumText == 1904 then
				nLevel = 13
			end
			if nNumText == 1905 then
				nLevel = 14
			end
			if nNumText == 10100 then
				nLevel = 15
			end
			if nNumText == 10200 then
				nLevel = 16
			end
			if nNumText == 10300 then
				nLevel = 17
			end
			if nNumText == 10400 then
				nLevel = 18
			end
			if nNumText == 10500 then
				nLevel = 19
			end
			if nNumText == 10600 then
				nLevel = 20
			end
			if nNumText == 10700 then
				nLevel = 21
			end
			if nNumText == 10800 then
				nLevel = 22
			end
			if nNumText == 10900 then
				nLevel = 23
			end
			if nNumText == 10901 then
				nLevel = 24
			end
			if nNumText == 10902 then
				nLevel = 25
			end
			if nNumText == 10903 then
				nLevel = 26
			end
			if nNumText == 10904 then
				nLevel = 27
			end
			if nNumText == 10905 then
				nLevel = 28
			end
			local szStr = "  Ҫ�����Щװ��������Ҫ���ҡ�" .. x889080_g_StoneList[nLevel].str 
										.. "����".. tostring(x889080_g_StoneList[nLevel].num) .. "����  ����Ʒ����#GBOSS���߹���#W�б���....#r  #Gע�⿴װ���ʺ�ʲô���ɣ���Ҫ������Ŷ#W"
			AddText(sceneId, szStr)
			
			for i, item in x889080_g_EquipList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    EndEvent(sceneId)
    --DispatchMissionDemandInfo(sceneId,selfId,targetId, x889080_g_ScriptId, x210200_g_MissionId)
    DispatchMissionContinueInfo(sceneId,selfId,targetId, x889080_g_ScriptId, 0)
		
	end
	
	for i, findId in x889080_g_eventList do
		if eventId == findId then			
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x889080_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889080_g_eventList do
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
function x889080_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x889080_g_eventList do
		if missionScriptId == findId then
			x889080_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			x889080_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x889080_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x889080_g_eventList do
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
function x889080_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	--�����ύ�����ʾ���
	--Ϊ�˰�ȫ������Ҫ��ϸ�����ܳ���
	local nItemIndex = -1
	
	for i, item in x889080_g_EquipList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	
	if nItemIndex == -1  then
		return
	end
	
	-- ������ǲ��ǹ������ύ
	local nLevel = 0
	if x889080_g_EquipList[nItemIndex].n == 1100 then
		nLevel = 1
	end
	if x889080_g_EquipList[nItemIndex].n == 1200 then
		nLevel = 2
	end
	if x889080_g_EquipList[nItemIndex].n == 1300 then
		nLevel = 3
	end
	if x889080_g_EquipList[nItemIndex].n == 1400 then
		nLevel = 4
	end
	if x889080_g_EquipList[nItemIndex].n == 1500 then
		nLevel = 5
	end
	if x889080_g_EquipList[nItemIndex].n == 1600 then
		nLevel = 6
	end
	if x889080_g_EquipList[nItemIndex].n == 1700 then
		nLevel = 7
	end
	if x889080_g_EquipList[nItemIndex].n == 1800 then
		nLevel = 8
	end
	if x889080_g_EquipList[nItemIndex].n == 1900 then
		nLevel = 9
	end
	if x889080_g_EquipList[nItemIndex].n == 1901 then
		nLevel = 10
	end
	if x889080_g_EquipList[nItemIndex].n == 1902 then
		nLevel = 11
	end
	if x889080_g_EquipList[nItemIndex].n == 1903 then
		nLevel = 12
	end
	if x889080_g_EquipList[nItemIndex].n == 1904 then
		nLevel = 13
	end
	if x889080_g_EquipList[nItemIndex].n == 1905 then
		nLevel = 14
	end
		if x889080_g_EquipList[nItemIndex].n == 10100 then
		nLevel = 15
	end
	if x889080_g_EquipList[nItemIndex].n == 10200 then
		nLevel = 16
	end
	if x889080_g_EquipList[nItemIndex].n == 10300 then
		nLevel = 17
	end
	if x889080_g_EquipList[nItemIndex].n == 10400 then
		nLevel = 18
	end
	if x889080_g_EquipList[nItemIndex].n == 10500 then
		nLevel = 19
	end
	if x889080_g_EquipList[nItemIndex].n == 10600 then
		nLevel = 20
	end
	if x889080_g_EquipList[nItemIndex].n == 10700 then
		nLevel = 21
	end
	if x889080_g_EquipList[nItemIndex].n == 10800 then
		nLevel = 22
	end
	if x889080_g_EquipList[nItemIndex].n == 10900 then
		nLevel = 23
	end
	if x889080_g_EquipList[nItemIndex].n == 10901 then
		nLevel = 24
	end
	if x889080_g_EquipList[nItemIndex].n == 10902 then
		nLevel = 25
	end
	if x889080_g_EquipList[nItemIndex].n == 10903 then
		nLevel = 26
	end
	if x889080_g_EquipList[nItemIndex].n == 10904 then
		nLevel = 27
	end
	if x889080_g_EquipList[nItemIndex].n == 10905 then
		nLevel = 28
	end
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x889080_g_StoneList[nLevel].id) >= x889080_g_StoneList[nLevel].num  then
		bStoneOk = 1
	end
	
	if  bStoneOk == 0 then
		BeginEvent(sceneId)
			strText = "��û���㹻�Ķһ���Ʒ�����ܻ�ȡװ����"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ����ǲ������㹻��ʯͷ���Կ۳�
	if LuaFnGetAvailableItemCount(sceneId, selfId, x889080_g_StoneList[nLevel].id) < x889080_g_StoneList[nLevel].num   then
		BeginEvent(sceneId)
			strText = "��û���㹻�Ķһ���Ʒ���Ա��۳���������Ʒ�Ƿ�������"
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
	local nItemBagIndexStone = GetBagPosByItemSn(sceneId, selfId, x889080_g_StoneList[nLevel].id)
	local szTransferStone = GetBagItemTransfer(sceneId,selfId, nItemBagIndexStone)
	
	-- ɾ����ص�ʯͷ
	local bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x889080_g_StoneList[nLevel].id, x889080_g_StoneList[nLevel].num)
	
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
		local nBagIndex = TryRecieveItem( sceneId, selfId, x889080_g_EquipList[nItemIndex].id, 1 );
		
		BeginEvent(sceneId)
			strText = "�һ��ɹ���"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		local message;	
		local randMessage = random(3);
		local sItemName = GetItemName(sceneId, x889080_g_EquipList[nItemIndex].id)
		
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, nBagIndex)
		
		if randMessage == 1 then
		   	message = format("#W#{_INFOUSR%s}#W#{WLS_08}#Y%d#W#{WLS_09}#{_INFOMSG%s}#I�Ϲ��Ͼ��͵�#G����#R�һ�NPC#I������Ц�������ã����#{_INFOMSG%s}#{WLS_11}", LuaFnGetName(sceneId, selfId), x889080_g_StoneList[nLevel].num, szTransferStone, szTransferEquip);
		elseif randMessage == 2 then
			message = format("#W#{_INFOUSR%s}#W#{WLS_03}#Y%d#W#{WLS_04}#{_INFOMSG%s}	#I�͵�#G����#R�һ�NPC#I���˹��֣����������ͣ�#{_INFOMSG%s}#{WLS_06}#{_INFOMSG%s}#{WLS_07}", LuaFnGetName(sceneId, selfId), x889080_g_StoneList[nLevel].num, szTransferStone, szTransferStone, szTransferEquip);
		else
			message = format("#W#G����#R�һ�NPC#I����#Y%d#cffffcc��#W#{_INFOMSG%s}#cffffcc���Ե��޵�����#W#{_INFOUSR%s}#{WLS_01}#{_INFOMSG%s}#{WLS_02}", x889080_g_StoneList[nLevel].num, szTransferStone, LuaFnGetName(sceneId, selfId), szTransferEquip);
		end
		
		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		return
	end

	for i, findId in x889080_g_eventList do
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
function x889080_OnDie( sceneId, selfId, killerId )
end
