--Long Van
x002198_g_scriptId = 002198

--**********************************
--Main
--**********************************
function x002198_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId, "#GLong V�n sau khi h�c t�p m� r�ng thu�c t�nh, �i m�i Long V�n s� kh�ng thay �i m� r�ng thu�c t�nh.")
		AddText(sceneId, "#cFF0000Ch� �: Tr߾c khi th�ng c�p vui l�ng th�o g� b�o th�ch")
		AddNumText(sceneId, x002198_g_scriptId, "T�ng c�p tr߷ng th�nh", 6, 1)					
		AddNumText(sceneId, x002198_g_scriptId, "T�ng c�p sao", 6, 2)					
		AddNumText(sceneId, x002198_g_scriptId, "H�c thu�c t�nh m� r�ng", 6, 3)					
		AddNumText(sceneId, x002198_g_scriptId, "Th�ng c�p thu�c t�nh m� r�ng", 6, 4)					
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--**********************************
function x002198_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110725)		
	end
	
	if GetNumText() == 2 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110726)		
	end

	if GetNumText() == 3 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong v�n c� th� m� r�ng thu�c t�nh, sau khi m� r�ng c� th� th�ng c�p thu�c t�nh!")
			AddNumText(sceneId, x002198_g_scriptId, "H�c thu�c t�nh gia t�ng gi�i h�n m�u", 6, 31)
			AddNumText(sceneId, x002198_g_scriptId, "H�c thu�c t�nh xuy�n kh�ng", 6, 32)
			AddNumText(sceneId, x002198_g_scriptId, "H�c thu�c t�nh c�ng k�ch", 6, 33)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if GetNumText() == 4 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong v�n c� th� m� r�ng thu�c t�nh, sau khi m� r�ng c� th� th�ng c�p thu�c t�nh!")
			AddNumText(sceneId, x002198_g_scriptId, "Th�ng c�p thu�c t�nh gia t�ng gi�i h�n m�u", 6, 41)
			AddNumText(sceneId, x002198_g_scriptId, "Th�ng c�p thu�c t�nh xuy�n kh�ng", 6, 42)
			AddNumText(sceneId, x002198_g_scriptId, "Th�ng c�p thu�c t�nh c�ng k�ch", 6, 43)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText() == 31 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  20110728)
	end
	
	if GetNumText() == 32 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong v�n c� th� m� r�ng c�c thu�c t�nh xuy�n kh�ng sau:")
			AddNumText(sceneId, x002198_g_scriptId, "Xuy�n kh�ng b�ng", 6, 321)
			AddNumText(sceneId, x002198_g_scriptId, "Xuy�n kh�ng h�a", 6, 322)
			AddNumText(sceneId, x002198_g_scriptId, "Xuy�n kh�ng huy�n", 6, 323)
			AddNumText(sceneId, x002198_g_scriptId, "Xuy�n kh�ng �c", 6, 324)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText() == 33 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GLong v�n c� th� m� r�ng c�c thu�c t�nh c�ng k�ch sau:")
			AddNumText(sceneId, x002198_g_scriptId, "Thu�c t�nh b�ng c�ng", 6, 331)
			AddNumText(sceneId, x002198_g_scriptId, "Thu�c t�nh h�a c�ng", 6, 332)
			AddNumText(sceneId, x002198_g_scriptId, "Thu�c t�nh huy�n c�ng", 6, 333)
			AddNumText(sceneId, x002198_g_scriptId, "Thu�c t�nh �c c�ng", 6, 334)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if GetNumText() == 41 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20111729)
	end

	if GetNumText() == 42 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20112729)
	end

	if GetNumText() == 43 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20113729)
	end

	if GetNumText() == 321 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20111728)
	end
	
	if GetNumText() == 322 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20112728)
	end
	
	if GetNumText() == 323 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20113728)
	end
	
	if GetNumText() == 324 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20114728)
	end
	
	if GetNumText() == 331 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20115728)
	end
	
	if GetNumText() == 332 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20116728)
	end
	
	if GetNumText() == 333 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20117728)
	end
	
	if GetNumText() == 334 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20118728)
	end

end
function x002198_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)

	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002182_NotifyFailTips(sceneId,selfId,"Ng߽i h�y s�p x�p l�i 1 � tr�ng trong � ��o c� nh�!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002197_NotifyFailTips(sceneId,selfId,"Ch�c m�ng ng߽i nh�n th߷ng th�nh c�ng!")

end
