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
function x510533_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#c0066ff��������ƽ̨" )
		AddText( sceneId, "#G��#cFF0000�Ĵ������һ�#G��" )
		AddText( sceneId, "#G��#cFF0000�Ĵ���������#G��" )
		AddText( sceneId, "#cff99ff��ʾ��#G���������Ƕ�ı�ʯ#cff99ff��" )
		AddNumText( sceneId, x510533_g_ScriptId, "#G��#cFF0000����ƽ̨#G��", 10, 100 )
		AddNumText( sceneId, x510533_g_ScriptId, "�´�����", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x510533_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 100 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff��������#W������#Y����BOSS#W���!" )
		      AddText( sceneId, "#G��#cFF0000�Ĵ������һ�#G��" )
		       AddText( sceneId, "#cff99ff��ʾ��#G���������Ƕ�ı�ʯ#cff99ff��" )
			AddNumText( sceneId, x510533_g_scriptId, "#G��#cFF0000�ռ���������һ�#G��", 10, 101)
			AddNumText( sceneId, x510531_g_scriptId, "#G��#cFF0000�ռ��������ͨ��#G��", 10, 102)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff��������#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV3#G��#cFF000050%��" )
		      AddText( sceneId, "�һ�������Ҫ���ģ�" )
		      --AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff��������#W200#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ�һ���" )
			AddNumText( sceneId, x510533_g_scriptId, "#G��������", 10, 1011)
			AddNumText( sceneId, x510533_g_scriptId, "#G���쳤��", 10, 1012)
			AddNumText( sceneId, x510533_g_scriptId, "#G�������", 10, 1013)
			AddNumText( sceneId, x510533_g_scriptId, "#G��������", 10, 1014)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ȫ", 10, 1015)
			AddNumText( sceneId, x510533_g_scriptId, "#G�������", 10, 1016)
			AddNumText( sceneId, x510533_g_scriptId, "#G��Ħһ̾", 10, 1017)
			AddNumText( sceneId, x510533_g_scriptId, "#G̫��Ʈ��", 10, 1018)
			AddNumText( sceneId, x510533_g_scriptId, "#Gĩ����Ȩ", 10, 1019)
			AddNumText( sceneId, x510533_g_scriptId, "#G��������", 10, 1020)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555168, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ����������͵����������Ҫ����200���ſ������Ƴ���Ŷ���Ͳ�Ҫ�����ű�ʹ���ˣ�С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555171, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����͵����������Ҫ����200���ſ������Ƴ���Ŷ���һ������ɹ���"
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
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555174, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����͵����������Ҫ����200���ſ������Ƴ���Ŷ���һ������ɹ���"
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
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555177, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ������Ͳ�Ҫ�����ű�ʹ���������͵����������Ҫ����200���ſ������Ƴ���Ŷ����С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 1015 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555180, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����͵����������Ҫ����200���ſ������Ƴ���Ŷ���һ������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ����������͵����������Ҫ����200���ſ������Ƴ���Ŷ���Ͳ�Ҫ�����ű�ʹ���ˣ�С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

			
	elseif GetNumText() == 1016 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555183, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����͵����������Ҫ����200���ſ������Ƴ���Ŷ���һ������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ����������͵����������Ҫ����200���ſ������Ƴ���Ŷ���Ͳ�Ҫ�����ű�ʹ���ˣ�С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 1017 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555186, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ����������͵����������Ҫ����200���ſ������Ƴ���Ŷ���Ͳ�Ҫ�����ű�ʹ���ˣ�С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

			
	elseif GetNumText() == 1018 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555189, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ����������͵����������Ҫ����200���ſ������Ƴ���Ŷ���Ͳ�Ҫ�����ű�ʹ���ˣ�С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

			
	elseif GetNumText() == 1019 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555192, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�����͵����������Ҫ����200���ſ������Ƴ���Ŷ���һ������ɹ���"
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

			
	elseif GetNumText() == 1020 then
	       	local nStoneId1 = 20310118
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c1 >=200 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310118,200)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555195, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬�һ������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ������Ͳ�Ҫ�����ű�ʹ���ˣ������͵����������Ҫ����200���ſ������Ƴ���Ŷ��С���ұ���Ŷ����"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end


	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff��������#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ������#W1#G��" )
		      AddText( sceneId, "#cff99ff��������#W20#cff99ff��" )
			  AddText( sceneId, "#cff99ff����ͨ��󣬿��Խ���������ǿ��������������#W�������ƷŶ��#cff99ff" )
		      AddText( sceneId, "#Gȷ��һ��Ҫ��ժ�������ϵı�ʯ��" )
			AddNumText( sceneId, x510533_g_scriptId, "#G�������� - ����ͨ��", 10, 1021)
			AddNumText( sceneId, x510533_g_scriptId, "#G���쳤�� - ����ͨ��", 10, 1022)
			AddNumText( sceneId, x510533_g_scriptId, "#G������� - ����ͨ��", 10, 1023)
			AddNumText( sceneId, x510533_g_scriptId, "#G�������� - ����ͨ��", 10, 1024)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ȫ - ����ͨ��", 10, 1025)
			AddNumText( sceneId, x510533_g_scriptId, "#G������� - ����ͨ��", 10, 1026)
			AddNumText( sceneId, x510533_g_scriptId, "#G��Ħһ̾ - ����ͨ��", 10, 1027)
			AddNumText( sceneId, x510533_g_scriptId, "#G̫��Ʈ�� - ����ͨ��", 10, 1028)
			AddNumText( sceneId, x510533_g_scriptId, "#Gĩ����Ȩ - ����ͨ��", 10, 1029)
			AddNumText( sceneId, x510533_g_scriptId, "#G�������� - ����ͨ��", 10, 1030)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
                     local nStoneId0 = 10555168
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555168,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555168, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555171
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555171,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555171, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555174
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555174,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555174, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555177
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555177,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555177, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555180
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555180,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555180, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555183
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555183,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555183, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555186
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555186,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555186, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555189
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555189,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555189, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
                     local nStoneId0 = 10555192
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555192,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555192, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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


	elseif GetNumText() == 1030 then
                     local nStoneId0 = 10555195
	       	local nStoneId1 = 20310118
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555195,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,20310118,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555195, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬����ͨ��ɹ���"
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
		      AddText( sceneId, "#c0066ff�����#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "��������������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��9������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G����ժ�������ϵı�ʯ�����������ʧ��" )
			AddNumText( sceneId, x510533_g_scriptId, "#G����������", 10, 104)
			AddNumText( sceneId, x510533_g_scriptId, "#G�����︽��", 10, 105)
			AddNumText( sceneId, x510533_g_scriptId, "#G����������", 10, 106)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

       elseif GetNumText() == 104 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "��������������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��9������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G����ժ�������ϵı�ʯ�����������ʧ��" )
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ƶ� - ������", 10, 1041)
			AddNumText( sceneId, x510533_g_scriptId, "#Gն�Ƕϳ�ǹ - ������", 10, 1042)
			AddNumText( sceneId, x510533_g_scriptId, "#G������а�� - ������", 10, 1043)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ŪӰ�� - ������", 10, 1044)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ԩ�� - ������", 10, 1045)
			AddNumText( sceneId, x510533_g_scriptId, "#G�����޺۽� - ������", 10, 1046)
			AddNumText( sceneId, x510533_g_scriptId, "#Gת�����ǹ� - ������", 10, 1047)
			AddNumText( sceneId, x510533_g_scriptId, "#G��������� - ������", 10, 1048)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ӱ�� - ������", 10, 1049)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ҫ���� - ������", 10, 1050)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
       elseif GetNumText() == 1041 then
                     local nStoneId0 = 10555117
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555117,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555118, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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
                     local nStoneId0 = 10555122
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555122,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555123, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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
                     local nStoneId0 = 10555127
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555127,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555128, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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
                     local nStoneId0 = 10555132
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555132,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555133, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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
                     local nStoneId0 = 10555137
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555137,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555138, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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
                     local nStoneId0 = 10555142
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555142,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555143, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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
                     local nStoneId0 = 10555147
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555147,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555148, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


			
	elseif GetNumText() == 1048 then
                     local nStoneId0 = 10555152
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555152,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555153, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

			
	elseif GetNumText() == 1049 then
                     local nStoneId0 = 10555157
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555157,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555158, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1050 then
                     local nStoneId0 = 10555162
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555162,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555163, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

       elseif GetNumText() == 105 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "��������������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��9������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G����ժ�������ϵı�ʯ�����������ʧ��" )
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ƶ� - �︽��", 10, 1051)
			AddNumText( sceneId, x510533_g_scriptId, "#Gն�Ƕϳ�ǹ - �︽��", 10, 1052)
			AddNumText( sceneId, x510533_g_scriptId, "#G������а�� - �︽��", 10, 1053)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ŪӰ�� - �︽��", 10, 1054)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ԩ�� - �︽��", 10, 1055)
			AddNumText( sceneId, x510533_g_scriptId, "#G�����޺۽� - �︽��", 10, 1056)
			AddNumText( sceneId, x510533_g_scriptId, "#Gת�����ǹ� - �︽��", 10, 1057)
			AddNumText( sceneId, x510533_g_scriptId, "#G��������� - �︽��", 10, 1058)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ӱ�� - �︽��", 10, 1059)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ҫ���� - �︽��", 10, 1060)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
       elseif GetNumText() == 1051 then
                     local nStoneId0 = 10555117
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555117,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555119, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

	elseif GetNumText() == 1052 then
                     local nStoneId0 = 10555122
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555122,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555124, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1053 then
                     local nStoneId0 = 10555127
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555127,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555129, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

	elseif GetNumText() == 1054 then
                     local nStoneId0 = 10555132
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555132,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555134, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1055 then
                     local nStoneId0 = 10555137
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555137,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555139, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

			
	elseif GetNumText() == 1056 then
                     local nStoneId0 = 10555142
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555142,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555144, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1057 then
                     local nStoneId0 = 10555147
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555147,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555149, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


			
	elseif GetNumText() == 1058 then
                     local nStoneId0 = 10555152
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555152,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555154, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

			
	elseif GetNumText() == 1059 then
                     local nStoneId0 = 10555157
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555157,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555159, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1060 then
                     local nStoneId0 = 10555162
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555162,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555164, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

       elseif GetNumText() == 106 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "��������������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��9������#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G����ժ�������ϵı�ʯ�����������ʧ��" )
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ƶ� - ������", 10, 1061)
			AddNumText( sceneId, x510533_g_scriptId, "#Gն�Ƕϳ�ǹ - ������", 10, 1062)
			AddNumText( sceneId, x510533_g_scriptId, "#G������а�� - ������", 10, 1063)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ŪӰ�� - ������", 10, 1064)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ԩ�� - ������", 10, 1065)
			AddNumText( sceneId, x510533_g_scriptId, "#G�����޺۽� - ������", 10, 1066)
			AddNumText( sceneId, x510533_g_scriptId, "#Gת�����ǹ� - ������", 10, 1067)
			AddNumText( sceneId, x510533_g_scriptId, "#G��������� - ������", 10, 1068)
			AddNumText( sceneId, x510533_g_scriptId, "#G������Ӱ�� - ������", 10, 1069)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ҫ���� - ������", 10, 1070)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
       elseif GetNumText() == 1061 then
                     local nStoneId0 = 10555117
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555117,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555120, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

	elseif GetNumText() == 1062 then
                     local nStoneId0 = 10555122
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555122,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555125, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1063 then
                     local nStoneId0 = 10555127
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555127,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555130, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

	elseif GetNumText() == 1064 then
                     local nStoneId0 = 10555132
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555132,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555135, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1065 then
                     local nStoneId0 = 10555137
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555137,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555140, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

			
	elseif GetNumText() == 1066 then
                     local nStoneId0 = 10555142
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555142,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555145, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1067 then
                     local nStoneId0 = 10555147
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555147,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555150, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


			
	elseif GetNumText() == 1068 then
                     local nStoneId0 = 10555152
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555152,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555155, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

			
	elseif GetNumText() == 1069 then
                     local nStoneId0 = 10555157
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555157,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555160, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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


	elseif GetNumText() == 1070 then
                     local nStoneId0 = 10555162
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555162,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555165, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

        elseif GetNumText() == 107 then
		BeginEvent( sceneId )
		      AddText( sceneId, "#c0066ff�����#W������#Y����BOSS#W���!" )
		      --AddText( sceneId, "#c0066ffһ��#G��#cFF0000LV1-LV9#G��#cFF000070%��" )
		      AddText( sceneId, "��������������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ���ռ�����#W1#G��" )
		      AddText( sceneId, "#cff99ff�����#W20#cff99ff��" )
		      AddText( sceneId, "#G����ժ�������ϵı�ʯ�����������ʧ��" )
			AddNumText( sceneId, x510533_g_scriptId, "#G����ҫ���� - ������", 10, 1071)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ҫ���� - �︽��", 10, 1072)
			AddNumText( sceneId, x510533_g_scriptId, "#G����ҫ���� - ������", 10, 1073)
			AddNumText( sceneId, x510533_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

       elseif GetNumText() == 1071 then
                     local nStoneId0 = 10555163
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555163,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555163, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

       elseif GetNumText() == 1072 then
                     local nStoneId0 = 10555164
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555164,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555164, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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

       elseif GetNumText() == 1073 then
                     local nStoneId0 = 10555165
	       	local nStoneId1 = 30505817
              c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
                                  LuaFnDelAvailableItem(sceneId,selfId,10555165,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505817,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10555165, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x210531_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					strText = "#G��ϲ�㣬������������ɹ���"
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
