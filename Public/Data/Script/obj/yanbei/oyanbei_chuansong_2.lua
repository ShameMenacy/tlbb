--�㱱NPC
--Th�nh th� ������2
x019031_g_scriptId=019031

x019031_g_city0 = 242
x019031_g_city1 = 260
x019031_g_city2 = 634
x019031_g_city3 = 652

--**********************************

--�¼��������

--**********************************

function x019031_OnDefaultEvent( sceneId, selfId,targetId )

	strCity0Name = CityGetCityName(sceneId, selfId, x019031_g_city0)
	strCity1Name = CityGetCityName(sceneId, selfId, x019031_g_city1)
	strCity2Name = CityGetCityName(sceneId, selfId, x019031_g_city2)
	strCity3Name = CityGetCityName(sceneId, selfId, x019031_g_city3)


	BeginEvent(sceneId)

		AddText(sceneId,"Ta c� th� gi�p g� ng߽i?")
		
		if(strCity0Name ~= "") then AddNumText(sceneId,x019031_g_scriptId,"Th�nh th� 1  "..strCity0Name,9,0) end
		if(strCity1Name ~= "") then AddNumText(sceneId,x019031_g_scriptId,"Th�nh th� 2  "..strCity1Name,9,1) end
		if(strCity2Name ~= "") then AddNumText(sceneId,x019031_g_scriptId,"Th�nh th� 3  "..strCity2Name,9,2) end
		if(strCity3Name ~= "") then AddNumText(sceneId,x019031_g_scriptId,"Th�nh th� 4  "..strCity3Name,9,3) end

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************

--�¼��б�ѡ��һ��

--**********************************

function x019031_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	(GetNumText()==0)	then	CityMoveToScene(sceneId, selfId, x019031_g_city0, 99, 152)
	elseif	(GetNumText()==1)	then	CityMoveToScene(sceneId, selfId, x019031_g_city1, 99, 152)
	elseif	(GetNumText()==2)	then	CityMoveToScene(sceneId, selfId, x019031_g_city2, 99, 152)
	elseif	(GetNumText()==3)	then	CityMoveToScene(sceneId, selfId, x019031_g_city3, 99, 152)
	end

end
