--����NPC
--�齱
--��ͨ
x990002_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ���������ռ����㹻�����ʯ��ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ܳɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ���������ռ����㹻�����ʯ��ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ܳɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ���������ռ����㹻�����ʯ��ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ܳɹ���", 
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ���������ռ����㹻�����ʯ��ͻȻ�����ܲ����һ������#{_INFOMSG%s}�����ܳɹ���", 
}
--**********************************
--�¼��������
--**********************************
function x990002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "#b#gfffc3c�������ƽ̨,Ը�������ߵ���꣡" )
		AddText( sceneId, "#G��#cFF0000ʹ�ñ�ƽ̨����ÿ�α��뽻��20�����ʯ#G��" )
		AddNumText( sceneId, x990002_g_ScriptId, "#G��#cFF0000������#G��", 10, 101 )
              AddNumText( sceneId, x990002_g_ScriptId, "#G��#cFF0000������#G��", 10, 102 )
		AddNumText( sceneId, x990002_g_ScriptId, "#G��#cFF0000�������#G��", 10, 103 )
		AddNumText( sceneId, x990002_g_ScriptId, "#G��#cFF0000��������#G��", 10, 104 )
              AddNumText( sceneId, x990002_g_ScriptId, "#G��#cFF0000��������#G��", 10, 105 )
		AddNumText( sceneId, x990002_g_ScriptId, "�´�����", 9, 4 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x990002_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 101 then
		BeginEvent( sceneId )
		      AddText( sceneId, "��������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��80�����#W1#G��" )
		      AddText( sceneId, "#cff99ff���ʯ#W20#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1011)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1012)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1013)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1014)
			AddNumText( sceneId, x990002_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1011 then
	       	local nStoneId0 = 10156001
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156001,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156006, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                   AddSkill( sceneId, selfId, 1613 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1012 then
	       	local nStoneId0 = 10156002
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156002,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156007, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					AddSkill( sceneId, selfId, 1601 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1013 then
	       	local nStoneId0 = 10156003
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156003,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156008, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					AddSkill( sceneId, selfId, 1595 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1014 then
	       	local nStoneId0 = 10156004
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156004,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156009, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					AddSkill( sceneId, selfId, 1607 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 102 then
		BeginEvent( sceneId )
		      AddText( sceneId, "��������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��102�����#W1#G��" )
		      AddText( sceneId, "#cff99ff���ʯ#W20#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1021)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1022)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1023)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1024)
			AddNumText( sceneId, x990002_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1021 then
	       	local nStoneId0 = 10156006
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156006,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156010, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1022 then
	       	local nStoneId0 = 10156007
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156007,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156011, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1023 then
	       	local nStoneId0 = 10156008
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156008,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156012, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1024 then
	       	local nStoneId0 = 10156009
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156009,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156013, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

  elseif GetNumText() == 103 then
		BeginEvent( sceneId )
		      AddText( sceneId, "���������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��112�����#W1#G��" )
		      AddText( sceneId, "#cff99ff���ʯ#W20#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1031)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1032)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1033)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1034)
			AddNumText( sceneId, x990002_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1031 then
	       	local nStoneId0 = 10156010
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156010,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156014, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1032 then
	       	local nStoneId0 = 10156011
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156011,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156015, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1033 then
	       	local nStoneId0 = 10156012
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156012,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156016, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5985, 0 )	
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1034 then
	       	local nStoneId0 = 10156013
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156013,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156017, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5987, 0 )	
					strText = "#G��ϲ�㣬��������ܳɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 104 then
		BeginEvent( sceneId )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��120�����#W1#G��" )
		      AddText( sceneId, "#cff99ff���ʯ#W20#cff99ff��" )
		      AddText( sceneId, "#G��ȷ��Ҫ������" )
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1041)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1042)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1043)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1044)
			AddNumText( sceneId, x990002_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1041 then
	       	local nStoneId0 = 10156014
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156014,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156014, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
					strText = "#G��ϲ�㣬�����������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1042 then
	       	local nStoneId0 = 10156015
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156015,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156015, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
					strText = "#G��ϲ�㣬�����������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1043 then
	       	local nStoneId0 = 10156016
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156016,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156016, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5985, 0 )	
					strText = "#G��ϲ�㣬�����������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1044 then
	       	local nStoneId0 = 10156017
	       	local nStoneId1 = 30505815
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId1)
            if c0 >=1 and c1 >=20 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156017,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30505815,20)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156017, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x990002_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5987, 0 )	
					strText = "#G��ϲ�㣬�����������ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G��Ĳ��ϲ�������ȥ�ռ��㹻�����ʯ�����ѣ���"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

       elseif GetNumText() == 105 then
		BeginEvent( sceneId )
		      AddText( sceneId, "����������Ҫ���ģ�" )
		      AddText( sceneId, "#G���Ӧ��120�����#W1#G��" )
		      AddText( sceneId, "#G��ѡ����Ҫ���켼�ܵ����" )
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1051)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1052)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1053)
			AddNumText( sceneId, x990002_g_scriptId, "#��Ҥ��[��]#G", 10, 1054)
			AddNumText( sceneId, x990002_g_scriptId, "ȡ��", 9, 4)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1051 then
	       	local nStoneId0 = 10156014
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1613 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5988, 0 )	
					strText = "#G��ϲ�㣬�������³ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G����������û�е�Ŷ��"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1052 then
	       	local nStoneId0 = 10156015
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1601 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5986, 0 )	
					strText = "#G��ϲ�㣬�������³ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G����������û�е�Ŷ��"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1053 then
	       	local nStoneId0 = 10156016
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1595 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5985, 0 )	
					strText = "#G��ϲ�㣬�������³ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G����������û�е�Ŷ��"
					AddText( sceneId, strText )					
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
			end

	elseif GetNumText() == 1054 then
	       	local nStoneId0 = 10156017
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId0)
            if c0 >=1 then
				BeginEvent( sceneId ) 
                                  AddSkill( sceneId, selfId, 1607 )
                                  AddSkill( sceneId, selfId, 277 )
                                  LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5987, 0 )	
					strText = "#G��ϲ�㣬�������³ɹ���"
					AddText( sceneId, strText )
				EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
                    else
               	BeginEvent( sceneId ) 
					strText = "#G����������û�е�Ŷ��"
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
function x990002_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x990002_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x990002_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x990002_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x990002_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x990002_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x990002_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
