--********************--
x887776_g_scriptId = 887776
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x887776_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x887776_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x887776_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x887776_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--
	local CongLuc = GetMissionData(sceneId, selfId, XIULIAN_GONGLI)
	if CongLuc == 100 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�ng l�c �� ��t 100/100, kh�ng c�n s� d�ng th�m C�ng L�c �an")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x887776_OnDeplete(sceneId,selfId)
	
	--********************--
	if LuaFnDepletingUsedItem(sceneId,selfId) > 0 then
		return 1
	end
	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x887776_OnActivateOnce(sceneId,selfId)
	--********************--
	SetMissionData(sceneId, selfId, XIULIAN_GONGLI, 100)
	--********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	BeginEvent(sceneId)
		AddText(sceneId,"S� d�ng C�ng L�c �an th�nh c�ng, c�ng l�c hi�n t�i l� 100/100")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	return 1
	--********************--
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x887776_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
