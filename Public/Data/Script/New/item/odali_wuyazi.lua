--����NPC
--����
--��ͨ

--�ű���
x892000_g_ScriptId = 892000

--��ӵ�е��¼�ID�б�
x892000_g_eventList={}

x892000_g_strGongGaoInfo = {
  "#e6f00c7#b#{_INFOUSR%s}#H����һ��Ŭ���������ռ�ȫ�˺ϳ����װ����Ҫ����Ʒ��#Y������#W�����͸���һ��#{_INFOMSG%s}��", 
  "#e0ba4b6#u#{_INFOUSR%s} #cff99ccΪ#Y������#cff99cc������#Y���װ������#cff99cc�����װ��ʹ������#{_INFOMSG%s}��Ϊ��л��", 
  "#effc9d8#cf30768#b#{_INFOUSR%s}#H��#Y�����Ӵ�����#R���װ��#I�������У�һ·����ն���������ǹ��򲻸�������,������#{_INFOMSG%s}��",
  "#e0e8de5#Y#u#{_INFOUSR%s}#H������иŬ���ռ�����#R���װ������#I��������Ʒ�����#W#{_INFOMSG%s}#H������������Ľ����", 
}

--**********************************
--�¼��б�
--**********************************
function x892000_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "����"
	else
		PlayerSex = "����"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"����"..PlayerSex.."��#{WH_NPC_1}")
		for i, eventId in x892000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892000_g_ScriptId,"�������ȼ�",6,7)
		AddNumText(sceneId,x892000_g_ScriptId,"���������",6,8)
		AddNumText(sceneId,x892000_g_ScriptId,"���˵��",8,888)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x892000_OnDefaultEvent( sceneId, selfId,targetId )
	x892000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	local NumText = GetNumText();
	if NumText == 6 then  --ȡ����
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)

	elseif NumText == 888 then  --˵��
		BeginEvent(sceneId)
			AddNumText(sceneId,x892000_g_ScriptId,"�������",6,666)
			AddNumText(sceneId,x892000_g_ScriptId,"����������",6,667)
			AddNumText(sceneId,x892000_g_ScriptId,"�����������",6,668)
			AddNumText(sceneId,x892000_g_ScriptId,"������������ص���",6,669)
			AddNumText(sceneId,x892000_g_ScriptId,"�����չ���Խ���",6,670)
			AddNumText(sceneId,x892000_g_ScriptId,"����������",6,671)
			AddNumText(sceneId,x892000_g_ScriptId,"�������Ч��",6,672)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 666 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddText(sceneId,"#{WH_NPC_10}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 667 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 668 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_11}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 669 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_13}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 670 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_14}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 671 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_15}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 672 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_16}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 7 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_2}")
			AddText(sceneId,"�����ȼ�#G����3#Wʱ��������׺������и��߽׵���������")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892000_g_ScriptId,"���� �����̡��� �ȼ�",6,12)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �����̡��� �ȼ�",6,13)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �����̡��� �ȼ�",6,14)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �����̡��� �ȼ�",6,15)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --������
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_20}")
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��꣨1���� ����",6,16)
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��꣨2���� ����",6,17)
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��꣨3���� ����",6,18)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --�����չ����
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_31}")
			AddNumText(sceneId,x892000_g_ScriptId,"��ȡ ��꣨0���� ��չ����",6,19)
			AddNumText(sceneId,x892000_g_ScriptId,"��ȡ ��꣨1���� ��չ����",6,20)
			AddNumText(sceneId,x892000_g_ScriptId,"��ȡ ��꣨2���� ��չ����",6,21)
			AddNumText(sceneId,x892000_g_ScriptId,"��ȡ ��꣨3���� ��չ����",6,22)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 10 then  --��ϴ��������
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 6 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)

	elseif NumText == 11 then  --���ð���
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_84}")
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --���� �� �ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_3}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����1����",6,23)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����2����",6,24)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����3����",6,25)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 13 then                   --���� �� �ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_5}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡���1����",6,26)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡���2����",6,27)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡���3����",6,28)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 130 then
		x892000_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_6}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����1����",6,29)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����2����",6,30)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����3����",6,31)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 15 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_7}")
			AddText(sceneId,"#{WH_NPC_4}")
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����1����",6,32)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����2����",6,33)
			AddNumText(sceneId,x892000_g_ScriptId,"������ �����̡�����3����",6,34)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 16 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��������",6,35)
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��������",6,36)
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��������",6,37)
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��������",6,38)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 17 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892000_g_ScriptId,"���� �ơ�����",6,39)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �ơ�����",6,40)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �ơ�����",6,41)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �ơ��ȶ�",6,42)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 18 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892000_g_ScriptId,"���� �������",6,43)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �����ݻ�",6,44)
			AddNumText(sceneId,x892000_g_ScriptId,"���� ��������",6,45)
			AddNumText(sceneId,x892000_g_ScriptId,"���� �����綾",6,46)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 19 then
		BeginEvent(sceneId)

			AddText(sceneId,"��ѡ��Ҫ��ȡ����չ���ԣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddNumText(sceneId,x892000_g_ScriptId,"���0���������ࣩ��չ����",6,47)
			AddNumText(sceneId,x892000_g_ScriptId,"���0���������ࣩ��չ����",6,48)
			AddNumText(sceneId,x892000_g_ScriptId,"���0���������ࣩ��չ����",6,49)
			AddNumText(sceneId,x892000_g_ScriptId,"���0���������ࣩ��չ����",6,50)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 20 then
		BeginEvent(sceneId)

			AddText(sceneId,"��ѡ��Ҫ��ȡ����չ���ԣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddNumText(sceneId,x892000_g_ScriptId,"���1���������ࣩ��չ����",6,51)
			AddNumText(sceneId,x892000_g_ScriptId,"���1���������ࣩ��չ����",6,52)
			AddNumText(sceneId,x892000_g_ScriptId,"���1���������ࣩ��չ����",6,53)
			AddNumText(sceneId,x892000_g_ScriptId,"���1���������ࣩ��չ����",6,54)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)

			AddText(sceneId,"��ѡ��Ҫ��ȡ����չ���ԣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddNumText(sceneId,x892000_g_ScriptId,"���2���������ࣩ��չ����",6,55)
			AddNumText(sceneId,x892000_g_ScriptId,"���2���������ࣩ��չ����",6,56)
			AddNumText(sceneId,x892000_g_ScriptId,"���2���������ࣩ��չ����",6,57)
			AddNumText(sceneId,x892000_g_ScriptId,"���2���������ࣩ��չ����",6,58)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)

			AddText(sceneId,"��ѡ��Ҫ��ȡ����չ���ԣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddNumText(sceneId,x892000_g_ScriptId,"���3���������ࣩ��չ����",6,59)
			AddNumText(sceneId,x892000_g_ScriptId,"���3���������ࣩ��չ����",6,60)
			AddNumText(sceneId,x892000_g_ScriptId,"���3���������ࣩ��չ����",6,61)
			AddNumText(sceneId,x892000_g_ScriptId,"���3���������ࣩ��չ����",6,62)
			AddNumText(sceneId,x892000_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156102)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156102,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156106, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 24 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156106)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156106,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156110, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 25 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156110)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156110,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156114, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 26 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156103)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156103,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156107, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 27 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156107)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156107,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156111, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 28 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156111)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156111,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156115, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 29 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156104)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156104,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156108, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 30 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156108)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156108,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156112, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end


	elseif NumText == 31 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156112)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156112,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156116, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 32 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156105)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910012)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156105,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910012,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156109, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 33 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156109)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910013)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156109,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910013,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156113, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 34 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156113)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910014)
              if c0 >=1 and c1 >=3 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156113,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910014,3)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156117, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892000_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������ͻ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 35 then
		c0 = GetItemCount(sceneId, selfId, 10156106)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910017)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1700) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1700)
			LuaFnDelAvailableItem(sceneId,selfId,39910017,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 36 then
		c0 = GetItemCount(sceneId, selfId, 10156107)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910018)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1701) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1701)
			LuaFnDelAvailableItem(sceneId,selfId,39910018,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 37 then
		c0 = GetItemCount(sceneId, selfId, 10156108)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910019)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1702) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1702)
			LuaFnDelAvailableItem(sceneId,selfId,39910019,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 38 then
		c0 = GetItemCount(sceneId, selfId, 10156109)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910020)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1703) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
			AddSkill(  sceneId, selfId, 1703)
			LuaFnDelAvailableItem(sceneId,selfId,39910020,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 39 then
		c0 = GetItemCount(sceneId, selfId, 10156110)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910021)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1704) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1700) > 0  then
			   DelSkill(sceneId, selfId, 1700)
		      end
			AddSkill(  sceneId, selfId, 1704)
			LuaFnDelAvailableItem(sceneId,selfId,39910021,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 40 then
		c0 = GetItemCount(sceneId, selfId, 10156111)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910022)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1705) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1701) > 0  then
			   DelSkill(sceneId, selfId, 1701)
		      end
			AddSkill(  sceneId, selfId, 1705)
			LuaFnDelAvailableItem(sceneId,selfId,39910022,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 41 then
		c0 = GetItemCount(sceneId, selfId, 10156112)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910023)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1706) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   DelSkill(sceneId, selfId, 1702)
		      end
			AddSkill(  sceneId, selfId, 1706)
			LuaFnDelAvailableItem(sceneId,selfId,39910023,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 42 then
		c0 = GetItemCount(sceneId, selfId, 10156113)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910024)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1707) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1703) > 0  then
			   DelSkill(sceneId, selfId, 1703)
		      end
			AddSkill(  sceneId, selfId, 1707)
			LuaFnDelAvailableItem(sceneId,selfId,39910024,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 43 then
		c0 = GetItemCount(sceneId, selfId, 10156114)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910025)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1708) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1704) > 0  then
			   DelSkill(sceneId, selfId, 1704)
		      end
			AddSkill(  sceneId, selfId, 1708)
			LuaFnDelAvailableItem(sceneId,selfId,39910025,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 44 then
		c0 = GetItemCount(sceneId, selfId, 10156115)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910026)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1709) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1705) > 0  then
			   DelSkill(sceneId, selfId, 1705)
		      end
			AddSkill(  sceneId, selfId, 1709)
			LuaFnDelAvailableItem(sceneId,selfId,39910026,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 45 then
		c0 = GetItemCount(sceneId, selfId, 10156116)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910027)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1710) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1706) > 0  then
			   DelSkill(sceneId, selfId, 1706)
		      end
			AddSkill(  sceneId, selfId, 1710)
			LuaFnDelAvailableItem(sceneId,selfId,39910027,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 46 then
		c0 = GetItemCount(sceneId, selfId, 10156117)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910028)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1711) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1707) > 0  then
			   DelSkill(sceneId, selfId, 1707)
		      end
			AddSkill(  sceneId, selfId, 1711)
			LuaFnDelAvailableItem(sceneId,selfId,39910028,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��1����1�����ϵ�������������Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 47 then
		c0 = GetItemCount(sceneId, selfId, 10156102)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25000, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 48 then
		c0 = GetItemCount(sceneId, selfId, 10156103)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25001, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 49 then
		c0 = GetItemCount(sceneId, selfId, 10156104)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25002, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 50 then
		c0 = GetItemCount(sceneId, selfId, 10156105)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25003, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 51 then
		c0 = GetItemCount(sceneId, selfId, 10156106)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25008, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 52 then
		c0 = GetItemCount(sceneId, selfId, 10156107)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25009, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 53 then
		c0 = GetItemCount(sceneId, selfId, 10156108)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25010, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 54 then
		c0 = GetItemCount(sceneId, selfId, 10156109)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25011, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 55 then
		c0 = GetItemCount(sceneId, selfId, 10156110)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25016, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 56 then
		c0 = GetItemCount(sceneId, selfId, 10156111)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25017, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 57 then
		c0 = GetItemCount(sceneId, selfId, 10156112)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25018, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 58 then
		c0 = GetItemCount(sceneId, selfId, 10156113)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25019, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 59 then
		c0 = GetItemCount(sceneId, selfId, 10156114)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25024, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 60 then
		c0 = GetItemCount(sceneId, selfId, 10156115)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25025, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 61 then
		c0 = GetItemCount(sceneId, selfId, 10156116)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25026, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 62 then
		c0 = GetItemCount(sceneId, selfId, 10156117)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25027, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x892000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x892000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			x892000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x892000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x892000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x892000_OnDie( sceneId, selfId, killerId )
end




--**********************************
--�ж��Ƿ��ܹ�ѧϰ
--nSkillIndex��������ֵΪ��40��70��90���ֱ�ѧϰ��Ӧ����ļ���
--**********************************
function x892000_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return 0;
	end
	
	--�ж���ҵȼ��Ƿ���
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж��Ƿ��Ѿ�ѧ���˶�Ӧ����
	if  (HaveSkill(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж���������Ƿ����㹻��Ǯ
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892000_g_DarkSkillName[nSkillIndex].needmoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--�����NPCѧϰ����ʹ�ü���
--nSkillIndex��������ֵΪ��40��70��90���ֱ�ѧϰ��Ӧ����ļ���
--**********************************
function x892000_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return
	end
	
	--�ж���ҵȼ��Ƿ���
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж��Ƿ��Ѿ�ѧ���˶�Ӧ����
	if  (HaveSkill(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж���������Ƿ����㹻��Ǯ
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892000_g_DarkSkillName[nSkillIndex].needmoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--�����ж϶�ͨ�������Կ�Ǯ��������
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892000_g_DarkSkillName[nSkillIndex].id)
	x892000_ShowNotice(sceneId, selfId, targetId, x892000_g_DarkSkillTips[nSkillIndex]);
	x892000_NotifyTips( sceneId, selfId, x892000_g_DarkSkillTips[nSkillIndex] )
	
	x892000_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --�ü��ܰ�ť��˸
	
end


--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x892000_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--����Ƿ����㰵��ƿ������
--����ֵ��0����1��1Ϊ���㣬0
--**********************************
function x892000_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--�ж���������Ƿ�װ���а���
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж�������ϰ����Ƿ�ﵽƿ��
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж���ҵȼ��Ƿ�Ͱ����ȼ���Ȼ���û�а����ȼ���
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж���������Ƿ����㹻��Ǯ
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892000_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --�Է���һ����ûʲô��
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10��
			strNotice = "#{FBSJ_081209_25}";
			x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892000_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--�ж���������Ƿ�װ���а���
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--�ж�������ϰ����Ƿ�ﵽƿ��
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--�ж���ҵȼ��Ƿ�Ͱ����ȼ���Ȼ���û�а����ȼ���
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892000_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--�ж���������Ƿ����㹻��Ǯ
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892000_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --�Է���һ����ûʲô��
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�����ж϶�ͨ�������Կ�Ǯͻ����
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892000_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ͻ��ƿ�����ð�������
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892000_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--ͻ�Ƴɹ�����¼ͳ����־
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892000_ShowNotice(sceneId, selfId, targetId, "ͻ��ʧ��");
	end
	
	return
end

function x892000_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892000_StudySkillImpact(sceneId, playerId)
	--��ʾѧϰ���¼��ܵ���Ч Ŀǰʹ��������Ч
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

function x892000_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
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