--����NPC
--����
--��ͨ

--�ű���
x892022_g_ScriptId = 892022

--��ӵ�е��¼�ID�б�
x892022_g_eventList={}

x892022_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#H����һ��Ŭ���������ռ�ȫ�˺ϳ����װ����Ҫ����Ʒ��#Y��׺�#W�����͸���һ��#{_INFOMSG%s}��", 
  "#{_INFOUSR%s} #cff99ccΪ#Y��׺�#cff99cc������#Y���װ������#cff99cc�����װ��ʹ������#{_INFOMSG%s}��Ϊ��л��", 
  "#{_INFOUSR%s}#H��#Y��׺�������#R���װ��#I�������У�һ·����ն���������ǹ��򲻸�������,������#{_INFOMSG%s}��",
  "#{_INFOUSR%s}#H������иŬ���ռ�����#R���װ������#I��������Ʒ�����#W#{_INFOMSG%s}#H������������Ľ����", 
}

--**********************************
--�¼��б�
--**********************************
function x892022_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "����"
	else
		PlayerSex = "����"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"ʦ����������Լ������������������ɽ�С����϶����ﶾ��ʦ�ֽ����������£����֪����...")
		AddText(sceneId,"����"..PlayerSex.."������γ��������̣��ǲ���ʦ�ֻ����ţ����֪СŮ�ӣ��ҽ�Э��������������֮����")
		for i, eventId in x892022_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x892022_g_ScriptId,"���������׵ȼ�",6,7)
		AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ������չ����",6,8)
		AddNumText(sceneId,x892022_g_ScriptId,"�����չ��������",6,9)
		AddNumText(sceneId,x892022_g_ScriptId,"���˵��",8,888)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x892022_OnDefaultEvent( sceneId, selfId,targetId )
	x892022_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892022_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x892022_g_eventList do
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
			AddNumText(sceneId,x892022_g_ScriptId,"�������",6,666)
			AddNumText(sceneId,x892022_g_ScriptId,"����������",6,667)
			AddNumText(sceneId,x892022_g_ScriptId,"�����������",6,668)
			AddNumText(sceneId,x892022_g_ScriptId,"������������ص���",6,669)
			AddNumText(sceneId,x892022_g_ScriptId,"�����չ���Խ���",6,670)
			AddNumText(sceneId,x892022_g_ScriptId,"����������",6,671)
			AddNumText(sceneId,x892022_g_ScriptId,"�������Ч��",6,672)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 666 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddText(sceneId,"#{WH_NPC_10}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 667 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_12}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 668 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_11}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 669 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_13}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 670 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_14}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 671 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_15}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 672 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_16}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 7 then  --�������ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"���ȼ���ﵽ3�����ſ��������������ȼ������ʹ�û��������ʯ�ɽ�������ͻ����4���������ɹ�����꽫���ٳ�#G�ڶ���������չ����#W��#G��չ����#W��������չ���Ժ���չ���ܵ�Ч���������ȼ���߶���ߡ�")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"���� �����̡���",6,12)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �����̡���",6,13)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �����̡���",6,14)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �����̡���",6,15)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --������
		BeginEvent(sceneId)
			AddText(sceneId,"���ȼ�Ϊ 4 ʱ����ͨ����Ӧ�����չ������ѧϰ�ڶ���չ����")
			AddText(sceneId,"���ȼ�Ϊ 5 ʱ����ͨ����Ӧ�����չ������ѧϰ������չ���ܣ�ʹ����Ӧ�����������ڶ���չ����")
			AddText(sceneId,"��������չ���������ȼ�����߶���ߡ�")

			AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ��꣨4������չ����",6,16)
			AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ��꣨5������չ����",6,17)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 9 then   --�����չ����
		BeginEvent(sceneId)
			AddText(sceneId,"���ȼ�Ϊ 4 ʱ����ͨ����Ӧ�����չ������ѧϰ�ڶ���չ����")
			AddText(sceneId,"���ȼ�Ϊ 5 ʱ����ͨ����Ӧ�����չ������ѧϰ������չ���ܣ�ʹ����Ӧ�����������ڶ���չ����")
			AddText(sceneId,"��������չ���������ȼ�����߶���ߡ�")
			AddNumText(sceneId,x892022_g_ScriptId,"�����༼������",6,19)
			AddNumText(sceneId,x892022_g_ScriptId,"�ػ��༼������",6,20)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 10 then  --��ϴ��������
		BeginEvent(sceneId)
			AddText(sceneId,"���ȼ���ﵽ3�����ſ��������������ȼ������ʹ�û��������ʯ�ɽ�������ͻ����4���������ɹ�����꽫���ٳ�#G�ڶ���������չ����#W��#G��չ����#W��������չ���Ժ���չ���ܵ�Ч���������ȼ���߶���ߡ�")
			AddNumText(sceneId,x892022_g_ScriptId,"��ȡ ��꣨4������չ����",6,21)
			AddNumText(sceneId,x892022_g_ScriptId,"��ȡ ��꣨5������չ����",6,22)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 11 then  --���ð���
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_84}")
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 12 then                   --���� �� �ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"���������׵ȼ�����Ҫ���ʹ��#G3��#W��Ӧ�ȼ���#G�����#W��#Y���ʯ��")
			AddText(sceneId,"��������4������#G3������飨4����#W��#Y���ʯ������")
			AddText(sceneId,"��������5������#G3������飨5����#W��#Y���ʯ���ơ�")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡�����4����",6,23)
			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡�����5����",6,24)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 13 then                   --���� �� �ȼ�
		BeginEvent(sceneId)
			AddText(sceneId,"���������׵ȼ�����Ҫ���ʹ��#G3��#W��Ӧ�ȼ���#G�����#W��#Y���ʯ��")
			AddText(sceneId,"��������4������#G3������飨4����#W��#Y���ʯ������")
			AddText(sceneId,"��������5������#G3������飨5����#W��#Y���ʯ���ơ�")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡���4����",6,25)
			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡���5����",6,26)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 14 then
		BeginEvent(sceneId)
			AddText(sceneId,"���������׵ȼ�����Ҫ���ʹ��#G3��#W��Ӧ�ȼ���#G�����#W��#Y���ʯ��")
			AddText(sceneId,"��������4������#G3������飨4����#W��#Y���ʯ������")
			AddText(sceneId,"��������5������#G3������飨5����#W��#Y���ʯ���ơ�")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡�����4����",6,27)
			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡�����5����",6,28)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 15 then
		BeginEvent(sceneId)
			AddText(sceneId,"���������׵ȼ�����Ҫ���ʹ��#G3��#W��Ӧ�ȼ���#G�����#W��#Y���ʯ��")
			AddText(sceneId,"��������4������#G3������飨4����#W��#Y���ʯ������")
			AddText(sceneId,"��������5������#G3������飨5����#W��#Y���ʯ���ơ�")
			AddText(sceneId,"#{WH_NPC_4}")

			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡�����4����",6,29)
			AddNumText(sceneId,x892022_g_ScriptId,"������ �����̡�����5����",6,30)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 16 then
		BeginEvent(sceneId)
			AddText(sceneId,"���ȼ�Ϊ 4 ʱ����ͨ����Ӧ�����չ������ѧϰ�ڶ���չ����")
			AddText(sceneId,"���ȼ�Ϊ 5 ʱ����ͨ����Ӧ�����չ������ѧϰ������չ���ܣ�ʹ����Ӧ�����������ڶ���չ����")
			AddText(sceneId,"��������չ���������ȼ�����߶���ߡ�")

			AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ �����ܼף�1����",6,31)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 17 then
		BeginEvent(sceneId)
			AddText(sceneId,"���ȼ�Ϊ 4 ʱ����ͨ����Ӧ�����չ������ѧϰ�ڶ���չ����")
			AddText(sceneId,"���ȼ�Ϊ 5 ʱ����ͨ����Ӧ�����չ������ѧϰ������չ���ܣ�ʹ����Ӧ�����������ڶ���չ����")
			AddText(sceneId,"��������չ���������ȼ�����߶���ߡ�")

			AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ �顤�ٻ���1����",6,32)
			AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ �顤������1����",6,33)
			AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ �顤�Ƽף�1����",6,34)
			AddNumText(sceneId,x892022_g_ScriptId,"ѧϰ �顤������1����",6,35)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 18 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{WH_NPC_8}")
			AddNumText(sceneId,x892022_g_ScriptId,"���� �������",6,43)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �����ݻ�",6,44)
			AddNumText(sceneId,x892022_g_ScriptId,"���� ��������",6,45)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �����綾",6,46)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 19 then
		BeginEvent(sceneId)

			AddText(sceneId,"��ѡ��Ҫ��������꼼�ܣ�Ҫ��Ӧ��ͬ���������Ŷ��")
			AddText(sceneId,"���ȼ�Ϊ 4 ʱ����ͨ����Ӧ�����չ������ѧϰ�ڶ���չ����")
			AddText(sceneId,"���ȼ�Ϊ 5 ʱ����ͨ����Ӧ�����չ������ѧϰ������չ���ܣ�ʹ����Ӧ�����������ڶ���չ����")
			AddText(sceneId,"��������չ���������ȼ�����߶���ߡ�")

			AddNumText(sceneId,x892022_g_ScriptId,"���� �䡤��˪��4����",6,36)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �䡤ҵ��4����",6,37)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �䡤���ף�4����",6,38)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �䡤�ɹǣ�4����",6,39)
			AddNumText(sceneId,x892022_g_ScriptId,"���� ����˪��5����",6,40)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �𡤵ػ�5����",6,41)
			AddNumText(sceneId,x892022_g_ScriptId,"���� �����ף�5����",6,42)
			AddNumText(sceneId,x892022_g_ScriptId,"���� ��𲶾��5����",6,43)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 20 then
		BeginEvent(sceneId)

			AddText(sceneId,"���ȼ�Ϊ 4 ʱ����ͨ����Ӧ�����չ������ѧϰ�ڶ���չ����")
			AddText(sceneId,"���ȼ�Ϊ 5 ʱ����ͨ����Ӧ�����չ������ѧϰ������չ���ܣ�ʹ����Ӧ�����������ڶ���չ����")
			AddText(sceneId,"��������չ���������ȼ�����߶���ߡ�")
			AddNumText(sceneId,x892022_g_ScriptId,"���� ����⬼ף�2����",6,44)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 21 then
		BeginEvent(sceneId)

			AddText(sceneId,"���ȼ���ﵽ3�����ſ��������������ȼ������ʹ�û��������ʯ�ɽ�������ͻ����4���������ɹ�����꽫���ٳ�#G�ڶ���������չ����#W��#G��չ����#W��������չ���Ժ���չ���ܵ�Ч���������ȼ���߶���ߡ�")
			AddNumText(sceneId,x892022_g_ScriptId,"���4���������ࣩ��չ����",6,45)
			AddNumText(sceneId,x892022_g_ScriptId,"���4���������ࣩ��չ����",6,46)
			AddNumText(sceneId,x892022_g_ScriptId,"���4���������ࣩ��չ����",6,47)
			AddNumText(sceneId,x892022_g_ScriptId,"���4���������ࣩ��չ����",6,48)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 22 then
		BeginEvent(sceneId)

			AddText(sceneId,"���ȼ���ﵽ3�����ſ��������������ȼ������ʹ�û��������ʯ�ɽ�������ͻ����4���������ɹ�����꽫���ٳ�#G�ڶ���������չ����#W��#G��չ����#W��������չ���Ժ���չ���ܵ�Ч���������ȼ���߶���ߡ�")
			AddNumText(sceneId,x892022_g_ScriptId,"���5���������ࣩ��չ����",6,49)
			AddNumText(sceneId,x892022_g_ScriptId,"���5���������ࣩ��չ����",6,50)
			AddNumText(sceneId,x892022_g_ScriptId,"���5���������ࣩ��չ����",6,51)
			AddNumText(sceneId,x892022_g_ScriptId,"���5���������ࣩ��չ����",6,52)
			AddNumText(sceneId,x892022_g_ScriptId,"#{FBSJ_081209_12}",8,130)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 23 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156114)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156114,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156118, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 24 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156118)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156118,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156122, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 25 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156115)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156115,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156119, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 26 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156119)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156119,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156123, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 27 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156116)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156116,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156120, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 28 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156120)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156120,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156124, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 29 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156117)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910015)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910035)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156117,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910015,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910035,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156121, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 30 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 10156121)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910016)
		c2 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910034)
              if c0 >=1 and c1 >=3 and c2 >=1 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,10156121,1)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910016,3)--ɾ����Ʒ
					LuaFnDelAvailableItem(sceneId,selfId,39910034,1)--ɾ����Ʒ
					local bagpos01 = TryRecieveItem( sceneId, selfId, 10156125, 1)--������Ʒ
				       local szItemTransfer = GetBagItemTransfer( sceneId, selfId, bagpos01 )
					x892022_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#G��ϲ�㣬��������ɹ���"
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "#G��������������ꡢ���������ʯ�����Ƿ���ȫ��Ҫ�������Ӧ���ڰ����ڲſ�������Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 31 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
		c1 = GetItemCount(sceneId, selfId, 10156119)
		c2 = GetItemCount(sceneId, selfId, 10156120)
		c3 = GetItemCount(sceneId, selfId, 10156121)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910029)
		      if  c4 < 1  then
		          strNotice = "#Y��û��Я����꼼���飬����ѧϰ�������������"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1720)
			LuaFnDelAvailableItem(sceneId,selfId,39910029,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��4����4�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 32 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910030)
		      if  c4 < 1  then
		          strNotice = "#Y��û��Я����꼼���飬����ѧϰ�������������"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1722) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1722)
			LuaFnDelAvailableItem(sceneId,selfId,39910030,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 33 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910031)
		      if  c4 < 1  then
		          strNotice = "#Y��û��Я����꼼���飬����ѧϰ�������������"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1723) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1723)
			LuaFnDelAvailableItem(sceneId,selfId,39910031,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 34 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910032)
		      if  c4 < 1  then
		          strNotice = "#Y��û��Я����꼼���飬����ѧϰ�������������"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1724) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1724)
			LuaFnDelAvailableItem(sceneId,selfId,39910032,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 35 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910033)
		      if  c4 < 1  then
		          strNotice = "#Y��û��Я����꼼���飬����ѧϰ�������������"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1725) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      --if  HaveSkill(sceneId, selfId, 1702) > 0  then
			   --DelSkill(sceneId, selfId, 1702)
		      --end
			AddSkill(  sceneId, selfId, 1725)
			LuaFnDelAvailableItem(sceneId,selfId,39910033,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 36 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910041)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1712) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1708) > 0  then
			   DelSkill(sceneId, selfId, 1708)
		      end
			AddSkill(  sceneId, selfId, 1712)
			LuaFnDelAvailableItem(sceneId,selfId,39910041,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��4����4�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 37 then
		c0 = GetItemCount(sceneId, selfId, 10156119)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910042)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1713) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1709) > 0  then
			   DelSkill(sceneId, selfId, 1709)
		      end
			AddSkill(  sceneId, selfId, 1713)
			LuaFnDelAvailableItem(sceneId,selfId,39910042,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��4����4�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 38 then
		c0 = GetItemCount(sceneId, selfId, 10156120)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910043)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1714) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1710) > 0  then
			   DelSkill(sceneId, selfId, 1710)
		      end
			AddSkill(  sceneId, selfId, 1714)
			LuaFnDelAvailableItem(sceneId,selfId,39910043,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��4����4�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 39 then
		c0 = GetItemCount(sceneId, selfId, 10156121)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910044)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1715) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1711) > 0  then
			   DelSkill(sceneId, selfId, 1711)
		      end
			AddSkill(  sceneId, selfId, 1715)
			LuaFnDelAvailableItem(sceneId,selfId,39910044,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��4����4�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 40 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910045)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1716) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1712) > 0  then
			   DelSkill(sceneId, selfId, 1712)
		      end
			AddSkill(  sceneId, selfId, 1716)
			LuaFnDelAvailableItem(sceneId,selfId,39910045,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 41 then
		c0 = GetItemCount(sceneId, selfId, 10156123)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910046)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1717) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1713) > 0  then
			   DelSkill(sceneId, selfId, 1713)
		      end
			AddSkill(  sceneId, selfId, 1717)
			LuaFnDelAvailableItem(sceneId,selfId,39910046,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 42 then
		c0 = GetItemCount(sceneId, selfId, 10156124)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910047)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1718) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1714) > 0  then
			   DelSkill(sceneId, selfId, 1714)
		      end
			AddSkill(  sceneId, selfId, 1718)
			LuaFnDelAvailableItem(sceneId,selfId,39910047,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 43 then
		c0 = GetItemCount(sceneId, selfId, 10156125)
		c1 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910048)
              if c0 >=1 and c1 >=1 then
		      if  HaveSkill(sceneId, selfId, 1719) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1715) > 0  then
			   DelSkill(sceneId, selfId, 1715)
		      end
			AddSkill(  sceneId, selfId, 1719)
			LuaFnDelAvailableItem(sceneId,selfId,39910048,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ�����ͼ����飬ֻ��5����5�����ϵ�����������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 44 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
		c1 = GetItemCount(sceneId, selfId, 10156123)
		c2 = GetItemCount(sceneId, selfId, 10156124)
		c3 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 or c1 >=1 or c2 >=1 or c1 >=1 then
		      c4 = LuaFnGetAvailableItemCount(sceneId, selfId, 39910040)
		      if  c4 < 1  then
		          strNotice = "#Y��û��Я����꼼���飬����ѧϰ�������������"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1721) > 0  then
		          strNotice = "#Y���Ѿ�ѧϰ���˼��ܣ��벻Ҫ�ظ�ѧϰ����"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) <= 0  then
		          strNotice = "#Y��������ѧϰ �����ܼ� �����������˼��ܣ���"
		          x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			   return
		      end
		      if  HaveSkill(sceneId, selfId, 1720) > 0  then
			   DelSkill(sceneId, selfId, 1720)
		      end
			AddSkill(  sceneId, selfId, 1721)
			LuaFnDelAvailableItem(sceneId,selfId,39910040,1)--ɾ����Ʒ
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬��꼼������ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��5����5�����ϵ������������˼���Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 45 then
		c0 = GetItemCount(sceneId, selfId, 10156118)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25032, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 46 then
		c0 = GetItemCount(sceneId, selfId, 10156119)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25033, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 47 then
		c0 = GetItemCount(sceneId, selfId, 10156120)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25034, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 48 then
		c0 = GetItemCount(sceneId, selfId, 10156121)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25035, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 49 then
		c0 = GetItemCount(sceneId, selfId, 10156122)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25040, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 50 then
		c0 = GetItemCount(sceneId, selfId, 10156123)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25041, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 51 then
		c0 = GetItemCount(sceneId, selfId, 10156124)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25042, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end

	elseif NumText == 52 then
		c0 = GetItemCount(sceneId, selfId, 10156125)
              if c0 >=1 then
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 25043, 0)
		       LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
			BeginEvent( sceneId ) 
				strText = "#G��ϲ�㣬�����չ������ȡ�ɹ���"
				AddText( sceneId, strText )
			EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
             else
		     strNotice = "�����������Ƿ�Я���ж�Ӧ����ֻ꣬��Я����Ӧ����������ȡ�����չ����Ŷ����"
		     x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
	      end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x892022_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892022_g_eventList do
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
function x892022_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x892022_g_eventList do
		if missionScriptId == findId then
			x892022_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x892022_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x892022_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x892022_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x892022_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x892022_OnDie( sceneId, selfId, killerId )
end




--**********************************
--�ж��Ƿ��ܹ�ѧϰ
--nSkillIndex��������ֵΪ��40��70��90���ֱ�ѧϰ��Ӧ����ļ���
--**********************************
function x892022_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж��Ƿ��Ѿ�ѧ���˶�Ӧ����
	if  (HaveSkill(sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж���������Ƿ����㹻��Ǯ
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892022_g_DarkSkillName[nSkillIndex].needmoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--�����NPCѧϰ����ʹ�ü���
--nSkillIndex��������ֵΪ��40��70��90���ֱ�ѧϰ��Ӧ����ļ���
--**********************************
function x892022_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
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
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж��Ƿ��Ѿ�ѧ���˶�Ӧ����
	if  (HaveSkill(sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�ж���������Ƿ����㹻��Ǯ
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x892022_g_DarkSkillName[nSkillIndex].needmoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--�����ж϶�ͨ�������Կ�Ǯ��������
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x892022_g_DarkSkillName[nSkillIndex].id)
	x892022_ShowNotice(sceneId, selfId, targetId, x892022_g_DarkSkillTips[nSkillIndex]);
	x892022_NotifyTips( sceneId, selfId, x892022_g_DarkSkillTips[nSkillIndex] )
	
	x892022_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --�ü��ܰ�ť��˸
	
end


--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x892022_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--����Ƿ����㰵��ƿ������
--����ֵ��0����1��1Ϊ���㣬0
--**********************************
function x892022_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--�ж���������Ƿ�װ���а���
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж�������ϰ����Ƿ�ﵽƿ��
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж���ҵȼ��Ƿ�Ͱ����ȼ���Ȼ���û�а����ȼ���
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--�ж���������Ƿ����㹻��Ǯ
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x892022_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --�Է���һ����ûʲô��
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10��
			strNotice = "#{FBSJ_081209_25}";
			x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x892022_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--�ж���������Ƿ�װ���а���
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--�ж�������ϰ����Ƿ�ﵽƿ��
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--�ж���ҵȼ��Ƿ�Ͱ����ȼ���Ȼ���û�а����ȼ���
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x892022_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--�ж���������Ƿ����㹻��Ǯ
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x892022_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --�Է���һ����ûʲô��
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10��
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--�����ж϶�ͨ�������Կ�Ǯͻ����
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x892022_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ͻ��ƿ�����ð�������
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x892022_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--ͻ�Ƴɹ�����¼ͳ����־
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x892022_ShowNotice(sceneId, selfId, targetId, "ͻ��ʧ��");
	end
	
	return
end

function x892022_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x892022_StudySkillImpact(sceneId, playerId)
	--��ʾѧϰ���¼��ܵ���Ч Ŀǰʹ��������Ч
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end

function x892022_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
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