--����NPC
--�齱
--��ͨ
x892107_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ�������ڰѲ����ռ�ȫ�ˡ���������#Y���϶һ�ʹ��#W���һ���һ��#{_INFOMSG%s}��", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ�������ڰѲ����ռ�ȫ�ˡ���������#Y���϶һ�ʹ��#W���һ���һ��#{_INFOMSG%s}��", 
  "#e0e8de5#Y#u#{_INFOUSR%s}#H������иŬ���ռ��������в��ϣ����#W#{_INFOMSG%s}#H������������Ľ����", 
  "#e0e8de5#Y#u#{_INFOUSR%s}#H������иŬ���ռ��������в��ϣ����#W#{_INFOMSG%s}#H������������Ľ����", 
}
--**********************************
--�¼��������
--**********************************
function x892107_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ff������������QQ��Ա��һϵ����Ʒ�һ�ϵͳ,��ȡƾ֤֮������ϵ���������ͷ����㿪ͨ������" )
		AddText( sceneId, "#cff99ff��ʾ��#G#Y����#Gʥ�𹬣���˹��ݣ����ӵȵ�ͼ#G�����Щ�һ����ϣ���" )
		AddNumText( sceneId, x892107_g_ScriptId, "��������QQ���ܶһ�ϵͳ", 5, 100 )
		--AddNumText( sceneId, x892107_g_ScriptId, "QQ���ꡤ�һ�", 5, 200 )
                --AddNumText( sceneId, x892107_g_ScriptId, "QQ��ש���һ�", 5, 300 )
		--AddNumText( sceneId, x892107_g_ScriptId, "QQ��ש���һ�", 5, 400 )
                --AddNumText( sceneId, x892107_g_ScriptId, "#cFF0000�һ�˵��", 5, 500 )
		--AddNumText( sceneId, x892107_g_ScriptId, "�´�����", 5, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892107_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "QQ���϶һ�" )
		      AddText( sceneId, "#G��ȷ��Ҫ�һ���" )
                    AddNumText( sceneId, x892107_g_scriptId, "100��#cFF0000��Ա��Ƭ#Y�һ�#GQQ��Աƾ֤", 5, 101)
                    AddNumText( sceneId, x892107_g_scriptId, "100��#cFF0000������Ƭ#Y�һ�#GQQ����ƾ֤", 5, 102)
                    AddNumText( sceneId, x892107_g_scriptId, "100��#cFF0000��ש��Ƭ#Y�һ�#GQQ��שƾ֤", 5, 103)
			AddNumText( sceneId, x892107_g_scriptId, "100��#cFF0000��ש��Ƭ#Y�һ�#GQQ��ש��Ƭ", 5, 104)
			--AddNumText( sceneId, x892107_g_scriptId, "1000��#cFF0000�� ��#Y�һ�#G10������Ʊ1��", 5, 105)
			--AddNumText( sceneId, x892107_g_scriptId, "6000��#cFF0000�� ��#Y�һ�#G�챦ʯ(5��)2��", 5, 106)
			--AddNumText( sceneId, x892107_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

       elseif GetNumText() == 101 then
	       	local nStoneId0 = 39901042
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=80 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901042,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
	       	local nStoneId0 = 39901044
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=80 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901044,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 103 then
	       	local nStoneId0 = 20102022
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=100 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901043,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 104 then
	       	local nStoneId0 = 39901044
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=50 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,39901044,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 105 then
	       	local nStoneId0 = 20102010
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1000 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20102010,1000)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 39901049, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 106 then
	       	local nStoneId0 = 20102010
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1000 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20102010,6000)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 50513004, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 200 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#G��ֲ���϶һ�" )
		      AddText( sceneId, "#Y��ȷ��Ҫ�һ���" )
			AddNumText( sceneId, x892101_g_scriptId, "60��С��һ�����Ժ����", 5, 201)
			AddNumText( sceneId, x892101_g_scriptId, "60��С��һ�����ʯ30��", 5, 202)
			AddNumText( sceneId, x892101_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
	       	local nStoneId0 = 20104001
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=60 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20104001,60)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30501359, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 202 then
	       	local nStoneId0 = 20104001
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=60 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20104001,60)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30503118, 30)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 300 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�ڿ���϶һ�" )
		      AddText( sceneId, "#G��ȷ��Ҫ�һ���" )
			AddNumText( sceneId, x892101_g_scriptId, "30�����ʯ�һ�С����30��", 5, 301)
			AddNumText( sceneId, x892101_g_scriptId, "100������ʯ�һ�(�챦ʯ6��)", 5, 302)
			AddNumText( sceneId, x892101_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 301 then
	       	local nStoneId0 = 20103119
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20103119,30)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30505107, 30)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 302 then
	       	local nStoneId0 = 20103053
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20103053,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 50513004, 3)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff��ҩ���϶һ�" )
		      AddText( sceneId, "#G��ȷ��Ҫ�һ���" )
			AddNumText( sceneId, x892101_g_scriptId, "100���󱴶һ���Ϧ�Ļ���3��", 5, 401)
			AddNumText( sceneId, x892101_g_scriptId, "10���˲ζһ����컨��", 5, 402)
			AddNumText( sceneId, x892101_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 401 then
	       	local nStoneId0 = 20101025
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20101025,100)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30008081, 3)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 402 then
	       	local nStoneId0 = 20101026
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=20 then
				BeginEvent( sceneId ) 
		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,20101026,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 30509012, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     BroadMsgByChatPipe(sceneId, selfId, Text, 4)
					strText = "#G��ϲ�㣬�һ��ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#Y��Ĳ��ϲ�����������Ĳ����Ƿ���ȫ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 500 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#Y�һ�˵����" )
		      AddText( sceneId, "#G������ѧϰ����ܺ�ȥ��ԭ���Ե���,�ڿ�,��ҩ,��ֲһ��Ҫȥ���ӹ���Ŷ,����,���Ի�������Ʒ" )
			AddNumText( sceneId, x892101_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

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
function x892107_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ

--**********************************
function x892107_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x892107_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x892107_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x892107_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x892107_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x892107_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x892107_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end

