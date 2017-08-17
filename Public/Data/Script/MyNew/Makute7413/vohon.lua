--Vo Hon
x002199_g_scriptId = 002199


function x002199_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId,"V� h�n c� th� th�ng c�p, c� th� m� r�ng thu�c t�nh, c� th� l�nh h�i k� n�ng. Ng߽i mu�n ta gi�p g�?")
		AddNumText(sceneId, x002196_g_scriptId, "T�y l�i � tr߷ng th�nh", 6, 0)
		AddNumText(sceneId, x002196_g_scriptId, "Th�ng c�p h�p th�nh", 6, 1)
		AddNumText(sceneId, x002196_g_scriptId, "M� r�ng khung thu�c t�nh", 6, 2)
		AddNumText(sceneId, x002196_g_scriptId, "H�c thu�c t�nh m� r�ng", 6, 3)
		AddNumText(sceneId, x002196_g_scriptId, "Th�ng c�p thu�c t�nh m� r�ng", 6, 4)
		AddNumText(sceneId, x002196_g_scriptId, "L�nh h�i k� n�ng v� h�n", 6, 5)
		AddNumText(sceneId, x002196_g_scriptId, "Th�ng c�p k� n�ng v� h�n", 6, 6)
		AddNumText(sceneId, x002196_g_scriptId, "T�y l�i k� n�ng v� h�n", 6, 7)
		AddNumText(sceneId, x002196_g_scriptId, "Thay �i c�m tinh v� h�n", 6, 8)
		AddNumText(sceneId, x002196_g_scriptId, "Quay l�i sau", 8, 9)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--**********************************
function x002199_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 0 then
		BeginEvent(sceneId)     
			AddText(sceneId,"V� h�n c� th� thay �i t� l� tr߷ng th�nh:")
			AddNumText(sceneId, x002196_g_scriptId, "H�i Thi�n Tinh Th�ch", 6, 10)
			AddNumText(sceneId, x002196_g_scriptId, "H�i Thi�n Th�n Th�ch", 6, 11)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 1 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,2)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090721  )
	end
	
	if key == 2 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,4)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090721  )
	end
	
	if key == 3 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,5)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090721  )
	end
	
	if key == 4 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,1)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090720  )
	end
	
	if key == 5 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,1)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end

	if key == 6 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Th�ng c�p k� n�ng v� h�n:")
			AddNumText(sceneId, x002196_g_scriptId, "K� n�ng th� nh�t", 6, 61)
			AddNumText(sceneId, x002196_g_scriptId, "K� n�ng th� hai", 6, 62)
			AddNumText(sceneId, x002196_g_scriptId, "K� n�ng th� ba", 6, 63)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 7 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,2)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 8 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,3)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 9 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	
	if key == 10 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,4)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 11 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,5)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090722  )
	end
	
	if key == 61 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,1)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090723  )
	end
	
	if key == 62 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,2)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090723  )
	end
	
	if key == 63 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId);
        UICommand_AddInt( sceneId,3)
		EndUICommand(sceneId )
		DispatchUICommand(sceneId,selfId, 20090723  )
	end
end



