--����NPC
--����
--��ͨ

--�ű���
x892003_g_ScriptId = 892003

--��ӵ�е��¼�ID�б�
x892003_g_eventList={}

x892003_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#H����һ��Ŭ���������ռ�ȫ��ʱװȾɫ��Ҫ����Ʒ��#Y�����#W�����͸���һ��#{_INFOMSG%s}��", 
  "#{_INFOUSR%s} #cff99ccΪ#Y�����#cff99cc������#YʱװȾɫ#cff99cc�����װ��ʹ������#{_INFOMSG%s}��Ϊ��л��", 
  "#{_INFOUSR%s}#H��#Y����ʴ�����#RʱװȾɫ#I�������У�һ·����ն���������ǹ��򲻸�������,������#{_INFOMSG%s}��",
  "#{_INFOUSR%s}#H������иŬ���ռ�����#RʱװȾɫ#I��������Ʒ�����#W#{_INFOMSG%s}#H������������Ľ����", 
}

-----ȾɫʱװID
x892003_XUEYU = { 10553167, 10553168, 10553169, 10553170,10553171, 10553172, 10553173, 10553174, }
x892003_XIANLV = { 10553176, 10553177, 10553178, 10553179, 10553180, 10553181, 10553182, 10553183, }
x892003_ANDAN = { 10553185, 10553186, 10553187, 10553188, 10553189, 10553190, 10553191, 10553192, }
x892003_SHUXIANG = { 10553194, 10553195, 10553196, 10553197, 10553198, 10553199, 10553200, 10553201, }
x892003_CHUNFENG = { 10553203, 10553204, 10553205, 10553206, 10553207, 10553208, 10553209, 10553210, }
x892003_QINGFENG = { 10553212, 10553213, 10553214, 10553215, 10553216, 10553217, 10553218, 10553219, }


--**********************************
--�¼��б�
--**********************************
function x892003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"����˾�ʽ��װ������ɫ��?����˾��Ƿ�װ�����Ĺ�â����Ҫ׷���Լ���ʱ����������ԣ��ҿ���ʹ��������档")
		AddText(sceneId,"ʱװȾɫ��������ı�ʱװ��ɫ�ʣ���������ǧ�졣")
		AddText(sceneId,"������ʾ���뽫Ⱦɫ��ʱװ���ڰ����ڡ�")

		for i, eventId in x892003_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892003_g_ScriptId,"ʱװȾɫ",6,7)
		AddNumText(sceneId,x892003_g_ScriptId,"����ʱװȾɫ",6,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x892003_OnDefaultEvent( sceneId, selfId,targetId )
	x892003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892003_g_eventList do
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
	elseif NumText == 7 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"ֻ�д���#GȾɫ˵��#W��ʱװ�ſɽ���Ⱦɫ��ÿ��ʱװ����#G���ֲ�ͬ��ʽ���#W���Ҿ�������һ��#cFF0000����ʯ#W����Ⱦɫһ�Ρ�Ⱦɫ�󣬽�������һ�ֿ�ʽ�ķ��ʱװ��")
			AddText(sceneId,"Ⱦɫ��ʱװ��ۺ����Խ��õ���������ʱװ��Ƕ��ʯ�����ʡ�ǿ���ȼ����������������ע��ж����Ƕ��ʯ��")

			AddNumText(sceneId,x892003_g_ScriptId,"Ⱦɫ ѩ��˪��",6,12)
			AddNumText(sceneId,x892003_g_ScriptId,"Ⱦɫ ������Ե",6,13)
			AddNumText(sceneId,x892003_g_ScriptId,"Ⱦɫ ��������",6,14)
			AddNumText(sceneId,x892003_g_ScriptId,"Ⱦɫ �����",6,15)
			AddNumText(sceneId,x892003_g_ScriptId,"Ⱦɫ ������ѩ",6,16)
			AddNumText(sceneId,x892003_g_ScriptId,"Ⱦɫ �������",6,17)

			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --������
		BeginEvent(sceneId)
			AddText(sceneId,"#Y��ͬ��ɫ����������ص�ʱ��Ʒζ��Ѥ����ɫ�ʸ������޵��Ӿ����ܣ�")
			AddText(sceneId,"ʱװȾɫ #rʱװ��ʹ�ú�ҫʯ����ܱ仯��ɫ��ÿ��Ⱦɫ�������Ⱦɫ��һ����ʽ�����в���������ʧ��Ŷ��ʧ�ܺ�ʱװ�ͺ�ҫʯ������ʧ��")
			AddText(sceneId,"����֪����Щʱװ����Ⱦɫô�������Լ�ʱװ������ʾ��˵���Ϳ���֪��������Ⱦɫ��ʱװ�·���������ʾ��Ŷ��")

		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --�����չ����
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_31}")
			AddNumText(sceneId,x892003_g_ScriptId,"��ȡ ��꣨0���� ��չ����",6,19)
			AddNumText(sceneId,x892003_g_ScriptId,"��ȡ ��꣨1���� ��չ����",6,20)
			AddNumText(sceneId,x892003_g_ScriptId,"��ȡ ��꣨2���� ��չ����",6,21)
			AddNumText(sceneId,x892003_g_ScriptId,"��ȡ ��꣨3���� ��չ����",6,22)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
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
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --ѩ��˪��
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124069)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124069,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--ɾ����Ʒ
			              local GemListSize = getn(x892003_XUEYU)
			              local RandomGem = x892003_XUEYU[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--������Ʒ				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��װȾɫ�ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G������������#Y��Ⱦɫ��װ#W��#Y��ҫʯ#W�Ƿ���ȫ��Ҫ��Ӧ��Ʒ���ڰ����ڲſ���ȾɫŶ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 13 then                   --������Ե
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124072)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124072,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--ɾ����Ʒ
			              local GemListSize = getn(x892003_XIANLV)
			              local RandomGem = x892003_XIANLV[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--������Ʒ				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��װȾɫ�ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G������������#Y��Ⱦɫ��װ#W��#Y��ҫʯ#W�Ƿ���ȫ��Ҫ��Ӧ��Ʒ���ڰ����ڲſ���ȾɫŶ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
		
	elseif NumText == 130 then
		x892003_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then        ---��������
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124100)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124100,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--ɾ����Ʒ
			              local GemListSize = getn(x892003_ANDAN)
			              local RandomGem = x892003_ANDAN[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--������Ʒ				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��װȾɫ�ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G������������#Y��Ⱦɫ��װ#W��#Y��ҫʯ#W�Ƿ���ȫ��Ҫ��Ӧ��Ʒ���ڰ����ڲſ���ȾɫŶ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 15 then       ----�����
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124133)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124133,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--ɾ����Ʒ
			              local GemListSize = getn(x892003_SHUXIANG)
			              local RandomGem = x892003_SHUXIANG[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--������Ʒ				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��װȾɫ�ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G������������#Y��Ⱦɫ��װ#W��#Y��ҫʯ#W�Ƿ���ȫ��Ҫ��Ӧ��Ʒ���ڰ����ڲſ���ȾɫŶ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 16 then         ----������ѩ
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124140)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124140,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--ɾ����Ʒ
			              local GemListSize = getn(x892003_CHUNFENG)
			              local RandomGem = x892003_CHUNFENG[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--������Ʒ				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��װȾɫ�ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G������������#Y��Ⱦɫ��װ#W��#Y��ҫʯ#W�Ƿ���ȫ��Ҫ��Ӧ��Ʒ���ڰ����ڲſ���ȾɫŶ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 17 then         ----�������
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10124103)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30503140)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10124103,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,30503140,1)--ɾ����Ʒ
			              local GemListSize = getn(x892003_QINGFENG)
			              local RandomGem = x892003_QINGFENG[ random( GemListSize ) ]
			              local bagpos01 = TryRecieveItem( sceneId, selfId, RandomGem, 1)--������Ʒ				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
			              local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��װȾɫ�ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G������������#Y��Ⱦɫ��װ#W��#Y��ҫʯ#W�Ƿ���ȫ��Ҫ��Ӧ��Ʒ���ڰ����ڲſ���ȾɫŶ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 18 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156101)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910011)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156101,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910011,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156104, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������� ������൤ �Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ���ע������Ŷ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 19 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156101)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910011)
              if c0 >=1 and c1 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156101,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910011,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156105, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892003_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G���������������� ������൤ �Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ���ע������Ŷ����"
		     x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 20 then
		BeginEvent( sceneId ) 
			AddText(sceneId,"��ѡ��Ҫ��ȡ����չ���ԣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddNumText(sceneId,x892003_g_ScriptId,"���1���������ࣩ��չ����",6,51)
			AddNumText(sceneId,x892003_g_ScriptId,"���1���������ࣩ��չ����",6,52)
			AddNumText(sceneId,x892003_g_ScriptId,"���1���������ࣩ��չ����",6,53)
			AddNumText(sceneId,x892003_g_ScriptId,"���1���������ࣩ��չ����",6,54)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent( sceneId ) 
			AddText(sceneId,"��ѡ��Ҫ��ȡ����չ���ԣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddNumText(sceneId,x892003_g_ScriptId,"���2���������ࣩ��չ����",6,55)
			AddNumText(sceneId,x892003_g_ScriptId,"���2���������ࣩ��չ����",6,56)
			AddNumText(sceneId,x892003_g_ScriptId,"���2���������ࣩ��չ����",6,57)
			AddNumText(sceneId,x892003_g_ScriptId,"���2���������ࣩ��չ����",6,58)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent( sceneId ) 
			AddText(sceneId,"��ѡ��Ҫ��ȡ����չ���ԣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddNumText(sceneId,x892003_g_ScriptId,"���3���������ࣩ��չ����",6,59)
			AddNumText(sceneId,x892003_g_ScriptId,"���3���������ࣩ��չ����",6,60)
			AddNumText(sceneId,x892003_g_ScriptId,"���3���������ࣩ��չ����",6,61)
			AddNumText(sceneId,x892003_g_ScriptId,"���3���������ࣩ��չ����",6,62)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 3 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 24 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 4 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 25 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 5 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 26 then
	 	BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 7 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 27 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 8 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 28 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_69}")
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090304_02}",11,29)
			AddNumText(sceneId,x892003_g_ScriptId,"#{FBSJ_090304_01}",11,30)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 29 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_090304_03}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 30 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_090304_04}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 31 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 9 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x892003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892003_g_eventList do
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
function x892003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x892003_g_eventList do
		if missionScriptId == findId then
			x892003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x892003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x892003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x892003_OnDie( sceneId, selfId, killerId )
end




--**********************************
--�ж��Ƿ��ܹ�ѧϰ
--nSkillIndex��������ֵΪ��40��70��90���ֱ�ѧϰ��Ӧ����ļ���
--**********************************
function x892003_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж��Ƿ��Ѿ�ѧ���˶�Ӧ����
	if  (HaveSkill(sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж���������Ƿ����㹻��Ǯ
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892003_g_DarkSkillName[nSkillIndex].needmoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--�����NPCѧϰ����ʹ�ü���
--nSkillIndex��������ֵΪ��40��70��90���ֱ�ѧϰ��Ӧ����ļ���
--**********************************
function x892003_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж��Ƿ��Ѿ�ѧ���˶�Ӧ����
	if  (HaveSkill(sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж���������Ƿ����㹻��Ǯ
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892003_g_DarkSkillName[nSkillIndex].needmoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--�����ж϶�ͨ�������Կ�Ǯ��������
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892003_g_DarkSkillName[nSkillIndex].id)
	x892003_ShowNotice(sceneId, selfId, targetId, x892003_g_DarkSkillTips[nSkillIndex]);
	x892003_NotifyTips( sceneId, selfId, x892003_g_DarkSkillTips[nSkillIndex] )
	
	x892003_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --�ü��ܰ�ť��˸
	
end


--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x892003_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--����Ƿ����㰵��ƿ������
--����ֵ��0����1��1Ϊ���㣬0
--**********************************
function x892003_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--�ж���������Ƿ�װ���а���
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж�������ϰ����Ƿ�ﵽƿ��
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж���ҵȼ��Ƿ�Ͱ����ȼ���Ȼ���û�а����ȼ���
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж���������Ƿ����㹻��Ǯ
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892003_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --�Է���һ����ûʲô��
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10��
			strNotice = "#{FBSJ_081209_25}";
			x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892003_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--�ж���������Ƿ�װ���а���
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--�ж�������ϰ����Ƿ�ﵽƿ��
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--�ж���ҵȼ��Ƿ�Ͱ����ȼ���Ȼ���û�а����ȼ���
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892003_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--�ж���������Ƿ����㹻��Ǯ
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892003_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --�Է���һ����ûʲô��
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�����ж϶�ͨ�������Կ�Ǯͻ����
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892003_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ͻ��ƿ�����ð�������
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892003_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--ͻ�Ƴɹ�����¼ͳ����־
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892003_ShowNotice(sceneId, selfId, targetId, "ͻ��ʧ��");
	end
	
	return
end

function x892003_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892003_StudySkillImpact(sceneId, playerId)
	--��ʾѧϰ���¼��ܵ���Ч Ŀǰʹ��������Ч
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

function x892003_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
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