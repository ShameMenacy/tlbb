--��i L� New
--ID: 002188
--Script: Edit by S�i �z
--Name = Linh Chi
--Class: Ti�u Dao
--**************************

x002188_g_ScriptId = 002188

--**************************--
--*    On Default Event    *--
--**************************--
function x002188_OnDefaultEvent(sceneId,selfId,targetId)
local nam = LuaFnGetName(sceneId,selfId)
local Sex = GetSex(sceneId,selfId)
	 
	if Sex == 0 then
		Sex = "s� mu�i"
	else 
		Sex = "s� �"
	end

	BeginEvent(sceneId)
	if LuaFnGetMenPai(sceneId,selfId) ~= 8 then
		AddText(sceneId,"#G��i L� Th�nh#W, ch�n th�nh th� ph�n hoa trong #GThi�n Long B�t B�#W. "..nam..", c�c h� c� mu�n thay �i m�n ph�i sang tu luy�n � #GTi�u Dao#W?")
		AddNumText(sceneId,x002188_g_ScriptId,"Gia nh�p #GTi�u Dao#W",2,1)
		AddNumText(sceneId,x002188_g_ScriptId,"T�m hi�u v� c�ng #GTi�u Dao#W",11,2)
	elseif LuaFnGetMenPai(sceneId,selfId) == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64)<= 0 then
		AddText(sceneId,"#G��i L� Th�nh#W, ch�n th�nh th� ph�n hoa trong #GThi�n Long B�t B�#W. "..nam..", c�c h� c� mu�n gia nh�p #GTi�u Dao#W?")
		AddNumText(sceneId,x900083_g_ScriptId,"Gia nh�p #GTi�u Dao#W",2,1)
		AddNumText(sceneId,x900074_g_ScriptId,"T�m hi�u v� c�ng #GTi�u Dao#W",11,2)
	else
		AddText(sceneId,"#G��i L� Th�nh#W, ch�n th�nh th� ph�n hoa trong #GThi�n Long B�t B�#W. "..nam.." "..Sex..", n�u nh� "..Sex.." kh�ng mu�n v� b�n ph�i tu luy�n v� �߶ng xa, c� th� �n t�m ta, ta s� d�y "..Sex.." c�ng phu c�a b�n ph�i.")
		AddNumText(sceneId,x002188_g_ScriptId,"H�c k� n�ng #GB� t�ch c�p 35",1,3)
		AddNumText(sceneId,x002188_g_ScriptId,"H�c k� n�ng #GB� t�ch c�p 80",1,4)
		AddNumText(sceneId,x002188_g_ScriptId,"Nh�n danh hi�u �c bi�t",1,5)
		AddNumText(sceneId,x002188_g_ScriptId,"Th�ng c�p t�m ph�p l�n #Gc�p 120",1,6)
		AddNumText(sceneId,x002188_g_ScriptId,"Nh�n th�i trang cao c�p m�n ph�i",2,7)
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--**************************--
--*    On Event Request    *--
--**************************--
function x002188_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()
local Sex = GetSex(sceneId,selfId)
local Sex1 = GetSex(sceneId,selfId)
	 
	--*********************-- 
	if Sex == 0 then
		Sex = "S� mu�i"
	else 
		Sex = "S� �"
	end
	--*********************--
	if key == 1 then
		if LuaFnGetAvailableItemCount(sceneId, selfId, 39901003) >= 1 then
			LuaFnDelAvailableItem(sceneId,selfId,39901003,1)
			LuaFnJoinMenpai(sceneId,selfId, targetId,8)
			LuaFnSetXinFaLevel(sceneId,selfId,49,10)
			LuaFnSetXinFaLevel(sceneId,selfId,50,10)
			LuaFnSetXinFaLevel(sceneId,selfId,51,10)
			LuaFnSetXinFaLevel(sceneId,selfId,52,10)
			LuaFnSetXinFaLevel(sceneId,selfId,53,10)
			LuaFnSetXinFaLevel(sceneId,selfId,54,10)
			LuaFnSetXinFaLevel(sceneId,selfId,63,10)
			LuaFnSetXinFaLevel(sceneId,selfId,80,10)
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�c m�ng "..Sex.." �� l� � t� #GTi�u Dao#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else 
			BeginEvent(sceneId)
				AddText(sceneId,"H�y mang #GM�n Ph�i Chuy�n Ho�n L�nh #W�n ��y!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	--*********************--
	if key == 5 then
	
		if Sex1 == 0 then 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000L�ng Ba Ti�n T�")
		else 
			LuaFnAwardSpouseTitle(sceneId,selfId,"#cFF0000Tr�n Long K� Th�nh")
		end
		DispatchAllTitle(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�c m�ng "..Sex.." nh�n th�nh c�ng danh hi�u!")
			AddText(sceneId,"Danh hi�u n�y ch� v�i nh�ng � t� c�p cao c�a #GTi�u Dao#W m�i c� th� ��t ���c, ch�c m�ng "..Sex.." nh�!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 3 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu�n h�c k� n�ng n�o?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308019,7)
		AddRadioItemBonus(sceneId,30308069,7)
		AddRadioItemBonus(sceneId,30308090,7)
		AddRadioItemBonus(sceneId,30308157,7)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002188_g_ScriptId,0)
		
	end
	--*********************--
	if key == 4 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu�n h�c k� n�ng n�o?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,30308119,4)
		AddRadioItemBonus(sceneId,30308129,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002188_g_ScriptId,0)
		
	end
	--*********************--
	if key == 6 then
		
		if GetLevel(sceneId,selfId) < 30 then
			BeginEvent(sceneId)
				AddText(sceneId,""..Sex.." c�p � kh�ng �� 115, h�y �i tu luy�n th�m �i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetXinFaLevel(sceneId,selfId,49) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,50) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,51) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,52) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,53) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,54) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,63) == 120 
		   and LuaFnGetXinFaLevel(sceneId,selfId,80) == 120 then
				BeginEvent(sceneId)
					AddText(sceneId,"Ch�ng ph�i "..Sex.." �� ��t m�c t�m ph�p #GC�p 120#W r�i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		else
			LuaFnSetXinFaLevel(sceneId,selfId,49,120)
			LuaFnSetXinFaLevel(sceneId,selfId,50,120)
			LuaFnSetXinFaLevel(sceneId,selfId,51,120)
			LuaFnSetXinFaLevel(sceneId,selfId,52,120)
			LuaFnSetXinFaLevel(sceneId,selfId,53,120)
			LuaFnSetXinFaLevel(sceneId,selfId,54,120)
			LuaFnSetXinFaLevel(sceneId,selfId,63,120)
			LuaFnSetXinFaLevel(sceneId,selfId,80,120)
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�c m�ng "..Sex.." n�ng t�m ph�p th�nh c�ng l�n #GC�p 120#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	end
	--*********************--
	if key == 2 then
	
		BeginEvent(sceneId)
			AddText(sceneId,"V� c�ng ph�i #GTi�u Dao#W coi tr�ng �ng t�c. T�ng t� th� c�a � t� #GTi�u Dao#W nh� m�t con dao v� h�nh x� nh� m�c ti�u ch� trong nh�y m�t.")
			AddText(sceneId,"V� c�ng ph�i #GTi�u Dao#W b�c ��i uy�n th�m, nh�ng � t� #GTi�u Dao#W th� l�i kh�ng �� t� ch�t � l�nh ng� nh�ng th� tuy�t k� n�y.")
			AddText(sceneId,"V� c�ng ph�i #GTi�u Dao#W thi�n v� c�ng k�ch #GN�i C�ng#W, k� n�ng s� d�ng #GH�a - еc C�ng K�ch#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	end
	--*********************--
	if key == 7 then
	
		BeginEvent(sceneId)
			AddText(sceneId,""..Sex.." mu�n nh�n th�i trang n�o?")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10124016,4)
		AddRadioItemBonus(sceneId,10124120,4)
		AddRadioItemBonus(sceneId,10124329,4)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002188_g_ScriptId,0)
		
	end
	
end
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002188_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if Sex == 0 then
		Sex = "s� mu�i"
	else 
		Sex = "s� �"
	end
	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002188_NotifyFailTips(sceneId,selfId,""..Sex.." h�y s�p x�p l�i 1 � tr�ng trong � ��o c� nh�!")
		return
	end
	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002188_NotifyFailTips(sceneId,selfId,"Ch�c m�ng "..Sex.." nh�n th߷ng th�nh c�ng!")
	--*****************--
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002188_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end