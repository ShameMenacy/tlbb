--����NPC
--�齱
--��ͨ
x210531_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ�������������˸���������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ�������������˸���������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ�������������˸���������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ�������������˸���������ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ɹ���", 
}
--**********************************
--�¼��������
--**********************************
function x510532_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ff������������ƽ̨" )
		AddText( sceneId, "#G��#cFF0000���������һ�#G��" )
		AddText( sceneId, "#G��#cFF0000������������#G��" )
		AddText( sceneId, "#G��#cFF0000�ռ���������#G��" )
              AddText( sceneId, "#G��#cFF0000��ϴ��������#G��" )
		AddText( sceneId, "#cff99ff��ʾ��#G���������Ƕ�ı�ʯ#cff99ff��" )
		AddNumText( sceneId, x510532_g_ScriptId, "#G��#cFF0000����ƽ̨#G��", 10, 100 )
		AddNumText( sceneId, x510532_g_ScriptId, "�´�����", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x510532_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff��������#W������#Y����BOSS#W���!" )
		      AddText( sceneId, "#G��#cFF0000�����һ�#G��" )
		      AddText( sceneId, "#G��#cFF0000��������#G��" )
		      AddText( sceneId, "#G��#cFF0000��������#G��" )
		       AddText( sceneId, "#cff99ff��ʾ��#G���������Ƕ�ı�ʯ#cff99ff��" )
			AddNumText( sceneId, x510532_g_scriptId, "#G��#cFF0000106���������һ�#G��", 10, 101)
			AddNumText( sceneId, x510532_g_scriptId, "#G��#cFF0000106������������#G��", 10, 102)
			AddNumText( sceneId, x510532_g_scriptId, "#G��#cFF0000106������������#G��", 10, 103)
                     AddNumText( sceneId, x510532_g_scriptId, "#G��#cFF0000106��ϴ��������#G��", 10, 104)
			AddNumText( sceneId, x510532_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff��Ϧ�Ļ���#W������#Y����BOSS#W���!" )
		      AddText( sceneId, "�һ�����������Ҫ���ģ�" )
		      AddText( sceneId, "#cff99ff��Ϧ�Ļ���#W50#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ�һ���" )
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����", 10, 1011)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����", 10, 1012)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ��", 10, 1013)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������", 10, 1014)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������", 10, 1015)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��", 10, 1016)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��", 10, 1017)
			AddNumText( sceneId, x510532_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553101, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
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
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553104, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
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
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553107, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
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
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553110, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
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
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553113, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
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
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553116, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
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
	       	local nStoneId1 = 30008081
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,30008081,50)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553119, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
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
		      AddText( sceneId, "#c0066ff��Ϧ�Ļ���#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff��Ϧ�Ļ���#W20#cff99ff��" )
		      AddText( sceneId, "#Gȷ��һ��Ҫ��ժ�������ϵı�ʯ��" )
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����  ��9��", 10, 1021)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����  ��9��", 10, 1022)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ��  ��9��", 10, 1023)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������  ��9��", 10, 1024)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������  ��9��", 10, 1025)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��  ��9��", 10, 1026)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��  ��9��", 10, 1027)
			AddNumText( sceneId, x510532_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
                     local nStoneId0 = 10553101
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553101,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553102, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����������ǳɹ���"
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
                     local nStoneId0 = 10553104
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553104,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553105, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����������ǳɹ���"
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
                     local nStoneId0 = 10553107
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553107,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553108, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����������ǳɹ���"
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
                     local nStoneId0 = 10553110
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553110,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553111, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����������ǳɹ���"
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
                     local nStoneId0 = 10553113
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553113,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553114, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����������ǳɹ���"
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
                     local nStoneId0 = 10553116
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553116,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553117, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����������ǳɹ���"
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
                     local nStoneId0 = 10553119
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553119,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553120, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����������ǳɹ���"
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
		      AddText( sceneId, "#c0066ff��Ϧ�Ļ���#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "�ռ�������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff��Ϧ�Ļ���#W20#cff99ff��" )
		      AddText( sceneId, "#Gȷ��һ��Ҫ��ժ�������ϵı�ʯ��" )
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����  �ռ�", 10, 1031)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����  �ռ�", 10, 1032)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ��  �ռ�", 10, 1033)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������  �ռ�", 10, 1034)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������  �ռ�", 10, 1035)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��  �ռ�", 10, 1036)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��  �ռ�", 10, 1037)
			AddNumText( sceneId, x510532_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1031 then
                     local nStoneId0 = 10553102
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553102,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553103, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������Ϊ�ռ��ɹ���"
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
                     local nStoneId0 = 10553105
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553105,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553106, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������Ϊ�ռ��ɹ���"
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
                     local nStoneId0 = 10553108
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553108,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553109, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������Ϊ�ռ��ɹ���"
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
                     local nStoneId0 = 10553111
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553111,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553112, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������Ϊ�ռ��ɹ���"
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
                     local nStoneId0 = 10553114
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553114,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553115, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������Ϊ�ռ��ɹ���"
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
                     local nStoneId0 = 10553117
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553117,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553118, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������Ϊ�ռ��ɹ���"
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
                     local nStoneId0 = 10553120
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553120,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553121, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������Ϊ�ռ��ɹ���"
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

       elseif GetNumText() == 104 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff��Ϧ�Ļ���#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "��ϴ������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff��Ϧ�Ļ���#W20#cff99ff��" )
		      AddText( sceneId, "#Gȷ��һ��Ҫ��ժ�������ϵı�ʯ��" )
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����  �ռ�", 10, 1041)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ�����  �ռ�", 10, 1042)
			AddNumText( sceneId, x510532_g_scriptId, "#G�����ǣ��  �ռ�", 10, 1043)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������  �ռ�", 10, 1044)
			AddNumText( sceneId, x510532_g_scriptId, "#G��������  �ռ�", 10, 1045)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��  �ռ�", 10, 1046)
			AddNumText( sceneId, x510532_g_scriptId, "#G��õ��  �ռ�", 10, 1047)
			AddNumText( sceneId, x510532_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1041 then
                     local nStoneId0 = 10553103
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553103,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553103, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������ϴ�ɹ���"
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

	elseif GetNumText() == 1042 then
                     local nStoneId0 = 10553106
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553106,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553106, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������ϴ�ɹ���"
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


	elseif GetNumText() == 1043 then
                     local nStoneId0 = 10553109
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553109,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553109, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������ϴ�ɹ���"
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

	elseif GetNumText() == 1044 then
                     local nStoneId0 = 10553112
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553112,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553112, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������ϴ�ɹ���"
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


	elseif GetNumText() == 1045 then
                     local nStoneId0 = 10553115
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553115,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553115, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������ϴ�ɹ���"
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

			
	elseif GetNumText() == 1046 then
                     local nStoneId0 = 10553118
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553118,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553118, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������ϴ�ɹ���"
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


	elseif GetNumText() == 1047 then
                     local nStoneId0 = 10553121
	       	local nStoneId1 = 30008081
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10553121,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30008081,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10553121, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����������ϴ�ɹ���"
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
