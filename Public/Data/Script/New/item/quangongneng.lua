--����NPC
--�齱
--��ͨ
x210531_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ��������������������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ��������������������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ��������������������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ��������������������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
}
--**********************************
--�¼��������
--**********************************
function x210531_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ff��������ƽ̨" )
		AddText( sceneId, "#G��#cFF0000��������#G��" )
		AddText( sceneId, "#G��#cFF0000��������#G��" )
		--AddText( sceneId, "����#G��#cFF0000LV5-LV6#G��#cFF0000100%��" )
		AddText( sceneId, "#cff99ff��ʾ��#G���������Ƕ�ı�ʯ#cff99ff��" )
		AddNumText( sceneId, x210531_g_ScriptId, "#G��#cFF0000��������#G��", 10, 100 )
		--AddNumText( sceneId, x210531_g_ScriptId, "#G��#cFF0000��������#G��", 5, 200 )
		--AddNumText( sceneId, x210531_g_ScriptId, "����#G��#cFF0000LV5-LV6#G��#cFF0000100%��", 5, 300 )
		--AddNumText( sceneId, x210531_g_ScriptId, "#cff99cc��ħ�꡻#W֮��#Y�ϳ�#G��#cFF0000����#G��#cFF0000��", 5, 400 )
		AddNumText( sceneId, x210531_g_ScriptId, "�´�����", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x210531_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y���Ӹ���#W���!" )
		      --AddText( sceneId, "#G��#cFF0000LV1-LV3#G��#cFF000050%��" )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G��#cFF0000��ʼ����#G��", 10, 101)
			AddNumText( sceneId, x210531_g_scriptId, "#G��#cFF0000��������#G��", 10, 102)
			AddNumText( sceneId, x210531_g_scriptId, "#G��#cFF0000��ʼ����#G��", 10, 103)
			--AddNumText( sceneId, x210531_g_scriptId, "һ��#G��#cFF0000LV3-LV4#G��#cFF000010%��", 5, 103)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y���Ӹ���#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV3#G��#cFF000050%��" )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ƶ�#G", 10, 1011)
			AddNumText( sceneId, x210531_g_scriptId, "#Gն�Ƕϳ�ǹ#G", 10, 1012)
			AddNumText( sceneId, x210531_g_scriptId, "#G������а��#G", 10, 1013)
			AddNumText( sceneId, x210531_g_scriptId, "#G����ŪӰ��#G", 10, 1014)
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ԩ��#G", 10, 1015)
			AddNumText( sceneId, x210531_g_scriptId, "#Gת�����ǹ�#G", 10, 1016)
			AddNumText( sceneId, x210531_g_scriptId, "#G���������#G", 10, 1017)
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ӱ��#G", 10, 1018)
			AddNumText( sceneId, x210531_g_scriptId, "#G����ҫ����#G", 10, 1019)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId0 = 10300005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553119, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1012 then
	       	local nStoneId0 = 10300005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553124, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1013 then
	       	local nStoneId0 = 10300005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10300005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553129, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1014 then
	       	local nStoneId0 = 10302005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553134, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1015 then
	       	local nStoneId0 = 10302005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553139, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
	elseif GetNumText() == 1016 then
	       	local nStoneId0 = 10304005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553149, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1017 then
	       	local nStoneId0 = 10304005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10304005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553154, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
	elseif GetNumText() == 1018 then
	       	local nStoneId0 = 10305005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553159, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
				elseif GetNumText() == 1019 then
	       	local nStoneId0 = 10305005
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553164, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y����Ʈ�츱��#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ƶ�#G", 10, 1021)
			AddNumText( sceneId, x210531_g_scriptId, "#Gն�Ƕϳ�ǹ#G", 10, 1022)
			AddNumText( sceneId, x210531_g_scriptId, "#G������а��#G", 10, 1023)
			AddNumText( sceneId, x210531_g_scriptId, "#G����ŪӰ��#G", 10, 1024)
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ԩ��#G", 10, 1025)
			AddNumText( sceneId, x210531_g_scriptId, "#Gת�����ǹ�#G", 10, 1026)
			AddNumText( sceneId, x210531_g_scriptId, "#G���������#G", 10, 1027)
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ӱ��#G", 10, 1028)
			AddNumText( sceneId, x210531_g_scriptId, "#G����ҫ����#G", 10, 1029)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
	       	local nStoneId0 = 10553119
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553119,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553120, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1022 then
	       	local nStoneId0 = 10553124
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553124,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553125, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1023 then
	       	local nStoneId0 = 10553129
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553129,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553130, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1024 then
	       	local nStoneId0 = 10553134
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553134,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553135, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1025 then
	       	local nStoneId0 = 10553139
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553139,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553140, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
	elseif GetNumText() == 1026 then
	       	local nStoneId0 = 10553149
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553149,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553150, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1027 then
	       	local nStoneId0 = 10553154
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553154,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553155, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
	elseif GetNumText() == 1028 then
	       	local nStoneId0 = 10553159
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553159,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553160, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
				elseif GetNumText() == 1029 then
	       	local nStoneId0 = 10553164
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553164,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553165, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 103 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y����Ʈ�츱��#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W5#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ƶ�#G", 10, 1031)
			AddNumText( sceneId, x210531_g_scriptId, "#Gն�Ƕϳ�ǹ#G", 10, 1032)
			AddNumText( sceneId, x210531_g_scriptId, "#G������а��#G", 10, 1033)
			AddNumText( sceneId, x210531_g_scriptId, "#G����ŪӰ��#G", 10, 1034)
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ԩ��#G", 10, 1035)
			AddNumText( sceneId, x210531_g_scriptId, "#Gת�����ǹ�#G", 10, 1036)
			AddNumText( sceneId, x210531_g_scriptId, "#G���������#G", 10, 1037)
			AddNumText( sceneId, x210531_g_scriptId, "#G������Ӱ��#G", 10, 1038)
			AddNumText( sceneId, x210531_g_scriptId, "#G����ҫ����#G", 10, 1039)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1031 then
	       	local nStoneId0 = 10553120
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553120,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553120, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1032 then
	       	local nStoneId0 = 10553125
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553125,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553125, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1033 then
	       	local nStoneId0 = 10553130
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553130,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553130, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1034 then
	       	local nStoneId0 = 10553135
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553135,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553135, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1035 then
	       	local nStoneId0 = 10553140
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553140,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553140, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
	elseif GetNumText() == 1036 then
	       	local nStoneId0 = 10553150
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553150,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553150, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 1037 then
	       	local nStoneId0 = 10553155
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553155,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553155, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
	elseif GetNumText() == 1038 then
	       	local nStoneId0 = 10553160
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553160,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553160, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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
			
				elseif GetNumText() == 1039 then
	       	local nStoneId0 = 10553165
	       	local nStoneId1 = 30505817
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=5 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10553165,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,5)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553165, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬���������ɹ���"
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

	elseif GetNumText() == 202 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#Y����Boss������#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV9-LV19#G��#cFF000015%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff�����ξ���#W1#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633ն��ǹ#G��#cFF0000LV5-LV6#G��#cFF000015%��", 5, 2021)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633ŪӰ��#G��#cFF0000LV5-LV6#G��#cFF000015%��", 5, 2022)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633���#G��#cFF0000LV5-LV6#G��#cFF000015%��", 5, 2023)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 2021 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2022 then
	       	local nStoneId0 = 10302010
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2023 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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

	elseif GetNumText() == 203 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#YƮ�츱��#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV9-LV19#G��#cFF000015%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff�����ξ���#W1#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633ն��ǹ#G��#cFF0000LV6-LV7#G��#cFF000015%��", 5, 2031)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633ŪӰ��#G��#cFF0000LV6-LV7#G��#cFF000015%��", 5, 2032)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633���#G��#cFF0000LV6-LV7#G��#cFF000015%��", 5, 2033)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2031 then
	       	local nStoneId0 = 10301002
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301002,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301003, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2032 then
	       	local nStoneId0 = 10302011
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302011,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302012, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2033 then
	       	local nStoneId0 = 10305008
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305009, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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

	elseif GetNumText() == 204 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#YƮ�츱��#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV9-LV19#G��#cFF000015%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff�����ξ���#W1#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff�ϳ�ǹ#G��#cFF0000LV7-LV8#G��#cFF000015%��", 5, 2041)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff��Ԩ��#G��#cFF0000LV7-LV8#G��#cFF000015%��", 5, 2042)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff���黷#G��#cFF0000LV7-LV8#G��#cFF000015%��", 5, 2043)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2041 then
	       	local nStoneId0 = 10301003
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301003,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301004, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2042 then
	       	local nStoneId0 = 10302012
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302013, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2043 then
	       	local nStoneId0 = 10305009
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305009,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305010, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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

	elseif GetNumText() == 205 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#YƮ�츱��#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV9-LV19#G��#cFF000015%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff�����ξ���#W1#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff�ϳ�ǹ#G��#cFF0000LV8-LV9#G��#cFF000015%��", 5, 2051)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff��Ԩ��#G��#cFF0000LV8-LV9#G��#cFF000015%��", 5, 2052)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff���黷#G��#cFF0000LV8-LV9#G��#cFF000015%��", 5, 2053)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2051 then
	       	local nStoneId0 = 10301004
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301004,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301005, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2052 then
	       	local nStoneId0 = 10302013
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302013,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302014, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2053 then
	       	local nStoneId0 = 10305010
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305010,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305011, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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

	elseif GetNumText() == 206 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#YƮ�츱��#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV9-LV19#G��#cFF000015%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff�����ξ���#W1#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff�ϳ�ǹ#G��#cFF0000LV9-LV10#G��#cFF000015%��", 5, 2061)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff��Ԩ��#G��#cFF0000LV9-LV10#G��#cFF000015%��", 5, 2062)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff���黷#G��#cFF0000LV9-LV10#G��#cFF000015%��", 5, 2063)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2061 then
	       	local nStoneId0 = 10301005
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301005,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301197, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2062 then
	       	local nStoneId0 = 10302014
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302014,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303000, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 2063 then
	       	local nStoneId0 = 10305011
	       	local nStoneId1 = 30503090
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305011,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503090,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305012, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#Y����Boss������#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV5-LV6#G��#cFF0000100%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff������ξ���#W200#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "����#G��#cFF0000LV5-LV6#G��#cFF0000100%��", 5, 301)
			--AddNumText( sceneId, x210531_g_scriptId, "����#G��#cFF0000LV11-LV#WMAX#G��#cFF000020%��", 5, 302)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 301 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#Y����Boss������#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV5-LV6#G��#cFF0000100%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff������ξ���#W200#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633�廢�ϻ�#G��#cFF0000LV5-LV6#G��#cFF0000100%��", 5, 3011)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff99ff����˫��#G��#cFF0000LV5-LV6#G��#cFF0000100%��", 5, 3012)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#cff6633��������#G��#cFF0000LV5-LV6#G��#cFF0000100%��", 5, 3013)
			AddNumText( sceneId, x210531_g_scriptId, "#G�졤#cff6633�������#G��#cFF0000LV5-LV6#G��#cFF0000100%��", 5, 3014)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 3011 then
	       	local nStoneId0 = 10301001
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10301001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301002, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 3012 then
	       	local nStoneId0 = 10302010
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10302010,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302011, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 3013 then
	       	local nStoneId0 = 10305007
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305008, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 3014 then
	       	local nStoneId0 = 10305328
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10305328,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305329, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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


	elseif GetNumText() == 302 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff������꾫��#W������#YƮ�츱��#W���!" )
		      AddText( sceneId, "#c0066ff����#G��#cFF0000LV19-LV#WMAX#G��#cFF000020%��" )
		      AddText( sceneId, "�������װ����Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ�����װ��#W1#G��" )
		      AddText( sceneId, "#cff99ff������ξ���#W1#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x210531_g_scriptId, "#G����#ccc33cc������#G��#cFF0000LV11-LV#WMAX#G��#cFF000020%��", 5, 3021)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#ccc33ccת�깳#G��#cFF0000LV11-LV#WMAX#G��#cFF000020%��", 5, 3022)
			AddNumText( sceneId, x210531_g_scriptId, "#G����#ccc33ccħɷ��#G��#cFF0000LV11-LV#WMAX#G��#cFF000020%��", 5, 3023)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 3021 then
	       	local nStoneId0 = 10301198
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId )
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10301198,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10301199, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[ϵͳ]:#G�������,��ϲ#{_INFOUSR%s}�������װ��������,ȡ���ռ���Ʒ#{_INFOMSG%s}!������������Դ���ǿ,���ǾӼ�����,PKɱ�˵ıر�Ŷ~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 3022 then
	       	local nStoneId0 = 10303001
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10303001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10303002, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[ϵͳ]:#G�������,��ϲ#{_INFOUSR%s}�������װ��������,ȡ���ռ���Ʒ#{_INFOMSG%s}!������������Դ���ǿ,���ǾӼ�����,PKɱ�˵ıر�Ŷ~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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
	elseif GetNumText() == 3023 then
	       	local nStoneId0 = 10305013
	       	local nStoneId1 = 30503091
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
 		                    local playername = GetName(sceneId, selfId)
					LuaFnDelAvailableItem(sceneId,selfId,10305013,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503091,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10305014, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
		                     local strText = format("@*;SrvMsg;SCA:#G[ϵͳ]:#G�������,��ϲ#{_INFOUSR%s}�������װ��������,ȡ���ռ���Ʒ#{_INFOMSG%s}!������������Դ���ǿ,���ǾӼ�����,PKɱ�˵ıر�Ŷ~ ", playername, szItemTransfer)									
		                     BroadMsgByChatPipe(sceneId, selfId, strText, 4)
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬װ�������ɹ���"
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

	elseif GetNumText() == 400 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#cff99cc��ħ�꡻#W֮��#W������#G������#W���!" )
		      AddText( sceneId, "�ϳ�������Ҫ���ģ�" )
		      AddText( sceneId, "#cff99ff����֮ʯ" )
		      AddText( sceneId, "#G����֮ʯ#W��ȡ��#Y������#G����#W��ȡ" )
		      AddText( sceneId, "#cff99cc��ħ�꡻#W֮��#G+#cFF0000����֮ʯ#G=#cFF0000����" )
			AddNumText( sceneId, x210531_g_scriptId, "�ϳ�#G����#Y���浶#G��[LV1]#cFF0000��������", 5, 401)
			AddNumText( sceneId, x210531_g_scriptId, "�ϳ�#G����#Y���⽣#G��[LV1]#cFF0000����˫��", 5, 402)
			AddNumText( sceneId, x210531_g_scriptId, "�ϳ�#G����#Y������#G��[LV1]#cFF0000���Ȼ���", 5, 403)
			AddNumText( sceneId, x210531_g_scriptId, "ȡ��", 5, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 401 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10300006, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ��ɹ���"
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

	elseif GetNumText() == 402 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10302006, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ��ɹ���"
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

	elseif GetNumText() == 403 then
	       	local nStoneId0 = 10470012
	       	local nStoneId1 = 30503093
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10470012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503093,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10304006, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ��ɹ���"
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
function x210531_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x210531_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x210531_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x210531_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x210531_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x210531_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x210531_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
