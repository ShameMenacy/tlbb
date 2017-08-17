--Long Van
x002197_g_scriptId = 002197

--**********************************
--Main
--**********************************
function x002197_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId, "#GCh� t�o th�n kh� g�p r�t nhi�u kh� kh�n, ta c� th� gi�p g� cho ng߽i?")
		AddNumText(sceneId, x002197_g_scriptId, "Nh�n th�n binh s� c�p", 6, 0)
		AddNumText(sceneId, x002197_g_scriptId, "Luy�n h�n #GTh�n kh� 82", 6, 1)
		AddNumText(sceneId, x002197_g_scriptId, "Luy�n h�n #GTh�n kh� 92", 6, 2)
		AddNumText(sceneId, x002197_g_scriptId, "Dung luy�n #GTh�n kh� 102", 6, 3)
		AddNumText(sceneId, x002197_g_scriptId, "Ch� t�o #cFF0000Th��ng C� Th�n Kh�", 6, 4)
		--AddNumText(sceneId, x002197_g_scriptId, "Dung luy�n #cFF0000Si�u c�p Th�n Kh�", 6, 5)
		AddNumText(sceneId, x002197_g_scriptId, "T�y l�i ch� thu�c t�nh Th�n kh�", 6, 6)
		AddNumText(sceneId, x002197_g_ScriptId, "Ta ch� �i ngang th�i!", 8, 8 )							
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--**********************************
function x002197_OnEventRequest( sceneId, selfId, targetId, eventId )
	key = GetNumText()
	
	if key == 0 then
		BeginEvent(sceneId)     
			AddText(sceneId, "H�y l�a ch�n th�n kh� m� ng߽i mu�n nh�n l�y:")
			AddNumText(sceneId, x002197_g_scriptId, "Dung Kim L�c Nh�t �ao", 6, 501)
			AddNumText(sceneId, x002197_g_scriptId, "Thu Th�y V� Ng�n Ki�m", 6, 502)
			AddNumText(sceneId, x002197_g_scriptId, "V�n H�c T�ng Phong Phi�n", 6, 503)
			AddNumText(sceneId, x002197_g_scriptId, "B�ch H�i Ng�n ��o Ho�n", 6, 504)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 1 then
		BeginEvent(sceneId)     
			AddText(sceneId, "Luy�n h�n th�n kh� 82 s� t�o th�nh 1 th�n kh� 86, nguy�n li�u c�n c� #G1 th�n kh� 82 #Wv� s� ti�u hao #G10 th�n binh ph� c�p 1")
			AddText(sceneId, "H�y l�a ch�n th�n kh� m� ng߽i mu�n luy�n h�n:")
			AddNumText(sceneId, x002197_g_scriptId, "D�ch Thi�n Ph� T� Tr��ng", 6, 100)
			AddNumText(sceneId, x002197_g_scriptId, "X�ch Di�m C�u V�n �ao", 6, 101)
			AddNumText(sceneId, x002197_g_scriptId, "Tr�m �u �o�n S�u Th߽ng", 6, 102)
			AddNumText(sceneId, x002197_g_scriptId, "V�n Nh�t Long Uy�n Ki�m", 6, 103)
			AddNumText(sceneId, x002197_g_scriptId, "H�m Quang L�ng �nh Ki�m", 6, 104)
			AddNumText(sceneId, x002197_g_scriptId, "Chuy�n H�n Di�t Ph�ch C�u", 6, 105)
			AddNumText(sceneId, x002197_g_scriptId, "Thi�n Tinh Di�u D߽ng Ho�n", 6, 106)
			AddNumText(sceneId, x002197_g_scriptId, "To�i T�nh V� �nh Ho�n", 6, 107)
			AddNumText(sceneId, x002197_g_scriptId, "L�i Minh H�a Phi�n", 6, 108)
			AddNumText(sceneId, x002197_g_scriptId, "Tinh Di V� Ng�n Ki�m", 6, 110)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 2 then
		BeginEvent(sceneId)     
			AddText(sceneId, "Luy�n h�n th�n kh� 92 s� t�o th�nh 1 th�n kh� 96, nguy�n li�u c�n c� #G1 th�n kh� 92 #Wv� s� ti�u hao #G20 th�n binh ph� c�p 2")
			AddText(sceneId, "H�y l�a ch�n th�n kh� m� ng߽i mu�n luy�n h�n:")
			AddNumText(sceneId, x002197_g_scriptId, "D�ch Thi�n Ph� T� Tr��ng", 6, 200)
			AddNumText(sceneId, x002197_g_scriptId, "X�ch Di�m C�u V�n �ao", 6, 201)
			AddNumText(sceneId, x002197_g_scriptId, "Tr�m �u �o�n S�u Th߽ng", 6, 202)
			AddNumText(sceneId, x002197_g_scriptId, "V�n Nh�t Long Uy�n Ki�m", 6, 203)
			AddNumText(sceneId, x002197_g_scriptId, "H�m Quang L�ng �nh Ki�m", 6, 204)
			AddNumText(sceneId, x002197_g_scriptId, "Chuy�n H�n Di�t Ph�ch C�u", 6, 205)
			AddNumText(sceneId, x002197_g_scriptId, "Thi�n Tinh Di�u D߽ng Ho�n", 6, 206)
			AddNumText(sceneId, x002197_g_scriptId, "To�i T�nh V� �nh Ho�n", 6, 207)
			AddNumText(sceneId, x002197_g_scriptId, "L�i Minh H�a Phi�n", 6, 208)
			AddNumText(sceneId, x002197_g_scriptId, "Tinh Di V� Ng�n Ki�m", 6, 210)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 3 then
		BeginEvent(sceneId)     
			AddText(sceneId, "Ch� t�o th�n kh� 102 c�n #Gа T߶ng #Wt߽ng �ng v� #GLi�n nhung th�n ti�t c�p 7")
			AddText(sceneId, "H�y l�a ch�n th�n kh� m� ng߽i mu�n ch� t�o:")
			AddNumText(sceneId, x002197_g_scriptId, "��i �߶ng C�n Nh�c", 6, 300)
			AddNumText(sceneId, x002197_g_scriptId, "��i H� Long T߾c", 6, 301)
			AddNumText(sceneId, x002197_g_scriptId, "��i T�n Phong ��ch", 6, 302)
			AddNumText(sceneId, x002197_g_scriptId, "��i Th߽ng Tr�n �nh", 6, 303)
			AddNumText(sceneId, x002197_g_scriptId, "��i Chu Lam D�", 6, 304)
			AddNumText(sceneId, x002197_g_scriptId, "��i T�n Tinh Ng�n", 6, 305)
			AddNumText(sceneId, x002197_g_scriptId, "��i H�n Ho�ng C߽ng", 6, 306)
			AddNumText(sceneId, x002197_g_scriptId, "��i T�y Ng�ng S߽ng", 6, 307)
			AddNumText(sceneId, x002197_g_scriptId, "��i T�ng Qu�n S�m", 6, 308)
			AddNumText(sceneId, x002197_g_scriptId, "��i Y�n V�n Ch߽ng", 6, 310)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 4 then
		BeginEvent(sceneId)     
			AddText(sceneId, "Ch� t�o Th��ng C� Th�n Kh� c�n #G1 th�n kh� 102 #Wv� s� ti�u hao #G50 c�i Th�n Binh Ph� c�p 3")
			AddText(sceneId, "H�y l�a ch�n th�n kh� m� ng߽i mu�n ch� t�o:")
			AddNumText(sceneId, x002197_g_scriptId, "��t Ma Nh�t Th�n", 6, 400)
			AddNumText(sceneId, x002197_g_scriptId, "C�u Ti�u Di�m D߽ng", 6, 401)
			AddNumText(sceneId, x002197_g_scriptId, "H�ng Hoang Long V�", 6, 402)
			AddNumText(sceneId, x002197_g_scriptId, "��i Di�n Thi�n Huy�n", 6, 403)
			AddNumText(sceneId, x002197_g_scriptId, " Thi�n Tr߶ng Sinh", 6, 404)
			AddNumText(sceneId, x002197_g_scriptId, "L�c ��o Ho�ng Tuy�n", 6, 405)
			AddNumText(sceneId, x002197_g_scriptId, "V�n Th� Kh� Vinh", 6, 406)
			AddNumText(sceneId, x002197_g_scriptId, "V� T߾ng Tuy�t Tung", 6, 407)
			AddNumText(sceneId, x002197_g_scriptId, "Th�i C� Phi�u Linh", 6, 408)
			AddNumText(sceneId, x002197_g_scriptId, "M�t Th� V߽ng Quy�n", 6, 410)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 8 then
		x002197_CloseMe( sceneId, selfId )
	end
	
	if key >= 100 and key <= 110 then
		local ThanKhiID = {}
			ThanKhiID[100] = {10224913}
			ThanKhiID[101] = {10224915}
			ThanKhiID[102] = {10224917}
			ThanKhiID[103] = {10224919}
			ThanKhiID[104] = {10224921}
			ThanKhiID[105] = {10224923}
			ThanKhiID[106] = {10224925}
			ThanKhiID[107] = {10224927}
			ThanKhiID[108] = {10224929}
			ThanKhiID[110] = {10224931}
		BeginEvent(sceneId)
			AddText(sceneId,"Th�n kh� sau khi luy�n h�n:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,ThanKhiID[key][1],6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end
	
	if key >= 200 and key <= 210 then
		local ThanKhiID = {}
			ThanKhiID[200] = {10224914}
			ThanKhiID[201] = {10224916}
			ThanKhiID[202] = {10224918}
			ThanKhiID[203] = {10224920}
			ThanKhiID[204] = {10224922}
			ThanKhiID[205] = {10224924}
			ThanKhiID[206] = {10224926}
			ThanKhiID[207] = {10224928}
			ThanKhiID[208] = {10224930}
			ThanKhiID[210] = {10224932}
		BeginEvent(sceneId)
			AddText(sceneId,"Th�n kh� sau khi luy�n h�n:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,ThanKhiID[key][1],6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end

	if key >= 300 and key <= 310 then
		local ThanKhiID = {}
			ThanKhiID[300] = {10224935, 10224936, 10224937}
			ThanKhiID[301] = {10224938, 10224939, 10224940}
			ThanKhiID[302] = {10224941, 10224942, 10224943}
			ThanKhiID[303] = {10224944, 10224945, 10224946}
			ThanKhiID[304] = {10224947, 10224948, 10224949}
			ThanKhiID[305] = {10224950, 10224951, 10224952}
			ThanKhiID[306] = {10224953, 10224954, 10224955}
			ThanKhiID[307] = {10224956, 10224957, 10224958}
			ThanKhiID[308] = {10224959, 10224960, 10224961}
			ThanKhiID[310] = {10224962, 10224963, 10224964}
		BeginEvent(sceneId)
			AddText(sceneId,"Th�n kh� sau khi ch� t�o:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,ThanKhiID[key][1],6)
		AddRadioItemBonus(sceneId,ThanKhiID[key][2],6)
		AddRadioItemBonus(sceneId,ThanKhiID[key][3],6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end

	if key >= 400 and key <= 410 then
		local ThanKhiID = {}
			ThanKhiID[400] = {10224968, 10224969, 10224970}
			ThanKhiID[401] = {10224971, 10224972, 10224973}
			ThanKhiID[402] = {10224974, 10224975, 10224976}
			ThanKhiID[403] = {10224977, 10224978, 10224979}
			ThanKhiID[404] = {10224980, 10224981, 10224982}
			ThanKhiID[405] = {10224983, 10224984, 10224985}
			ThanKhiID[406] = {10224986, 10224987, 10224988}
			ThanKhiID[407] = {10224989, 10224990, 10224991}
			ThanKhiID[408] = {10224992, 10224993, 10224994}
			ThanKhiID[410] = {10224995, 10224996, 10224997}
		BeginEvent(sceneId)
			AddText(sceneId,"Th�n kh� sau khi luy�n h�n:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,ThanKhiID[key][1],6)
		AddRadioItemBonus(sceneId,ThanKhiID[key][2],6)
		AddRadioItemBonus(sceneId,ThanKhiID[key][3],6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end
	
	if key == 501 then
		BeginEvent(sceneId)
			--AddText(sceneId,"Th�n kh� sau khi luy�n h�n:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10300000,6)
		AddRadioItemBonus(sceneId,10300001,6)
		AddRadioItemBonus(sceneId,10300002,6)
		AddRadioItemBonus(sceneId,10300003,6)
		AddRadioItemBonus(sceneId,10300004,6)
		AddRadioItemBonus(sceneId,10300005,6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end

	if key == 502 then
		BeginEvent(sceneId)
			--AddText(sceneId,"Th�n kh� sau khi luy�n h�n:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10302000,6)
		AddRadioItemBonus(sceneId,10302001,6)
		AddRadioItemBonus(sceneId,10302002,6)
		AddRadioItemBonus(sceneId,10302003,6)
		AddRadioItemBonus(sceneId,10302004,6)
		AddRadioItemBonus(sceneId,10302005,6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end
	
	if key == 503 then
		BeginEvent(sceneId)
			--AddText(sceneId,"Th�n kh� sau khi luy�n h�n:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10304000,6)
		AddRadioItemBonus(sceneId,10304001,6)
		AddRadioItemBonus(sceneId,10304002,6)
		AddRadioItemBonus(sceneId,10304003,6)
		AddRadioItemBonus(sceneId,10304004,6)
		AddRadioItemBonus(sceneId,10304005,6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end
	
	if key == 504 then
		BeginEvent(sceneId)
			--AddText(sceneId,"Th�n kh� sau khi luy�n h�n:")
		EndEvent(sceneId)
		AddRadioItemBonus(sceneId,10305000,6)
		AddRadioItemBonus(sceneId,10305001,6)
		AddRadioItemBonus(sceneId,10305002,6)
		AddRadioItemBonus(sceneId,10305003,6)
		AddRadioItemBonus(sceneId,10305004,6)
		AddRadioItemBonus(sceneId,10305005,6)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x002197_g_ScriptId,0)
	end
end

function x002197_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x002197_CloseMe( sceneId, selfId )
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
end

function x002197_OnMissionSubmit(sceneId,selfId,targetId,missionScriptId,selectRadioId)
	local type = 0 --1,2,3,4--
	local ThanKhi86 = {10224913, 10224915, 10224917, 10224919, 10224921, 10224923, 10224925, 10224927, 10224929, 10224931}
	local ThanKhi96 = {10224914, 10224916, 10224918, 10224920, 10224922, 10224924, 10224926, 10224928, 10224930, 10224932}
	local ThanKhi102 = {10224935, 10224936, 10224937, 10224938, 10224939, 10224940, 10224941, 10224942, 10224943, 10224944, 10224945, 10224946, 10224947, 10224948, 10224949, 10224950, 10224951, 10224952, 10224953, 10224954, 10224955, 10224956, 10224957, 10224958, 10224959, 10224960, 10224961, 10224962, 10224963, 10224964}
	local ThanKhiTC = {10224968, 10224969, 10224970, 10224971, 10224972, 10224973, 10224974, 10224975, 10224976, 10224977, 10224978, 10224979, 10224980, 10224981, 10224982, 10224983, 10224984, 10224985, 10224986, 10224987, 10224988, 10224989, 10224990, 10224991, 10224992, 10224993, 10224994, 10224995, 10224996, 10224997}
	
	for i = 1, 30 do
		if selectRadioId == ThanKhi86[i] then
			type = 1
		elseif selectRadioId == ThanKhi96[i] then
			type = 2
		elseif selectRadioId == ThanKhi102[i] then
			type = 3
		elseif selectRadioId == ThanKhiTC[i] then
			type = 4
		end
	end

	--*****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		x002197_NotifyFailTips(sceneId,selfId,"H�y s�p x�p l�i 1 � tr�ng trong � ��o c� nh�!")
		return
	end
	
	if type == 1 then
		local TK82ID1 = LuaFnGetAvailableItemCount(sceneId, selfId, 10300004)
		local TK82ID2 = LuaFnGetAvailableItemCount(sceneId, selfId, 10302004)
		local TK82ID3 = LuaFnGetAvailableItemCount(sceneId, selfId, 10304004)
		local TK82ID4 = LuaFnGetAvailableItemCount(sceneId, selfId, 10305004)
		local TBPLV1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30505816)
		if TK82ID1 + TK82ID2 + TK82ID3 + TK82ID4 < 1 then
			x002197_NotifyFailTips(sceneId,selfId,"Tr�n ng߶i ng߽i kh�ng c� th�n kh� 82")
			return
		end
		if TBPLV1 < 10 then
			x002197_NotifyFailTips(sceneId,selfId,"Ng߽i kh�ng c� �� 10 Th�n Binh Ph� c�p 1 � luy�n h�n")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,30505816,10)
	end

	if type == 2 then
		local TK92ID1 = LuaFnGetAvailableItemCount(sceneId, selfId, 10300005)
		local TK92ID2 = LuaFnGetAvailableItemCount(sceneId, selfId, 10302005)
		local TK92ID3 = LuaFnGetAvailableItemCount(sceneId, selfId, 10304005)
		local TK92ID4 = LuaFnGetAvailableItemCount(sceneId, selfId, 10305005)
		local TBPLV2 = LuaFnGetAvailableItemCount(sceneId, selfId, 30505817)
		if TK92ID1 + TK92ID2 + TK92ID3 + TK92ID4 < 1 then
			x002197_NotifyFailTips(sceneId,selfId,"Tr�n ng߶i ng߽i kh�ng c� th�n kh� 92")
			return
		end
		if TBPLV2 < 20 then
			x002197_NotifyFailTips(sceneId,selfId,"Ng߽i kh�ng c� �� 20 Th�n Binh Ph� c�p 2 � luy�n h�n")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,30505817,20)
	end

	if type == 3 then
		local ThanKhi102 = {}
			ThanKhi102[10224935] = {30302521}
			ThanKhi102[10224936] = {30302522}
			ThanKhi102[10224937] = {30302523}
			ThanKhi102[10224938] = {30302500}
			ThanKhi102[10224939] = {30302501}
			ThanKhi102[10224940] = {30302502}
			ThanKhi102[10224941] = {30302509}
			ThanKhi102[10224942] = {30302510}
			ThanKhi102[10224943] = {30302511}
			ThanKhi102[10224944] = {30302503}
			ThanKhi102[10224945] = {30302504}
			ThanKhi102[10224946] = {30302505}
			ThanKhi102[10224947] = {30302506}
			ThanKhi102[10224948] = {30302507}
			ThanKhi102[10224949] = {30302508}
			ThanKhi102[10224950] = {30302515}
			ThanKhi102[10224951] = {30302516}
			ThanKhi102[10224952] = {30302517}
			ThanKhi102[10224953] = {30302512}
			ThanKhi102[10224954] = {30302513}
			ThanKhi102[10224955] = {30302514}
			ThanKhi102[10224956] = {30302518}
			ThanKhi102[10224957] = {30302519}
			ThanKhi102[10224958] = {30302520}
			ThanKhi102[10224959] = {30302524}
			ThanKhi102[10224960] = {30302525}
			ThanKhi102[10224961] = {30302526}
			ThanKhi102[10224962] = {30302573}
			ThanKhi102[10224963] = {30302574}
			ThanKhi102[10224964] = {30302575}
		
		local DoTuongID = ThanKhi102[selectRadioId][1]
		local DoTuong = LuaFnGetAvailableItemCount(sceneId, selfId, DoTuongID)
		local LNTT7 = LuaFnGetAvailableItemCount(sceneId, selfId, 30505906)
		if DoTuong < 1 then
			x002197_NotifyFailTips(sceneId,selfId,"Ng߽i kh�ng c� � t߶ng t߽ng �ng v�i th�n kh� n�y.")
			return
		end
		if LNTT7 < 1 then
			x002197_NotifyFailTips(sceneId,selfId,"Ng߽i kh�ng c� Li�n Nhung Th�n Ti�t c�p 7.")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,DoTuongID,1)
		LuaFnDelAvailableItem(sceneId,selfId,30505906,1)
	end
	
	if type == 4 then
		local TK1 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224935)
		local TK2 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224936)
		local TK3 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224937)
		local TK4 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224938)
		local TK5 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224939)
		local TK6 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224940)
		local TK7 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224941)
		local TK8 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224942)
		local TK9 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224943)
		local TK10 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224944)
		local TK11 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224945)
		local TK12 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224946)
		local TK13 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224947)
		local TK14 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224948)
		local TK15 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224949)
		local TK16 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224950)
		local TK17 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224951)
		local TK18 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224952)
		local TK19 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224953)
		local TK20 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224954)
		local TK21 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224955)
		local TK22 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224956)
		local TK23 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224957)
		local TK24 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224958)
		local TK25 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224959)
		local TK26 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224960)
		local TK27 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224961)
		local TK28 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224962)
		local TK29 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224963)
		local TK30 = LuaFnGetAvailableItemCount(sceneId, selfId, 10224964)
		
		local TK102ID1 = TK1 + TK2 + TK3 + TK4 + TK5 + TK6 + TK7 + TK8 + TK9 + TK10
		local TK102ID2 = TK11 + TK12 + TK13 + TK14 + TK15 + TK16 + TK17 + TK18 + TK19 + TK20
		local TK102ID3 = TK21 + TK22 + TK23 + TK24 + TK25 + TK26 + TK27 + TK28 + TK29 + TK30
		local TBPLV3 = LuaFnGetAvailableItemCount(sceneId, selfId, 30505908)
		
		if TK102ID1 + TK102ID2 + TK102ID3 < 1 then
			x002197_NotifyFailTips(sceneId,selfId,"Ng߽i v�n ch�a c� th�n kh� 102")
			return
		end
		if TBPLV3 < 50 then
			x002197_NotifyFailTips(sceneId,selfId,"Ng߽i ch�a c� �� 50 Th�n Binh Ph� c�p 3")
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,30505908,50)
	end

	TryRecieveItem(sceneId,selfId,selectRadioId,1);
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	x002197_NotifyFailTips(sceneId,selfId,"Nh�n th߷ng th�nh c�ng!")
	--*****************--
	
end