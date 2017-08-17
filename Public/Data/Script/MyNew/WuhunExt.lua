
x887788_g_scriptId = 887788
--**********************************
-- 
--**********************************
function x887788_WuhunLevelUp(sceneId, selfId, whIndex, wh2Index, posid1, posid2)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	local itemId2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, wh2Index )
	
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	
	if GetItemName(sceneId, itemId2) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId2) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n l�m nguy�n li�u th�ng c�p kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author1, szAuthor1 = LuaFnGetItemCreator(sceneId,selfId,posid1)
	local Author2, szAuthor2 = LuaFnGetItemCreator(sceneId,selfId,posid2)
	local LevelWh1 = 0
	local LevelWh2 = 0
	
	if szAuthor1 ~= nil then
		LevelWh1 = tonumber(strsub(tostring(szAuthor1),12,12))
	else
		LevelWh1 = 1
	end
	
	if szAuthor2 ~= nil then
		LevelWh2 = tonumber(strsub(tostring(szAuthor2),12,12))
	else
		LevelWh2 = 1
	end

	if LevelWh1 == 3 then
		x887788_NotifyTip( sceneId, selfId, "V� h�n kh�ng th� ti�p t�c h�p th�nh." )
		return
	else
		LevelWh1 = LevelWh1 + 1
	end
	
	local szAuthor_A = ""
	local szAuthor_B = ""
	
	if szAuthor1 ~= nil then
		szAuthor_A = strsub(tostring(szAuthor1),1,11)
		szAuthor_B = strsub(tostring(szAuthor1),13,29)
	else
		szAuthor_A = "00000001500"
		szAuthor_B = "00000000000000000"
	end
	LuaFnSetItemCreator(sceneId,selfId, posid1, szAuthor_A..LevelWh1..szAuthor_B)
	LuaFnEraseItem( sceneId, selfId, wh2Index )
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
	x887788_NotifyTip( sceneId, selfId, "�� gia t�ng ��ng c�p h�p th�nh c�a V� h�n." )
	return
end
--**********************************
-- 
--**********************************
function x887788_WuhunSlot(sceneId, selfId, whIndex, wh2Index, posid1, posid2)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	local itemId2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, wh2Index )
	
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	
	if itemId2 ~= 20310158 and itemId2 ~= 20310159 then
		x887788_NotifyTip( sceneId, selfId, "Nguy�n li�u s� d�ng kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	local WuhunSlot = -1
	local LevelWh = 0
	
	if szAuthor ~= nil then
		WuhunSlot = tonumber(strsub(tostring(szAuthor),13,13))
	else
		WuhunSlot = 0
	end
	
	if szAuthor ~= nil then
		LevelWh = tonumber(strsub(tostring(szAuthor),12,12))
	else
		LevelWh = 1
	end
	
	if WuhunSlot >= LevelWh then
		x887788_NotifyTip( sceneId, selfId, "H�y n�ng cao th�m ��ng c�p h�p th�nh V� h�n." )
		return
	end
	
	local Percent = 0
	if itemId2 == 20310158 then
		Percent = 50
	elseif itemId2 == 20310159 then
		Percent = 75
	end
	
	local Per = 100
	if WuhunSlot == 0 then
		Per = random(1,70)
	elseif WuhunSlot == 1 then
		Per = random(1,80)
	elseif WuhunSlot == 2 then
		Per = random(1,90)
	end
	
	if Percent <= Per then
		x887788_NotifyTip( sceneId, selfId, "Th�t kh�ng may, thao t�c �� th�t b�i." )
		x887788_NotifyTip( sceneId, selfId, "H�y d�ng Ph� Thi�n Ti�n � c� kh� n�ng th�nh c�ng cao h�n." )
		LuaFnEraseItem( sceneId, selfId, wh2Index )
		return
	end
	
	local szAuthor_A = ""
	local szAuthor_B = ""
	
	if szAuthor ~= nil then
		szAuthor_A = strsub(tostring(szAuthor),1,12)
		szAuthor_B = strsub(tostring(szAuthor),14,29)
	else
		szAuthor_A = "000000015001"
		szAuthor_B = "0000000000000000"
	end
	
	if WuhunSlot >= 3 then
		x887788_NotifyTip( sceneId, selfId, "Kh�ng th� gia t�ng th�m Thu�c t�nh m� r�ng." )
		return
	else
		WuhunSlot = WuhunSlot + 1
	end
	
	LuaFnSetItemCreator(sceneId,selfId, posid1, szAuthor_A..WuhunSlot..szAuthor_B)
	LuaFnEraseItem( sceneId, selfId, wh2Index )
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
	x887788_NotifyTip( sceneId, selfId, "�� gia t�ng khung Thu�c t�nh m� r�ng c�a V� h�n." )
	return
end
--**********************************
-- 
--**********************************
function x887788_WuhunSlotAdd(sceneId, selfId, whIndex, wh2Index, posid1, posid2)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	local itemId2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, wh2Index )
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end

	if itemId2 < 30700214 or itemId2 > 30700225 then
		x887788_NotifyTip( sceneId, selfId, "S�ch m� r�ng thu�c t�nh kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	
	local Pro1, Pro2, Pro3 = ""
	local szAuthor_A, szAuthor_B = ""
	
	if szAuthor ~= nil then
		Pro1 = strsub(tostring(szAuthor),14,15)
		Pro2 = strsub(tostring(szAuthor),16,17)
		Pro3 = strsub(tostring(szAuthor),18,19)
		WuhunSlot = strsub(tostring(szAuthor),13,13)
	else
		x887788_NotifyTip( sceneId, selfId, "V� h�n v�n ch�a ���c m� r�ng khung thu�c t�nh." )
		return
	end
	
	if itemId2 >= 30700218 and itemId2 <= 30700221 then
		if Pro1 ~= "00" then
			x887788_NotifyTip( sceneId, selfId, "V� h�n �� ���c m� r�ng Thu�c t�nh c�ng k�ch t� tr߾c." )
			return
		elseif WuhunSlot ~= "1" and WuhunSlot ~= "2" and WuhunSlot ~= "3" then
			x887788_NotifyTip( sceneId, selfId, "Khung thu�c t�nh th� nh�t c�a v� h�n v�n ch�a ���c m�." )
			return
		else
			local WH_CK = {}
				WH_CK[30700218] = {"01"}
				WH_CK[30700219] = {"11"}
				WH_CK[30700220] = {"21"}
				WH_CK[30700221] = {"31"}

			szAuthor_A = strsub(tostring(szAuthor),1,13)
			szAuthor_B = strsub(tostring(szAuthor),16,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..WH_CK[itemId2][1]..szAuthor_B)
			LuaFnEraseItem( sceneId, selfId, wh2Index )
			x887788_NotifyTip( sceneId, selfId, "M� r�ng thu�c t�nh th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		end
		return
	end

	if itemId2 >= 30700214 and itemId2 <= 30700217 then
		if Pro2 ~= "00" then
			x887788_NotifyTip( sceneId, selfId, "V� h�n �� ���c m� r�ng Thu�c t�nh kh�ng t�nh t� tr߾c." )
			return
		elseif WuhunSlot ~= "2" and WuhunSlot ~= "3" then
			x887788_NotifyTip( sceneId, selfId, "Khung thu�c t�nh th� hai c�a v� h�n v�n ch�a ���c m�." )
			return
		else
			local WH_KT = {}
				WH_KT[30700214] = {"01"}
				WH_KT[30700215] = {"11"}
				WH_KT[30700216] = {"21"}
				WH_KT[30700217] = {"31"}

			szAuthor_A = strsub(tostring(szAuthor),1,15)
			szAuthor_B = strsub(tostring(szAuthor),18,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..WH_KT[itemId2][1]..szAuthor_B)
			LuaFnEraseItem( sceneId, selfId, wh2Index )
			x887788_NotifyTip( sceneId, selfId, "M� r�ng thu�c t�nh th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		end
		return
	end
	
	if itemId2 >= 30700222 and itemId2 <= 30700225 then
		if Pro3 ~= "00" then
			x887788_NotifyTip( sceneId, selfId, "V� h�n �� ���c m� r�ng Thu�c t�nh xuy�n kh�ng t� tr߾c." )
			return
		elseif WuhunSlot ~= "3" then
			x887788_NotifyTip( sceneId, selfId, "Khung thu�c t�nh th� ba c�a v� h�n v�n ch�a ���c m�." )
			return
		else
			local WH_XK = {}
				WH_XK[30700222] = {"01"}
				WH_XK[30700223] = {"11"}
				WH_XK[30700224] = {"21"}
				WH_XK[30700225] = {"31"}

			szAuthor_A = strsub(tostring(szAuthor),1,17)
			szAuthor_B = strsub(tostring(szAuthor),20,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..WH_XK[itemId2][1]..szAuthor_B)
			LuaFnEraseItem( sceneId, selfId, wh2Index )
			x887788_NotifyTip( sceneId, selfId, "M� r�ng thu�c t�nh th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		end
		return
	end
end
--**********************************
-- 
--**********************************
function x887788_WuhunSlotUp(sceneId, selfId, whIndex, wh2Index, posid1, posid2)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	local itemId2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, wh2Index )
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	if itemId2 < 20310122 or itemId2 > 20310148 then
		x887788_NotifyTip( sceneId, selfId, "Nhu�n H�n Th�ch ��a v�o kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	if szAuthor ~= nil then
		Pro1 = strsub(tostring(szAuthor),14,15)
		Pro2 = strsub(tostring(szAuthor),16,17)
		Pro3 = strsub(tostring(szAuthor),18,19)
	else
		x887788_NotifyTip( sceneId, selfId, "V� h�n v�n ch�a c� khung thu�c t�nh n�o." )
		return
	end
	
	if itemId2 >= 20310131 and itemId2 <= 20310139 then
		if Pro1 == "00" then
			x887788_NotifyTip( sceneId, selfId, "V� h�n ch�a ���c h�c thu�c t�nh m� r�ng." )
			return
		end
		if Pro1 == "10" or Pro1 == "20" or Pro1 == "30" or Pro1 == "40" then
			x887788_NotifyTip( sceneId, selfId, "Thu�c t�nh c�ng k�ch c�a v� h�n �� �t c�p � cao nh�t." )
			return
		end
		local WH_CK = {}
			WH_CK[20310131] = {1}
			WH_CK[20310132] = {2}
			WH_CK[20310133] = {3}
			WH_CK[20310134] = {4}
			WH_CK[20310135] = {5}
			WH_CK[20310136] = {6}
			WH_CK[20310137] = {7}
			WH_CK[20310138] = {8}
			WH_CK[20310139] = {9}

		if tonumber(strsub(Pro1,2,2)) > WH_CK[itemId2][1] then
			x887788_NotifyTip( sceneId, selfId, "C�p � c�a Nhu�n H�n Th�ch kh�ng �� � th�ng c�p Thu�c t�nh c�ng k�ch." )
			return
		end
		
		if tonumber(Pro1) <= 8 then
			local Pro11 = tonumber(strsub(Pro1,2,2)) + 1
			Pro1 = "0"..Pro11
		else
			local Pro11 = tonumber(Pro1) + 1
			Pro1 = tostring(Pro11)
		end
			szAuthor_A = strsub(tostring(szAuthor),1,13)
			szAuthor_B = strsub(tostring(szAuthor),16,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Pro1..szAuthor_B)
			LuaFnEraseItem( sceneId, selfId, wh2Index )
			x887788_NotifyTip( sceneId, selfId, "Th�ng c�p thu�c t�nh th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
	
	if itemId2 >= 20310122 and itemId2 <= 20310130 then
		if Pro2 == "00" then
			x887788_NotifyTip( sceneId, selfId, "V� h�n ch�a ���c h�c thu�c t�nh m� r�ng." )
			return
		end
		if Pro2 == "10" or Pro2 == "20" or Pro2 == "30" or Pro2 == "40" then
			x887788_NotifyTip( sceneId, selfId, "Thu�c t�nh kh�ng t�nh c�a v� h�n �� �t c�p � cao nh�t." )
			return
		end
		local WH_KT = {}
			WH_KT[20310122] = {1}
			WH_KT[20310123] = {2}
			WH_KT[20310124] = {3}
			WH_KT[20310125] = {4}
			WH_KT[20310126] = {5}
			WH_KT[20310127] = {6}
			WH_KT[20310128] = {7}
			WH_KT[20310129] = {8}
			WH_KT[20310130] = {9}

		if tonumber(strsub(Pro2,2,2)) > WH_KT[itemId2][1] then
			x887788_NotifyTip( sceneId, selfId, "C�p � c�a Nhu�n H�n Th�ch kh�ng �� � th�ng c�p Thu�c t�nh kh�ng t�nh." )
			return
		end
		
		if tonumber(Pro2) <= 8 then
			local Pro22 = tonumber(strsub(Pro2,2,2)) + 1
			Pro2 = "0"..Pro22
		else
			local Pro22 = tonumber(Pro2) + 1
			Pro2 = tostring(Pro22)
		end
			szAuthor_A = strsub(tostring(szAuthor),1,15)
			szAuthor_B = strsub(tostring(szAuthor),18,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Pro2..szAuthor_B)
			LuaFnEraseItem( sceneId, selfId, wh2Index )
			x887788_NotifyTip( sceneId, selfId, "Th�ng c�p thu�c t�nh th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
	
	if itemId2 >= 20310140 and itemId2 <= 20310148 then
		if Pro3 == "00" then
			x887788_NotifyTip( sceneId, selfId, "V� h�n ch�a ���c h�c thu�c t�nh m� r�ng." )
			return
		end
		if Pro3 == "10" or Pro3 == "20" or Pro3 == "30" or Pro3 == "40" then
			x887788_NotifyTip( sceneId, selfId, "Thu�c t�nh xuy�n kh�ng c�a v� h�n �� �t c�p � cao nh�t." )
			return
		end
		local WH_XK = {}
			WH_XK[20310140] = {1}
			WH_XK[20310141] = {2}
			WH_XK[20310142] = {3}
			WH_XK[20310143] = {4}
			WH_XK[20310144] = {5}
			WH_XK[20310145] = {6}
			WH_XK[20310146] = {7}
			WH_XK[20310147] = {8}
			WH_XK[20310148] = {9}

		if tonumber(strsub(Pro3,2,2)) > WH_XK[itemId2][1] then
			x887788_NotifyTip( sceneId, selfId, "C�p � c�a Nhu�n H�n Th�ch kh�ng �� � th�ng c�p Thu�c t�nh xuy�n kh�ng." )
			return
		end
		
		if tonumber(Pro3) <= 8 then
			local Pro33 = tonumber(strsub(Pro3,2,2)) + 1
			Pro3 = "0"..Pro33
		else
			local Pro33 = tonumber(Pro3) + 1
			Pro3 = tostring(Pro33)
		end
			szAuthor_A = strsub(tostring(szAuthor),1,17)
			szAuthor_B = strsub(tostring(szAuthor),20,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Pro3..szAuthor_B)
			LuaFnEraseItem( sceneId, selfId, wh2Index )
			x887788_NotifyTip( sceneId, selfId, "Th�ng c�p thu�c t�nh th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		return
	end
end

function x887788_WuhunSkillAdd(sceneId,selfId,whIndex,posid1)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	local WuhunLevel = 0
	
	if szAuthor ~= nil then
		WuhunLevel = tonumber(strsub(tostring(szAuthor),6,8))
	else
		x887788_NotifyTip( sceneId, selfId, "V� h�n �t c�p 40 h�y mang �n ��y l�nh h�i k� n�ng." )
		return
	end

	local WuhunSkill1 = strsub(tostring(szAuthor),21,23)
	local WuhunSkill2 = strsub(tostring(szAuthor),24,26)
	local WuhunSkill3 = strsub(tostring(szAuthor),27,29)
	
	if WuhunSkill1 ~= "000" and WuhunSkill2 ~= "000" and WuhunSkill3 ~= "000" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n �� l�nh ng� t�i �a 3 k� n�ng" )
		return
	end
	
	if WuhunSkill1 == "000" then
		if WuhunLevel >= 40 then 
			local Random = random(1,4)
			local Skill1 = {1,7,13,19}
			local Skill11 = ""
			if Skill1[Random] <= 9 then
				Skill11 = "00"..Skill1[Random]
			elseif Skill1[Random] <= 99 then
				Skill11 = "0"..Skill1[Random]
			end
			szAuthor_A = strsub(tostring(szAuthor),1,20)
			szAuthor_B = strsub(tostring(szAuthor),24,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Skill11..szAuthor_B)
			x887788_NotifyTip( sceneId, selfId, "V� h�n l�nh h�i k� n�ng th� nh�t th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		else
			x887788_NotifyTip( sceneId, selfId, "V� h�n �t c�p 40 h�y mang �n ��y l�nh h�i k� n�ng." )
		end
		return
	end
	
	if WuhunSkill2 == "000" then
		if WuhunLevel >= 70 then
			local Random = random(1,22)
			local Skill2 = {1,7,13,19,25,31,37,43,49,55,61,67,73,79,85,91,97,103,109,115,121,127}
			local Skill22 = ""
			if Skill2[Random] <= 9 then
				Skill22 = "00"..Skill2[Random]
			elseif Skill2[Random] <= 99 then
				Skill22 = "0"..Skill2[Random]
			elseif Skill2[Random] > 99 then
				Skill22 = Skill2[Random]
			end
			
			szAuthor_A = strsub(tostring(szAuthor),1,23)
			szAuthor_B = strsub(tostring(szAuthor),27,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Skill22..szAuthor_B)
			x887788_NotifyTip( sceneId, selfId, "V� h�n l�nh h�i k� n�ng th� hai th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		else
			x887788_NotifyTip( sceneId, selfId, "V� h�n �t c�p 70 h�y mang �n ��y l�nh h�i k� n�ng th� hai." )
		end
		return
	end

	if WuhunSkill3 == "000" then
		if WuhunLevel >= 90 then
			local Random = random(1,14)
			local Skill3 = {1,7,13,19,25,31,37,43,49,55,61,67,73,79}
			local Skill33 = ""
			if Skill3[Random] <= 9 then
				Skill33 = "00"..Skill3[Random]
			elseif Skill3[Random] <= 99 then
				Skill33 = "0"..Skill3[Random]
			end
			szAuthor_A = strsub(tostring(szAuthor),1,26)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Skill33)
			x887788_NotifyTip( sceneId, selfId, "V� h�n l�nh h�i k� n�ng th� ba th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		else
			x887788_NotifyTip( sceneId, selfId, "V� h�n �t c�p 90 h�y mang �n ��y l�nh h�i k� n�ng th� ba." )
		end
		return
	end
end

function x887788_WuhunSkillReset(sceneId,selfId,whIndex,posid1)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	local WuhunLevel = 0
	
	if szAuthor ~= nil then
		WuhunLevel = tonumber(strsub(tostring(szAuthor),6,8))
	else
		x887788_NotifyTip( sceneId, selfId, "V� h�n �� c� k� n�ng h�y mang �n ��y t�y l�i." )
		return
	end

	local WuhunSkill1 = strsub(tostring(szAuthor),21,23)
	local WuhunSkill2 = strsub(tostring(szAuthor),24,26)
	local WuhunSkill3 = strsub(tostring(szAuthor),27,29)

	if WuhunSkill1 == "000" and WuhunSkill2 == "000" and WuhunSkill3 == "000" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n �� c� k� n�ng h�y mang �n ��y t�y l�i." )
		return
	end

	if LuaFnGetAvailableItemCount(sceneId, selfId, 30700236) < 1 then
		x887788_NotifyTip( sceneId, selfId, "Ng߽i kh�ng c� �c H�n Th�ch, kh�ng th� t�y l�i k� n�ng v� h�n." )
		return
	end

	local Skill1Lv1 = {1,7,13,19}
	local Skill1Lv2 = {2,8,14,20}
	local Skill1Lv3 = {3,9,15,21}
	local Skill1Lv4 = {4,10,16,22}
	local Skill1Lv5 = {5,11,17,23}
	local Skill1Lv6 = {6,12,18,24}
	
	local Skill2Lv1 = {1, 7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85, 91, 97, 103, 109, 115, 121, 127}
	local Skill2Lv2 = {2, 8, 14, 20, 26, 32, 38, 44, 50, 56, 62, 68, 74, 80, 86, 92, 98, 104, 110, 116, 122, 128}
	local Skill2Lv3 = {3, 9, 15, 21, 27, 33, 39, 45, 51, 57, 63, 69, 75, 81, 87, 93, 99, 105, 111, 117, 123, 129}
	local Skill2Lv4 = {4, 10, 16, 22, 28, 34, 40, 46, 52, 58, 64, 70, 76, 82, 88, 94, 100, 106, 112, 118, 124, 130}
	local Skill2Lv5 = {5, 11, 17, 23, 29, 35, 41, 47, 53, 59, 65, 71, 77, 83, 89, 95, 101, 107, 113, 119, 125, 131}
	local Skill2Lv6 = {6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, 78, 84, 90, 96, 102, 108, 114, 120, 126, 132}
	
	local Skill3Lv1 = {1, 7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79}
	local Skill3Lv2 = {2, 8, 14, 20, 26, 32, 38, 44, 50, 56, 62, 68, 74, 80}
	local Skill3Lv3 = {3, 9, 15, 21, 27, 33, 39, 45, 51, 57, 63, 69, 75, 81}
	local Skill3Lv4 = {4, 10, 16, 22, 28, 34, 40, 46, 52, 58, 64, 70, 76, 82}
	local Skill3Lv5 = {5, 11, 17, 23, 29, 35, 41, 47, 53, 59, 65, 71, 77, 83}
	local Skill3Lv6 = {6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, 78, 84}
	
	if WuhunSkill1 ~= "000" then
		local Random  = random(1,4)
		local Skill1 = 0
		if mod(tonumber(WuhunSkill1)-1,6) == 0 then
			Skill1 = Skill1Lv1[Random]
		elseif mod(tonumber(WuhunSkill1)-2,6) == 0 then
			Skill1 = Skill1Lv2[Random]
		elseif mod(tonumber(WuhunSkill1)-3,6) == 0 then
			Skill1 = Skill1Lv3[Random]
		elseif mod(tonumber(WuhunSkill1)-4,6) == 0 then
			Skill1 = Skill1Lv4[Random]
		elseif mod(tonumber(WuhunSkill1)-5,6) == 0 then
			Skill1 = Skill1Lv5[Random]
		elseif mod(tonumber(WuhunSkill1),6) == 0 then
			Skill1 = Skill1Lv6[Random]
		end

		if Skill1 <= 9 then
			WuhunSkill1 = "00"..Skill1
		elseif Skill1 <= 99 then
			WuhunSkill1 = "0"..Skill1
		end
	else
		WuhunSkill1 = "000"
	end
	
	if WuhunSkill2 ~= "000" then
		local Random  = random(1,22)
		local Skill2 = 0
		if mod(tonumber(WuhunSkill2)-1,6) == 0 then
			Skill2 = Skill2Lv1[Random]
		elseif mod(tonumber(WuhunSkill2)-2,6) == 0 then
			Skill2 = Skill2Lv2[Random]
		elseif mod(tonumber(WuhunSkill2)-3,6) == 0 then
			Skill2 = Skill2Lv3[Random]
		elseif mod(tonumber(WuhunSkill2)-4,6) == 0 then
			Skill2 = Skill2Lv4[Random]
		elseif mod(tonumber(WuhunSkill2)-5,6) == 0 then
			Skill2 = Skill2Lv5[Random]
		elseif mod(tonumber(WuhunSkill2),6) == 0 then
			Skill2 = Skill2Lv6[Random]
		end

		if Skill2 <= 9 then
			WuhunSkill2 = "00"..Skill2
		elseif Skill2 <= 99 then
			WuhunSkill2 = "0"..Skill2
		end
	else
		WuhunSkill2 = "000"
	end

	if WuhunSkill3 ~= "000" then
		local Random  = random(1,14)
		local Skill3 = 0
		if mod(tonumber(WuhunSkill3)-1,6) == 0 then
			Skill3 = Skill3Lv1[Random]
		elseif mod(tonumber(WuhunSkill3)-2,6) == 0 then
			Skill3 = Skill3Lv2[Random]
		elseif mod(tonumber(WuhunSkill3)-3,6) == 0 then
			Skill3 = Skill3Lv3[Random]
		elseif mod(tonumber(WuhunSkill3)-4,6) == 0 then
			Skill3 = Skill3Lv4[Random]
		elseif mod(tonumber(WuhunSkill3)-5,6) == 0 then
			Skill3 = Skill3Lv5[Random]
		elseif mod(tonumber(WuhunSkill3),6) == 0 then
			Skill3 = Skill3Lv6[Random]
		end

		if Skill3 <= 9 then
			WuhunSkill3 = "00"..Skill3
		elseif Skill3 <= 99 then
			WuhunSkill3 = "0"..Skill3
		end
	else
		WuhunSkill3 = "000"
	end
	
	szAuthor_A = strsub(tostring(szAuthor),1,20)
	LuaFnDelAvailableItem(sceneId,selfId,30700236,1)
	LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..WuhunSkill1..WuhunSkill2..WuhunSkill3)
	x887788_NotifyTip( sceneId, selfId, "T�y l�i k� n�ng v� h�n th�nh c�ng." )
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
end

function x887788_WuhunTruongThanh(sceneId,selfId,whIndex,posid1,type)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	
	if type == 1 then
		local ItemNeed = 30700237
		local Per = random(500,900)
		if LuaFnGetAvailableItemCount(sceneId, selfId, ItemNeed) >= 1 then
			if szAuthor ~= nil then
				szAuthor_A = strsub(tostring(szAuthor),1,8)
				szAuthor_B = strsub(tostring(szAuthor),12,29)
				LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Per..szAuthor_B)
				LuaFnDelAvailableItem(sceneId,selfId,ItemNeed,1)
				x887788_NotifyTip( sceneId, selfId, "T�y l�i � tr߷ng th�nh v� h�n th�nh c�ng." )
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
			else
				LuaFnSetItemCreator(sceneId,selfId,posid1,"00000001"..Per.."100000000000000000")
				LuaFnDelAvailableItem(sceneId,selfId,ItemNeed,1)
				x887788_NotifyTip( sceneId, selfId, "T�y l�i � tr߷ng th�nh v� h�n th�nh c�ng." )
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
			end
		else
			x887788_NotifyTip( sceneId, selfId, "H�y mang H�i Thi�n Tinh Th�ch �n ��y." )
			return
		end
	end
	
	
	if type == 2 then
		local ItemNeed = 30700240
		local Per = random(600,1000)
		if LuaFnGetAvailableItemCount(sceneId, selfId, ItemNeed) >= 1 then
			if szAuthor ~= nil then
				szAuthor_A = strsub(tostring(szAuthor),1,8)
				szAuthor_B = strsub(tostring(szAuthor),12,29)
				LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Per..szAuthor_B)
				LuaFnDelAvailableItem(sceneId,selfId,ItemNeed,1)
				x887788_NotifyTip( sceneId, selfId, "T�y l�i � tr߷ng th�nh v� h�n th�nh c�ng." )
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
			else
				LuaFnSetItemCreator(sceneId,selfId,posid1,"00000001"..Per.."100000000000000000")
				LuaFnDelAvailableItem(sceneId,selfId,ItemNeed,1)
				x887788_NotifyTip( sceneId, selfId, "T�y l�i � tr߷ng th�nh v� h�n th�nh c�ng." )
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
			end
		else
			x887788_NotifyTip( sceneId, selfId, "H�y mang H�i Thi�n Th�n Th�ch �n ��y." )
			return
		end
	end
	return
end

function x887788_WuhunCamTinh(sceneId,selfId,whIndex,posid1)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	local WuhunSlot = -1
	
	if szAuthor ~= nil then
		WuhunSlot = tonumber(strsub(tostring(szAuthor),12,12))
	else
		x887788_NotifyTip( sceneId, selfId, "V� h�n ch�a �t � tr߷ng th�nh c�p 3, ch�a th� khai th�ng C�m Tinh." )
		return
	end
	
	if WuhunSlot <= 2 then
		x887788_NotifyTip( sceneId, selfId, "V� h�n ch�a �t � tr߷ng th�nh c�p 3, ch�a th� khai th�ng C�m Tinh." )
		return
	end

	if LuaFnGetAvailableItemCount(sceneId, selfId, 30700244) < 1 then
		x887788_NotifyTip( sceneId, selfId, "Ng߽i kh�ng c� V� H�n D�ch T߽ng �an." )
		return
	end
	
	local Random = random(1,4)
	
	szAuthor_A = strsub(tostring(szAuthor),1,19)
	szAuthor_B = strsub(tostring(szAuthor),21,29)
	
	LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..Random..szAuthor_B)
	LuaFnDelAvailableItem(sceneId,selfId,30700244,1)
	x887788_NotifyTip( sceneId, selfId, "Thay �i c�m tinh th�nh c�ng." )
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
	return
end

function x887788_WuhunSkillUp(sceneId,selfId,whIndex,posid1,type)
	local itemId1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, whIndex )
	if GetItemName(sceneId, itemId1) ~= "L�u Ly Di�m" and GetItemName(sceneId, itemId1) ~= "Ng� Dao B�n" then
		x887788_NotifyTip( sceneId, selfId, "V� h�n c�n th�ng c�p kh�ng h�p l�." )
		return
	end
	--00000001500100000000000000000--
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,posid1)
	
	if szAuthor == nil then
		x887788_NotifyTip( sceneId, selfId, "V� h�n ch�a c� k� n�ng n�o c�." )
		return
	end
	
	local WuhunSkill1 = strsub(tostring(szAuthor),21,23)
	local WuhunSkill2 = strsub(tostring(szAuthor),24,26)
	local WuhunSkill3 = strsub(tostring(szAuthor),27,29)
	
	if WuhunSkill1 == "000" and type == 1 then
		x887788_NotifyTip( sceneId, selfId, "V� h�n v�n ch�a l�nh h�i k� n�ng th� nh�t." )
		return
	elseif WuhunSkill1 ~= "000" and type == 1 then
		if mod(tonumber(WuhunSkill1),6) == 0 then
			x887788_NotifyTip( sceneId, selfId, "K� n�ng th� nh�t c�a V� h�n �� ��t c�p cao nh�t." )
			return
		else
			local Skill1_Lv = mod(tonumber(WuhunSkill1),6)
			local ItemNeed = 20310116 + Skill1_Lv
			if LuaFnGetAvailableItemCount(sceneId, selfId, ItemNeed) < 1 then
				x887788_NotifyTip( sceneId, selfId, "Ng߽i ch�a c� H�n B�ng Ch�u (C�p "..Skill1_Lv..") � th�ng c�p k� n�ng." )
				return
			end
			local Skill1 = tonumber(WuhunSkill1) + 1
			if Skill1 <= 9 then
				WuhunSkill1 = "00"..Skill1
			elseif Skill1 <= 99 then
				WuhunSkill1 = "0"..Skill1
			end
			szAuthor_A = strsub(tostring(szAuthor),1,20)
			szAuthor_B = strsub(tostring(szAuthor),24,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..WuhunSkill1..szAuthor_B)
			LuaFnDelAvailableItem(sceneId,selfId,ItemNeed,1)
			x887788_NotifyTip( sceneId, selfId, "Th�ng c�p k� n�ng th� nh�t th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		end
	end

	if WuhunSkill2 == "000" and type == 2 then
		x887788_NotifyTip( sceneId, selfId, "V� h�n v�n ch�a l�nh h�i k� n�ng th� hai." )
		return
	elseif WuhunSkill2 ~= "000" and type == 2 then
		if mod(tonumber(WuhunSkill2),6) == 0 then
			x887788_NotifyTip( sceneId, selfId, "K� n�ng th� hai c�a V� h�n �� ��t c�p cao nh�t." )
			return
		else
			local Skill2_Lv = mod(tonumber(WuhunSkill2),6)
			local ItemNeed = 20310116 + Skill2_Lv
			if LuaFnGetAvailableItemCount(sceneId, selfId, ItemNeed) < 1 then
				x887788_NotifyTip( sceneId, selfId, "Ng߽i ch�a c� H�n B�ng Ch�u (C�p "..Skill2_Lv..") � th�ng c�p k� n�ng." )
				return
			end
			local Skill2 = tonumber(WuhunSkill2) + 1
			if Skill2 <= 9 then
				WuhunSkill2 = "00"..Skill2
			elseif Skill2 <= 99 then
				WuhunSkill2 = "0"..Skill2
			end
			szAuthor_A = strsub(tostring(szAuthor),1,23)
			szAuthor_B = strsub(tostring(szAuthor),27,29)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..WuhunSkill2..szAuthor_B)
			LuaFnDelAvailableItem(sceneId,selfId,ItemNeed,1)
			x887788_NotifyTip( sceneId, selfId, "Th�ng c�p k� n�ng th� hai th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		end
	end

	if WuhunSkill3 == "000" and type == 3 then
		x887788_NotifyTip( sceneId, selfId, "V� h�n v�n ch�a l�nh h�i k� n�ng th� ba." )
		return
	elseif WuhunSkill3 ~= "000" and type == 3 then
		if mod(tonumber(WuhunSkill3),6) == 0 then
			x887788_NotifyTip( sceneId, selfId, "K� n�ng th� ba c�a V� h�n �� ��t c�p cao nh�t." )
			return
		else
			local Skill3_Lv = mod(tonumber(WuhunSkill3),6)
			local ItemNeed = 20310116 + Skill3_Lv
			if LuaFnGetAvailableItemCount(sceneId, selfId, ItemNeed) < 1 then
				x887788_NotifyTip( sceneId, selfId, "Ng߽i ch�a c� H�n B�ng Ch�u (C�p "..Skill3_Lv..") � th�ng c�p k� n�ng." )
				return
			end
			local Skill3 = tonumber(WuhunSkill3) + 1
			if Skill3 <= 9 then
				WuhunSkill3 = "00"..Skill3
			elseif Skill3 <= 99 then
				WuhunSkill3 = "0"..Skill3
			end
			szAuthor_A = strsub(tostring(szAuthor),1,26)
			LuaFnSetItemCreator(sceneId,selfId,posid1,szAuthor_A..WuhunSkill3)
			LuaFnDelAvailableItem(sceneId,selfId,ItemNeed,1)
			x887788_NotifyTip( sceneId, selfId, "Th�ng c�p k� n�ng th� ba th�nh c�ng." )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,149,0)
		end
	end
end
--**********************************
-- 
--**********************************
function x887788_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- 
--**********************************
function x887788_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end

function x887788_OpenWuhunTab(sceneId, selfId)
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,110)
	x887788_NotifyTip( sceneId, selfId, szAuthor )
	
	if szAuthor ~= nil then
		BeginUICommand(sceneId)
			UICommand_AddString(sceneId,tostring(szAuthor))
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,20007413)
	else
		BeginUICommand(sceneId)
			UICommand_AddString(sceneId,"00000001500100000000000000000")
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,20007413)
	end
	
	
end