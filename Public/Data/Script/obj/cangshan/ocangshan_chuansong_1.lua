--苍山NPC
--城市传送人1
x025030_g_scriptId=025030

x025030_g_city0 = 209
x025030_g_city1 = 227
x025030_g_city2 = 601
x025030_g_city3 = 619

--**********************************

--事件交互入口

--**********************************

function x025030_OnDefaultEvent( sceneId, selfId,targetId )

		strCity0Name = CityGetCityName(sceneId, selfId, x025030_g_city0)
		strCity1Name = CityGetCityName(sceneId, selfId, x025030_g_city1)
		strCity2Name = CityGetCityName(sceneId, selfId, x025030_g_city2)
		strCity3Name = CityGetCityName(sceneId, selfId, x025030_g_city3)


	BeginEvent(sceneId)

		AddText(sceneId,"C� g� ta c� th� gi鷓 疬㧟 ng呓i kh鬾g?")
		
			if(strCity0Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Th鄋h ph� 1 "..strCity0Name,9,0) end
			if(strCity1Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Th鄋h ph� 2 "..strCity1Name,9,1) end
			if(strCity2Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Th鄋h ph� 3 "..strCity2Name,9,2) end
			if(strCity3Name ~= "") then AddNumText(sceneId,x025030_g_scriptId,"Th鄋h ph� 4 "..strCity3Name,9,3) end

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************

--事件列表选中一项

--**********************************

function x025030_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	(GetNumText()==0)	then	CityMoveToScene(sceneId, selfId, x025030_g_city0, 99, 152)
	elseif	(GetNumText()==1)	then	CityMoveToScene(sceneId, selfId, x025030_g_city1, 99, 152)
	elseif	(GetNumText()==2)	then	CityMoveToScene(sceneId, selfId, x025030_g_city2, 99, 152)
	elseif	(GetNumText()==3)	then	CityMoveToScene(sceneId, selfId, x025030_g_city3, 99, 152)
	end

end
