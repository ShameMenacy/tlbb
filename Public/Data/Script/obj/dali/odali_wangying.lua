--����NPC
--����ү
--��ͨ

x002025_g_scriptId 	= 181000
x002025_g_gotoact	 	= 2
x002025_g_leave			= 20

--**********************************
--�¼��������
--**********************************
function x002025_OnDefaultEvent( sceneId, selfId,targetId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		if LuaFnGetAvailableItemCount(sceneId, selfId, 39910012) >= 5 then
		BeginEvent( sceneId )
			AddText( sceneId, "   #Wӵ��5��#G[���Գƺ�ƾ֤]#W����ҿ��ڴ˴���ȡ���Գƺţ�״̬����5%���ʼ��ٶԷ�����80��.ֱ����ֵ��" )	
			AddNumText( sceneId, x002025_g_scriptId, "��ȡ�������Գƺ�", 5, 501 )
		    EndEvent(sceneId)
		   DispatchEventList(sceneId,selfId,targetId)
	      else
		   BeginEvent(sceneId)
			AddText(sceneId,"  #cff99cc��ʾ��#Wֻ��ӵ��#G[���Գƺ�ƾ֤]#W����Ҳ�����д���Գƺţ�")		
			--AddNumText( sceneId, x002025_g_scriptId, "�뿪����", -1, x002025_g_leave)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002025_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 501 then
             	BeginEvent( sceneId )
		AddText( sceneId, "  #Yΰ���Ӣ��(Ů�b)#W����ѡ����ϲ���ĸ��Գƺţ����㿴�������ڲ�ͬ��" )
		AddNumText( sceneId, x002025_g_ScriptId, "��ȡ�ƺ�-#e33ff99#K�����������µ�һ",7,1500 )
		AddNumText( sceneId, x002025_g_ScriptId, "��ȡ�ƺ�-#e33ff99#K����Ⱥ�ۡ���������",7,1501 )
		AddNumText( sceneId, x002025_g_ScriptId, "��ȡ�ƺ�-#e33ff99#K����ն�̡������޵�",7,1502 )
		AddNumText( sceneId, x002025_g_ScriptId, "��ȡ�ƺ�-#e33ff99#K�������ס��������",7,1503 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 1500 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K�����������µ�һ" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#e33ff99#K�����������µ�һ#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�ɹ���ȡ���Գƺ�#e33ff99#K�����������µ�һ", 4 )	
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 1501 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K����Ⱥ�ۡ���������" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#e33ff99#K����Ⱥ�ۡ��������ˡ�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�ɹ���ȡ���Գƺ�#e33ff99#K����Ⱥ�ۡ���������", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1502 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K����ն�̡������޵�" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#e33ff99#K����ն�̡������޵�#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�ɹ���ȡ���Գƺ�#e33ff99#K����ն�̡������޵�", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1503 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K�������ס��������" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,5)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#e33ff99#K�������ס�������ˡ�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�ɹ���ȡ���Գƺ�#e33ff99#K�������ס��������", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1504 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K��������֮����ʹ��" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#e33ff99#K��������֮����ʹ��#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�ɹ���ȡ���Գƺ�#e33ff99#K��������֮����ʹ��", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 1505 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#e33ff99#K��������֮�ʻ�����" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 9710, 0)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#e33ff99#K��������֮�ʻ�����#G�ƺš�" )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�ɹ���ȡ���Գƺ�#e33ff99#K��������֮�ʻ�����", 4 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1506 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y��ң����֮���¼��n" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#Y��ң����֮���¼��n#G�ƺš�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1507 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y��ң����֮�������n" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#Y��ң����֮�������n#G�ƺ�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	elseif GetNumText() == 1508 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y��ң����֮������n" )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#Y��ң����֮������n#G�ƺš�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
						
	elseif GetNumText() == 1509 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y ������� " )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#Y ������� #G�ƺš�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
						
	elseif GetNumText() == 1510 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#Y ��ң�޵� " )
		LuaFnDelAvailableItem(sceneId,selfId,39910012,1)
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ��#Y ��ң�޵� #G�ƺš�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
						
	end	
end
--**********************************
--�Ի���ʾ
--**********************************
function x002025_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x002025_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�ָ�Ѫ����
--**********************************
function x002025_Restore_hpmp( sceneId, selfId, targetId )
	RestoreHp( sceneId, selfId )
	RestoreMp( sceneId, selfId )
	RestoreRage( sceneId, selfId )
end







