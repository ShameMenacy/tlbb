--GetMissionData(sceneId, selfId, XIULIAN_GONGLI)--
--SetMissionData(sceneId, selfId, XIULIAN_GONGLI, X)--
--LuaFnWashSomePoints(sceneId, selfId, nType, nPoint)--
--0: Cuong Luc, 1: Noi Luc, 2: The Luc, 3: Tri Luc, 4: Than Phap--
x887790_g_scriptId = 887790

--**********************************
function x887790_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--*****************
function x887790_ShenDingOpen(sceneId, selfId, theluc)
	if GetLevel(sceneId,selfId) < 15 then
		 x887790_NotifyTip( sceneId, selfId, "Nh�n v�t ��t c�p 15 m�i c� th� m� th�n m�c!" )
		return
	else
		local Level = GetMissionData(sceneId, selfId, SHENDING_LEVEL)
		local Exp = GetMissionData(sceneId, selfId, SHENDING_EXP)
		local Kd = GetMissionData(sceneId, selfId, SHENDING_KD)

		BeginUICommand( sceneId )
			UICommand_AddInt(sceneId, theluc) --Command--
			UICommand_AddInt(sceneId, Level)
			UICommand_AddInt(sceneId, Exp)
			UICommand_AddInt(sceneId, Kd)
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 201406072)
	end
end

function x887790_ShenDingLevel(sceneId, selfId) --Command--
	local Level = GetMissionData(sceneId, selfId, SHENDING_LEVEL)
	local Exp = GetMissionData(sceneId, selfId, SHENDING_EXP)
	local Kd = GetMissionData(sceneId, selfId, SHENDING_KD)
	local ShenDing = {}
		ShenDing[0] = {0, 0, 0, 0}
		ShenDing[1] = {1, 1, 15, 200}			ShenDing[2] = {2, 1, 17, 500}			ShenDing[3] = {2, 2, 17, 500}
		ShenDing[4] = {3, 1, 19, 1000}			ShenDing[5] = {3, 2, 19, 1000}			ShenDing[6] = {3, 3, 19, 1000}
		ShenDing[7] = {4, 1, 24, 2500}			ShenDing[8] = {4, 2, 24, 2500}			ShenDing[9] = {4, 3, 24, 2500}
		ShenDing[10] = {4, 4, 24, 2500}			ShenDing[11] = {5, 1, 29, 5000}			ShenDing[12] = {5, 2, 29, 5000}
		ShenDing[13] = {5, 3, 29, 5000}			ShenDing[14] = {5, 4, 29, 5000}			ShenDing[15] = {5, 5, 29, 5000}
		ShenDing[16] = {6, 1, 34, 10000}		ShenDing[17] = {6, 2, 34, 10000}		ShenDing[18] = {6, 3, 34, 10000}
		ShenDing[19] = {6, 4, 34, 10000}		ShenDing[20] = {6, 5, 34, 10000}		ShenDing[21] = {6, 6, 34, 10000}
		ShenDing[22] = {7, 1, 39, 30000}		ShenDing[23] = {7, 2, 39, 30000}		ShenDing[24] = {7, 3, 39, 30000}
		ShenDing[25] = {7, 4, 39, 30000}		ShenDing[26] = {7, 5, 39, 30000}		ShenDing[27] = {7, 6, 39, 30000}
		ShenDing[28] = {7, 7, 39, 30000}		ShenDing[29] = {8, 1, 45, 80000}		ShenDing[30] = {8, 2, 45, 80000}
		ShenDing[31] = {8, 3, 45, 80000}		ShenDing[32] = {8, 4, 45, 80000}		ShenDing[33] = {8, 5, 45, 80000}
		ShenDing[34] = {8, 6, 45, 80000}		ShenDing[35] = {8, 7, 45, 80000}		ShenDing[36] = {8, 8, 45, 80000}
		ShenDing[37] = {9, 1, 51, 15000}		ShenDing[38] = {9, 2, 51, 15000}		ShenDing[39] = {9, 3, 51, 15000}
		ShenDing[40] = {9, 4, 51, 15000}		ShenDing[41] = {9, 5, 51, 15000}		ShenDing[42] = {9, 6, 51, 15000}
		ShenDing[43] = {9, 7, 51, 15000}		ShenDing[44] = {9, 8, 51, 15000}		ShenDing[45] = {9, 9, 51, 15000}

	if Level >= 45 then
		x887790_NotifyTip( sceneId, selfId, "�� ho�n th�nh ng�ng luy�n to�n b� �an Nh�n" )
		return
	end

	if Exp < ShenDing[Level][4] then
		x887790_NotifyTip( sceneId, selfId, "Kh�ng �� D��c Tr�n � ti�n h�nh Ng�ng нn" )
		return
	else
		SetMissionData(sceneId, selfId, SHENDING_LEVEL, Level + 1)
		SetMissionData(sceneId, selfId, SHENDING_EXP, Exp - ShenDing[Level][4])
		
		local Point = GetPlayerRemainPoints(sceneId, selfId)
		SetPlayerRemainPoints(sceneId, selfId, Point + ShenDing[Level + 1][3])

		x887790_ShenDingOpen(sceneId, selfId, ShenDing[Level + 1][3])
		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end
	
end

function x887790_ShenDingKd(sceneId, selfId) --Command: 100--
	local Level = GetMissionData(sceneId, selfId, SHENDING_LEVEL)
	local Kd = GetMissionData(sceneId, selfId, SHENDING_KD)
	local ShenDing = {}
		ShenDing[0] = {0, 0, 0, 0}
		ShenDing[1] = {1, 1, 15, 200}			ShenDing[2] = {2, 1, 17, 500}			ShenDing[3] = {2, 2, 17, 500}
		ShenDing[4] = {3, 1, 19, 1000}			ShenDing[5] = {3, 2, 19, 1000}			ShenDing[6] = {3, 3, 19, 1000}
		ShenDing[7] = {4, 1, 24, 2500}			ShenDing[8] = {4, 2, 24, 2500}			ShenDing[9] = {4, 3, 24, 2500}
		ShenDing[10] = {4, 4, 24, 2500}			ShenDing[11] = {5, 1, 29, 5000}			ShenDing[12] = {5, 2, 29, 5000}
		ShenDing[13] = {5, 3, 29, 5000}			ShenDing[14] = {5, 4, 29, 5000}			ShenDing[15] = {5, 5, 29, 5000}
		ShenDing[16] = {6, 1, 34, 10000}		ShenDing[17] = {6, 2, 34, 10000}		ShenDing[18] = {6, 3, 34, 10000}
		ShenDing[19] = {6, 4, 34, 10000}		ShenDing[20] = {6, 5, 34, 10000}		ShenDing[21] = {6, 6, 34, 10000}
		ShenDing[22] = {7, 1, 39, 30000}		ShenDing[23] = {7, 2, 39, 30000}		ShenDing[24] = {7, 3, 39, 30000}
		ShenDing[25] = {7, 4, 39, 30000}		ShenDing[26] = {7, 5, 39, 30000}		ShenDing[27] = {7, 6, 39, 30000}
		ShenDing[28] = {7, 7, 39, 30000}		ShenDing[29] = {8, 1, 45, 80000}		ShenDing[30] = {8, 2, 45, 80000}
		ShenDing[31] = {8, 3, 45, 80000}		ShenDing[32] = {8, 4, 45, 80000}		ShenDing[33] = {8, 5, 45, 80000}
		ShenDing[34] = {8, 6, 45, 80000}		ShenDing[35] = {8, 7, 45, 80000}		ShenDing[36] = {8, 8, 45, 80000}
		ShenDing[37] = {9, 1, 51, 15000}		ShenDing[38] = {9, 2, 51, 15000}		ShenDing[39] = {9, 3, 51, 15000}
		ShenDing[40] = {9, 4, 51, 15000}		ShenDing[41] = {9, 5, 51, 15000}		ShenDing[42] = {9, 6, 51, 15000}
		ShenDing[43] = {9, 7, 51, 15000}		ShenDing[44] = {9, 8, 51, 15000}		ShenDing[45] = {9, 9, 51, 15000}
	
	if Level <= 14 then
		x887790_NotifyTip( sceneId, selfId, "Ho�n th�nh ng�ng �n to�n b� Ng� Ph�m нn D��c m�i c� th� ti�n h�nh." )
		return
	end

	local KdMax = 0
	if Level >= 15 then
		KdMax = 1
	end
	
	if Level >= 21 then
		KdMax = 3
	end

	if Level >= 28 then
		KdMax = 5
	end
	
	if Level >= 36 then
		KdMax = 7
	end
	
	if Level >= 45 then
		KdMax = 10
	end
	
	if Kd >= KdMax then
		x887790_NotifyTip( sceneId, selfId, "H�y gia t�ng Ph�m �an Nh�n � ti�p t�c Dung h�p Kim �an" )
		return
	end
	
	local KimDan1 = LuaFnGetAvailableItemCount(sceneId, selfId, 38000943) --Co Dinh--
	local KimDan2 = LuaFnGetAvailableItemCount(sceneId, selfId, 38000944)
	if KimDan1 + KimDan2 <= 0 then
		x887790_NotifyTip( sceneId, selfId, "Tr�n ng߶i c�c h� kh�ng c� C�ng Nguy�n Kim �an" )
		return
	end
	
	local Point = GetPlayerRemainPoints(sceneId, selfId)
	SetPlayerRemainPoints(sceneId, selfId, Point + 100)
		
	SetMissionData(sceneId, selfId, SHENDING_KD, Kd + 1)
	x887790_ShenDingOpen(sceneId, selfId, 100)

	if KimDan1 >= 1 then
		LuaFnDelAvailableItem(sceneId,selfId,38000943,1)
	else
		LuaFnDelAvailableItem(sceneId,selfId,38000944,1)
	end
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
end

function x887790_ShenDingHelp(sceneId, selfId)
	BeginEvent(sceneId)
		AddText(sceneId, "#{XLDL_140606_33}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end