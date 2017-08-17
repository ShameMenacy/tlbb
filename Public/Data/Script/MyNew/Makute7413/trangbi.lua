--**************************--
--*Script Gia Cong Trang Bi*--
--*   Author: Makute7413   *--
--**************************--

x002192_g_ScriptId = 002192

--*****************************--
--*     On Default Event      *--
--*****************************--
function x002192_OnDefaultEvent(sceneId,selfId,targetId)
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� #GB�nh Ho�i T�#W, �c s� gia c�ng trang b� c�a #GThi�n Long B�t B�#W. Ta c� th� gi�p g� cho c�c h�?")
		--AddNumText(sceneId,x002192_g_ScriptId,"Test!",6,0)
		AddNumText(sceneId,x002192_g_ScriptId,"��c l� t�t c� trang b�",6,1)
		AddNumText(sceneId,x002192_g_ScriptId,"C߶ng ho� t�t c� trang b�",6,2)
		AddNumText(sceneId,x002192_g_ScriptId,"T߽ng kh�m b�o th�ch",6,3)
		AddNumText(sceneId,x002192_g_ScriptId,"T߽ng kh�m b�o th�ch c�c h�n",6,5)
		AddNumText(sceneId,x002192_g_ScriptId,"Th�o g� b�o th�ch",6,4)
		AddNumText(sceneId,x002192_g_ScriptId,"Th�o g� b�o th�ch c�c h�n",6,6)
		AddNumText(sceneId,x002192_g_ScriptId,"Kh�c danh l�n trang b�",6,7)
		AddNumText(sceneId,x002192_g_ScriptId,"Gi�m �nh t� ch�t trang b�",6,8)
		AddNumText(sceneId,x002192_g_ScriptId,"T�i gi�m �nh t� ch�t trang b�",6,9)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x002192_OnEventRequest(sceneId,selfId,targetId,eventId)
	local key = GetNumText()

	if key == 1 then
		for i = 0, 30 do
			if LuaFnGetBagEquipType(sceneId, selfId, i) ~= -1 then
				if LuaFnGetBagEquipType(sceneId, selfId, i) == 16 then
					if GetBagGemCount(sceneId, selfId, i) == 0 then
						AddBagItemSlotFour(sceneId, selfId, i)
						AddBagItemSlotFour(sceneId, selfId, i)
						AddBagItemSlotFour(sceneId, selfId, i)
					end
				else
					AddBagItemSlotFour(sceneId, selfId, i)
					AddBagItemSlotFour(sceneId, selfId, i)
					AddBagItemSlotFour(sceneId, selfId, i)
					AddBagItemSlotFour(sceneId, selfId, i)
				end
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		BeginEvent(sceneId)
			AddText(sceneId,"T�t c� trang b� trong tay n�i c�a c�c h� �� ���c ��c l� th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 2 then
		for i = 0, 30 do
			if LuaFnGetBagEquipType(sceneId, selfId, i) ~= -1 then
				LuaFnEquipEnhance(sceneId, selfId, i, i)
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
		x002192_NotifyFailTips(sceneId,selfId,"T�t c� trang b� ���c c߶ng ho� +1")
	end
	
	if key == 3 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,19830424)
	end

	if key == 4 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,27)
	end

	if key == 5 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,751107)
	end

	if key == 6 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,25702)
	end
	
	if key == 7 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1005)
	end

	if key == 8 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1001)
	end

	if key == 9 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,112233)
	end
end	
--*****************************--
--*     On Mission Submit     *--
--*****************************--
function x002192_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
	--*****************--

	--*****************--	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x002192_NotifyFailTips(sceneId,selfId,Tip)
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end