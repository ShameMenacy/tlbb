--�½ű������

--�ű���
x892103_g_ScriptId = 892103

--�����ͼ��

x892103_g_MapId = {
	                 181,
	                 181,
	                 181,
	                 181,
	                 181,
	                 181,
	                 181,
	                 181,
}

--������ƷID

x892103_g_ItemId = 30501359

--**********************************
--�ű���ʼ
--**********************************
function x892103_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		BeginEvent( sceneId )
		AddText(sceneId,"��Һã�����������������Ϊ����׼��������������Ǽ����ֻ�����")
		AddNumText( sceneId, x892103_g_ScriptId, "#G��������Ժ", 6, 1 )
		--AddNumText( sceneId, x892103_g_ScriptId, "#Y��������", 11, 2 )
		AddNumText( sceneId, x892103_g_ScriptId, "���ˡ����ǲ�Ҫ��", 12, 3 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--��ʼ����
--**********************************
function x892103_OnEventRequest( sceneId, selfId, targetId, eventId )
if GetNumText() == 1 then

	if GetItemCount(sceneId, selfId, x892103_g_ItemId)<1  then
	BeginEvent( sceneId )
		AddText(sceneId,"������û������Ժ���ƣ���û�취�����ˡ���")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end

	local level = GetLevel( sceneId, selfId )
	if level < 120 then
	BeginEvent( sceneId )
		AddText(sceneId,"��ȼ�С��120������û�취�����ˡ�")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end

	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
	BeginEvent( sceneId )
		AddText(sceneId,"   ˫�����״̬�£����ܽ��룬лл��")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
--��ӵĶ������2�˵Ĳ��ܽ���
	if LuaFnHasTeam( sceneId, selfId ) > 0 then
	BeginEvent( sceneId )
		AddText(sceneId,"    �����𾴵���ң�������ӽ�ȥŶ��")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end

	  if LuaFnDelAvailableItem(sceneId, selfId, x892103_g_ItemId, 1) == 0 then
			 BeginEvent(sceneId)
			 AddText( sceneId, "������û������Ժ���ƣ���û�취�����ˣ�" )
		   EndEvent(sceneId)
		   DispatchMissionTips( sceneId, selfId )
		   return
		 end

	
--��ʼִ������¼�
	local odd = random(1,85)
	local MapId = 0
	if( odd >= 1 and odd <= 10 ) then       
	MapId = x892103_g_MapId[1]
	elseif( odd >= 11 and odd <= 20 ) then       
	MapId = x892103_g_MapId[2]
	elseif( odd >= 21 and odd <= 30 ) then
	MapId = x892103_g_MapId[3]
	elseif( odd >= 31 and odd <= 40 ) then
	MapId = x892103_g_MapId[4]
	elseif( odd >= 41 and odd <= 50 ) then
	MapId = x892103_g_MapId[5]
	elseif( odd >= 51 and odd <= 60 ) then
	MapId = x892103_g_MapId[6]
	elseif( odd >= 61 and odd <= 70 ) then
	MapId = x892103_g_MapId[7]
	elseif( odd >= 71 and odd <= 80 ) then
	MapId = x892103_g_MapId[8]
	elseif( odd >= 81 and odd <= 85 ) then

		BeginEvent( sceneId )
		AddText(sceneId,"     �Բ���������������ޡ��������ɳ���ɨ��,��������ν�����Ч��")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
	    
--���Ŀ���ͼ�е�����
	local nHumanNum = LuaFnGetCopyScene_HumanCount("..MapId..")
	if nHumanNum > 100 then
	BeginEvent( sceneId )
		AddText(sceneId,"    �Բ������ǩ��������Ѿ������ˣ������³�ǩ��")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
	SetMissionData( sceneId, selfId, MF_JIETIANLAO, 0 )
	local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#gff00f0��ϲ���#gffff00"..nam.."#gff00f0�ɹ���������Ժ�������Ű�֥�������ˣ����ҵȸ�������������۸������һ���ڴ������������ɣ�", 4 )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, MapId, 29, 31, 10 )
	return

end
if GetNumText() == 2 then
	BeginEvent( sceneId )
		BeginEvent( sceneId )
		AddText(sceneId,"����Ժ����Ǳ���ԭ���Ļ����������������120�����ϲ���������Ժ���ƣ��ɹ������ͼ�ú�����������Ů�����������Ȥ���ɹ����뽫�۳�һ������Ժ���ƣ������ɳ����ϴ�ɨ��ʧ��Ҳ�۳���")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
if GetNumText() == 3 then
		-- �رս���
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
end
end

--======================
--������ʾ�����
--======================
function x892103_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
end