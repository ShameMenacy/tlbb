--����NPC
--�齱
--��ͨ
x892106_g_strGongGaoInfo = {
  --"#I��ϲ���#cFF0000#{_INFOUSR%s}#I����һ��Ŭ���������ռ������㹻������#G�����#I���ɹ��һ�#c0066ff����#I��", 
  --"#I��ϲ���#cFF0000#{_INFOUSR%s}#I����һ��Ŭ���������ռ������㹻������#G�����#I���ɹ��һ�#c0066ff����#I��", 
  --"#I��ϲ���#cFF0000#{_INFOUSR%s}#I����һ��Ŭ���������ռ������㹻������#G�����#I���ɹ��һ�#c0066ff����#I��", 
  --"#I��ϲ���#cFF0000#{_INFOUSR%s}#I����һ��Ŭ���������ռ������㹻������#G�����#I���ɹ��һ�#c0066ff����#I��", 
}
--**********************************
--�¼��������
--**********************************
function x892106_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "  ��ӭ������ʹ����Ԫ����ϵͳ�������󶼸�������Ŷ��#r#cFF0000����һ������ʱװҪ�����£��·�����һ��ˮ+40��˿��3������������Ը֦+50��˿��3����˿���ڲ�ԭ�����ã���" )
		--AddNumText( sceneId, x892106_g_ScriptId, "�һ���������", 5, 100 )
		--AddNumText( sceneId, x892106_g_ScriptId, "�һ������", 5, 200 )
		--AddNumText( sceneId, x892106_g_ScriptId, "�һ��������", 5, 300 )
		AddNumText( sceneId, x892106_g_ScriptId, "��ʱװ������������", 5, 400 )
		AddNumText( sceneId, x892106_g_ScriptId, "�´�����", 5, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892106_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
	       	local nStoneId0 = 20310020
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310020,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10155003, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�ɹ��һ�#Y�������룡"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ������Ͳ�Ҫ�����ű�ʹ���ˣ�С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 300 then
	       	local nStoneId0 = 30505197
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=15 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30505197,15)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10149046, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�ɹ��һ�#Y�����������"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G�ף�����ϲ���Ŷ����׼���ó���Ĳ����������ң�ף����ˣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#cFF0000�ף�����׼����������׼����ʼ�ɣ�����" )
			AddNumText( sceneId, x900034_g_scriptId, "����������Ե", 5, 701)
			AddNumText( sceneId, x900034_g_scriptId, "������������", 5, 702)
			AddNumText( sceneId, x900034_g_scriptId, "����ѩ��˪��", 5, 703)
			AddNumText( sceneId, x900034_g_scriptId, "����������ѩ", 5, 704)
			AddNumText( sceneId, x900034_g_scriptId, "����  �� �� ", 5, 705)
			AddNumText( sceneId, x900034_g_scriptId, "������ѩ��ʨ", 5, 706)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 200 then
	       	local nStoneId0 = 20310020
	       	local nStoneId1 = 10155003
                local nStoneId3 =10124501
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
                c2 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId2)
            if c0 >=200 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310020,200)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,10155003,1)--ɾ����Ʒ
                                         LuaFnDelAvailableItem(sceneId,selfId,10124501,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10155005, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�ɹ��һ�#Y�������"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ������Ͳ�Ҫ�����ű�ʹ���ˣ�С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 701 then
	       	local nStoneId0 = 38000111
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10125001, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G�ף�����ϲ���Ŷ����׼����������Ʒ�������ң�"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 702 then
	       	local nStoneId0 = 30503140
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553220, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G�ף�����ϲ���Ŷ����׼����������Ʒ�������ң�"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 703 then
	       	local nStoneId0 = 38000111
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10125003, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G�ף�����ϲ���Ŷ����׼����������Ʒ�������ң�"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 704 then
	       	local nStoneId0 = 38000111
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000111,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20103108,40)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10125004, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G�ף�����ϲ���Ŷ����׼����������Ʒ�������ң�"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 705 then
	       	local nStoneId0 = 38000112
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000112,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20103108,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553218, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G�ף�����ϲ���Ŷ����׼����������Ʒ�������ң�"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 706 then
	       	local nStoneId0 = 38000112
	       	local nStoneId1 = 20103108
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,38000112,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20103108,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10149012, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892106_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G�ף�����ϲ���Ŷ����׼����������Ʒ�������ң�"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
end
--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x892106_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x892106_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x892106_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x892106_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x892106_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x892106_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x892106_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
