--Th�nh ph� NPC
--���

x805007_g_scriptId=805007
x805007_g_BuildingID15 = 6

--**********************************
--�¼��������
--**********************************
function x805007_OnDefaultEvent( sceneId, selfId,targetId )
	
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText
	
	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "    Kh�ng ph�i l� ng߶i c�a ta, kh�ng b�n ra ngo�i t�t c� c�c lo�i binh kh�."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	BeginEvent(sceneId)
		strText = "    Ta l� ch� c�a h�ng binh kh�, b�o ki�m �i v�i anh h�ng, nh�ng vi�c li�n quan �n binh kh� trong thi�n h� �u c� th� t�m ta, �u l� ng߶i m�t nh� m�.."
		AddText(sceneId,strText)
		AddNumText(sceneId,x805007_g_scriptId,"C�a h�ng b� m�t",7,8)
		AddNumText(sceneId,x805007_g_scriptId,"Nh� ch� t�o",6,9)
		AddNumText(sceneId,x805007_g_scriptId,"Gi�i thi�u c�a h�ng binh c�",11,7)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x805007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805007_g_BuildingID15, 4)
	elseif GetNumText() == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --����Th�nh ph� �̵����
			UICommand_AddInt(sceneId,x805007_g_BuildingID15)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 104)
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_WuJuFang}" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 9 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end
