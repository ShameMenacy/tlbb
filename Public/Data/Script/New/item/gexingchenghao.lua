--����NPC
--����ү
--��ͨ

x889079_g_scriptId 	= 181000
x889079_g_gotoact	 	= 2
x889079_g_leave			= 20

--**********************************
--�¼��������
--**********************************
function x889079_OnDefaultEvent( sceneId, selfId,targetId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		if LuaFnGetAvailableItemCount(sceneId, selfId, 30505107) >= 200 then
		BeginEvent( sceneId )
			AddText( sceneId, "   #cFF0000ӵ��200��#B[����]#cFF0000����ҿ��ڴ˴���ȡ������ҫ�ƺ�!" )	
			AddNumText( sceneId, x889079_g_scriptId, "��ȡ������ҫ�ƺ�", 5, 501 )
		    EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
	      else
		   BeginEvent(sceneId)
			AddText(sceneId,"  #cFF0000ע�⣺#Wֻ��ӵ��200��#G[����]#W��Ӣ�۲����ʸ����ҶԻ�,������ʸ񲻹��ɣ���")		
			AddNumText( sceneId, x889079_g_scriptId, "�뿪����", -1, x889079_g_leave)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x889079_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 501 then
             	BeginEvent( sceneId )
		AddText( sceneId, "  #Yΰ���Ӣ��(Ů�b)#W����ѡ����ϲ���ĸ��Գƺţ����㿴�������ڲ�ͬ��" )
		AddNumText( sceneId, x889079_g_ScriptId, "�ƺ� - ����С��������é®",7,1500 )
		AddNumText( sceneId, x889079_g_ScriptId, "�ƺ� - ���뽭����ո¶ͷ��",7,1501 )
		AddNumText( sceneId, x889079_g_ScriptId, "�ƺ� - ����ſ�����â��¶",7,1502 )
		AddNumText( sceneId, x889079_g_ScriptId, "�ƺ� - ����֮�㡤�������",7,1503 )
		AddNumText( sceneId, x999000_g_ScriptId, "�ƺ� - ������������������",7,1504 )
		AddNumText( sceneId, x999000_g_ScriptId, "�ƺ� - ���¾��ˡ���������",7,1505 )
		AddNumText( sceneId, x999000_g_ScriptId, "�ƺ� - ���µ�һ����˫��ʥ",7,1506 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 50 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#g0099FF����С��������é®" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,50)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#g0099FF����С��������é®#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0���ɿ�������,���GM,�ɹ���ȡ���Գƺ�#g0099FF����С��������é®", 4 )	
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	elseif GetNumText() == 1501 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf123ff���뽭����ո¶ͷ��" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,80)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#gf123ff���뽭����ո¶ͷ�ǡ�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0��Ϊ����һԱ,֧�ֹ���˽��,�ɹ���ȡ��������ר�����Գƺ�#gf123ff���뽭����ո¶ͷ��", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
											
	elseif GetNumText() == 1502 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf2f3cc����ſ�����â��¶" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,110)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#gf2f3cc����ſ�����â��¶#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0ѧϰ�׷�,�������̹���·,�ɹ���ȡ��������ר�����Գƺ�#gf2f3cc����ſ�����â��¶", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1503 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#g12f1ff����֮�㡤�������" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,140)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#g12f1ff����֮�㡤������š�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0��ص��㵺,��ù��ҽ���,�ɹ���ȡ��������ר�����Գƺ�#g12f1ff����֮�㡤�������", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	elseif GetNumText() == 1504 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf13f9f������������������" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,170)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#gf13f9f#u������������������#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0����Ƿ�,ѧ�����ʮ����,�ɹ���ȡ��������ר�����Գƺ�#gf13f9f������������������", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	elseif GetNumText() == 1505 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#gf19fcc���¾��ˡ���������" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,190)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#gf19fcc���¾��ˡ���������#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0ѧ������ѧ,ͻ��ƿ��,�ɹ���ȡ��������ר�����Գƺ�#gf19fcc���¾��ˡ���������", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1506 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#eaf0cce���µ�һ����˫��ʥ" )
		LuaFnDelAvailableItem(sceneId,selfId,30505107,200)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 143, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#b#eaf0cce���µ�һ����˫��ʥ#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0ͻ�Ƽ���,����GMȫ��,�ɹ���ȡ��������ר�����Գƺ�#b#eaf0cce���µ�һ����˫��ʥ", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
												
	end		
end
--**********************************
--�Ի���ʾ
--**********************************
function x900027_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x900027_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�ָ�Ѫ����
--**********************************
function x900027_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	RestoreRage( sceneId, selfId )
end











