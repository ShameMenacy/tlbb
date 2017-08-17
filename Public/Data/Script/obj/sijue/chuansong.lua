--��i L� NPC
--Th�i Ph�ng C�u
--Script By China

x899994_g_ScriptId	= 899994
x899994_g_Yinpiao = 40002000
--**********************************
--M� �u Event
--**********************************
function x899994_OnDefaultEvent( sceneId, selfId, targetId )
	--Ng�n phi�u
	if GetItemCount(sceneId, selfId, x899994_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Ng߽i tr�n ng߶i c� ng�n phi�u, ta kh�ng th� gi�p g� ���c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 0 then
			AddText( sceneId, "#G�n O�n T� Tuy�t Trang#I#r#cff99ff l� m�t ph� b�n m�i c�a h� th�ng. C�c h� c� mu�n tr�i nghi�m s�c m�nh c�a #BBoss#cff99ff?", 9, 100011 )
			AddNumText( sceneId, x899994_g_ScriptId, "Ti�n v�o T� Tuy�t S�n Trang", 9, 1001 )
		end
		
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Th�n Event
--**********************************
function x899994_OnEventRequest( sceneId, selfId, targetId, eventId )
	--еi ng� T�o V�n
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x899994_MsgBox( sceneId, selfId, targetId, "еi ng� c� th�nh vi�n �ang trong tr�ng th�i T�o V�n, kh�ng th� d�ch chuy�n." )
				return
			end
		end
	end

	--T�o V�n
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x899994_MsgBox( sceneId, selfId, targetId, "Ng߽i �ang trong tr�ng th�i T�o V�n, kh�ng th� d�ch chuy�n." )
		return
	end
	
	--Event
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	
	if arg == 1001 then		--�n O�n T� Tuy�t Trang
	local 	nam	= LuaFnGetName( sceneId, selfId )
	if GetItemCount(sceneId, selfId, 38000126) ~= 0  then
		BeginEvent( sceneId )
		AddText( sceneId, "#YNg߽i kh�ng c� [T� Tuy�t Trang Th�ng H�nh Ch�ng], kh�ng th� ti�n v�o." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		--еi ng�
	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		BeginEvent(sceneId)
		AddText(sceneId,"C�c th�nh vi�n kh�ng � g�n ��y.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end

		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 98, 79, 10 )
		return
	end
end

function x899994_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end






