-- ����NPC

x940005_g_scriptId = 940005
--�������
x940005_g_flag = {
    [80]	= MF_LINGQUYUANBAO80,
    [90]	= MF_LINGQUYUANBAO90,
    [100]	= MF_LINGQUYUANBAO100,
    [110]	= MF_LINGQUYUANBAO110,
    [120]	= MF_LINGQUYUANBAO120,
	}
x940005_g_Title		={}
x940005_g_Title[1] = "����ʦ��"

--**********************************
--�¼��������
--**********************************
function x940005_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		strText ="#ccc33cc$N#Y��һ�ӭ�㣡������������������"
		AddText( sceneId, strText )
			 AddNumText( sceneId, x940005_g_scriptId, "���������������", 5, 5551)  	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function	x940005_OnEventRequest(sceneId, selfId, targetId, eventId)		
	if GetNumText()==	5551	then
		BeginEvent(sceneld)
			AddText(sceneld,strText)
		              AddNumText( sceneId,x940005_g_scriptld,	"#Y��������", 10, 5552)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������ƻ�", 10, 5553)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y������������", 10, 5554)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������ƶ���", 10, 5555)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y������������", 10, 5556)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ�����", 10, 5557)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ���", 10, 5558)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ�����", 10, 5559)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ�����", 10, 5560)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ�����", 10, 5561)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ���", 10, 5562)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ�����", 10, 5563)
				--AddNumText( sceneId,x940005_g_scriptld,	"#Y�������Ƽ�����", 10, 5564)
              EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )


	elseif GetNumText() == 5552 then
--	local nStoneId = 30505817
--	local nStoneId = 30304007
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10155006)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 30304007)>=100 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,30505817,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,30505816,1)--ɾ����Ʒ
			TryRecieveItem( sceneId,selfId,10430316,1)--������Ʒ
                        AddText( sceneId, "��ϲ�����������ɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end


		elseif GetNumText() == 5553 then
--	local nStoneId = 10553137
--	local nStoneId = 30503901
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10553137)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 30503901)>=1 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,30503901,1)--ɾ����Ʒ
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4047, 0)
			TryRecieveItem( sceneId,selfId,30503900,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5554 then
--	local nStoneId = 10434303
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434303)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=20 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434303,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,20)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434304,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5555 then
--	local nStoneId = 10434304
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434304)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=25 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434304,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,10)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434305,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5556 then
--	local nStoneId = 10434305
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434305)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=30 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434305,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,30)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434306,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5557 then
--	local nStoneId = 10434306
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434306)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=40 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434306,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,40)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434307,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5558 then
--	local nStoneId = 10434308
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434308)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=10 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434308,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,10)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434309,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5559 then
--	local nStoneId = 10434309
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434309)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=15 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434309,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,15)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434310,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5560 then
--	local nStoneId = 10434310
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434310)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=20 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434310,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,20)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434311,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5561 then
--	local nStoneId = 10434311
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434311)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=25 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434311,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,25)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434312,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

			elseif GetNumText() == 5562 then
--	local nStoneId = 10434312
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434312)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=30 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434312,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,30)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434313,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

				elseif GetNumText() == 5563 then
--	local nStoneId = 10434313
--	local nStoneId = 20103072
	if LuaFnGetAvailableItemCount(sceneId, selfId, 10434313)>=1 and LuaFnGetAvailableItemCount(sceneId, selfId, 20103072)>=35 then
                BeginEvent( sceneId ) 
			LuaFnDelAvailableItem(sceneId,selfId,10434313,1)--ɾ����Ʒ
			LuaFnDelAvailableItem(sceneId,selfId,20103072,35)--ɾ����Ʒ
			AddSkill(  sceneId, selfId, 24516)
			AddSkill(  sceneId, selfId, 24523)
			AddSkill(  sceneId, selfId, 24530)
			TryRecieveItem( sceneId,selfId,10434314,1)--������Ʒ
                        AddText( sceneId, "��ϲ����Ƴɹ�" )
                EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
                else
                BeginEvent( sceneId ) 
	       		AddText( sceneId, "���Ʋ��ϲ�ȫ���ʲô�ɻ���С�ı����С��" )
               	EndEvent( sceneId )
           	DispatchEventList( sceneId, selfId, targetId )
	end

end
--**********************************	
--�Ի���ʾ	
--**********************************	
function	x940005_TalkMsg( sceneId, selfId, targetId, str)	
	BeginEvent(sceneId)	
		AddText(sceneId, str)	
	EndEvent(sceneId)	
	DispatchEventList(sceneId,selfId,targetId) 		
	end
		
end
	
	


