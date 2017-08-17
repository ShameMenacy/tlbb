--Vo Hon
x002201_g_scriptId = 002201


function x002201_OnDefaultEvent( sceneId, selfId, targetId)
	BeginEvent(sceneId)     
		AddText(sceneId,"Th� gian l� nh�, ng߽i c� mu�n c�ng ta ngao du thi�n h� hay kh�ng?")
		AddNumText(sceneId, x002201_g_scriptId, "Quay v� #GM�n Ph�i", 13, 1)
		AddNumText(sceneId, x002201_g_scriptId, "Ъn c�c #GTh�nh Th�", 13, 2)
		AddNumText(sceneId, x002201_g_scriptId, "Ъn n�i #GLuy�n C�p", 13, 3)
		AddNumText(sceneId, x002201_g_scriptId, "Th�o ph�t #GC߶ng ��o", 13, 5)
		AddNumText(sceneId, x002201_g_scriptId, "Ta mu�n � l�i n�i ��y", 0, 6)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--**********************************
function x002201_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	if key == 1 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ng߽i mu�n �n m�n ph�i n�o?")
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - Thi�u L�m", 13, 10)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - Minh Gi�o", 13, 11)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - C�i Bang", 13, 12)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - V� �ang", 13, 13)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - Nga My", 13, 14)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - Tinh T�c", 13, 15)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - Thi�n Long", 13, 16)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - Thi�n S�n", 13, 17)
			AddNumText(sceneId, x002201_g_scriptId, "M�n Ph�i - Ti�u Dao", 13, 18)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key == 2 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ng߽i mu�n �n th�nh th� n�o?")
			AddNumText(sceneId, x002201_g_scriptId, "Th�nh Th� - ��i L�", 13, 26)
			AddNumText(sceneId, x002201_g_scriptId, "Th�nh Th� - L�c D߽ng", 13, 20)
			AddNumText(sceneId, x002201_g_scriptId, "Th�nh Th� - L�c D߽ng - C�u Ch�u Th߽ng H�i", 13, 21)
			AddNumText(sceneId, x002201_g_scriptId, "Th�nh Th� - T� Ch�u", 13, 22)
			AddNumText(sceneId, x002201_g_scriptId, "Th�nh Th� - T� Ch�u - Thi�t T��ng Ph�", 13, 23)
			AddNumText(sceneId, x002201_g_scriptId, "Th�nh Th� - L�u Lan", 13, 24)
			AddNumText(sceneId, x002201_g_scriptId, "Th�nh Th� - Th�c H� C� Tr�n", 13, 25)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key == 3 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ng߽i mu�n �n n�i n�o?")
			AddNumText(sceneId, x002201_g_scriptId, "Y�n V߽ng C� M�", 13, 30)
			AddNumText(sceneId, x002201_g_scriptId, "T�n Ho�ng иa Cung", 13, 31)
			AddNumText(sceneId, x002201_g_scriptId, "Cao X߽ng M� Cung", 13, 32)
			AddNumText(sceneId, x002201_g_scriptId, "H�a Di�m C�c", 13, 33)
			AddNumText(sceneId, x002201_g_scriptId, "Th�p Kh�c L�p M� Can", 13, 34)
			AddNumText(sceneId, x002201_g_scriptId, "C�n L�n S�n", 13, 35)
			AddNumText(sceneId, x002201_g_scriptId, "H�n Huy�t L�nh", 13, 36)
			AddNumText(sceneId, x002201_g_scriptId, "T�t M� Nh� H�n", 13, 37)
			AddNumText(sceneId, x002201_g_scriptId, "Th�ng Thi�n Th�p иa Cung", 13, 38)
			AddNumText(sceneId, x002201_g_scriptId, "Th�ng Thi�n Th�p T�ng 1", 13, 39)
			AddNumText(sceneId, x002201_g_scriptId, "Th�ng Thi�n Th�p T�ng 2", 13, 40)
			AddNumText(sceneId, x002201_g_scriptId, "Th�ng Thi�n Th�p T�ng 3", 13, 41)
			AddNumText(sceneId, x002201_g_scriptId, "��nh Th�ng Thi�n Th�p", 13, 42)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key == 5 then
		BeginEvent(sceneId)     
			AddText(sceneId,"Ng߽i mu�n �n n�i n�o?")
			AddNumText(sceneId, x002201_g_scriptId, "Gi�i c�u #GQu�n Thi�n Th�nh", 13, 51)
			AddNumText(sceneId, x002201_g_scriptId, "Gi�i c�u #GLa Ph� Th�nh", 13, 52)
			AddNumText(sceneId, x002201_g_scriptId, "Gi�i c�u #GTri�u Kinh Th�nh", 13, 53)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
	end
	
	if key >= 10 and key <= 19 then
		local MonPhai = {}
			MonPhai[10] = {9, 96, 127}
			MonPhai[11] = {11, 98, 167}
			MonPhai[12] = {10, 91, 116}
			MonPhai[13] = {12, 103, 140}
			MonPhai[14] = {15, 89, 139}
			MonPhai[15] = {16, 96, 152}
			MonPhai[16] = {13, 96, 120}
			MonPhai[17] = {17, 95, 120}
			MonPhai[18] = {14, 67, 145}
			
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,MonPhai[key][1],MonPhai[key][2],MonPhai[key][3])
	end
	
	if key >= 20 and key <= 29 then
		local ThanhThi = {}
			ThanhThi[20] = {0, 233, 321}
			ThanhThi[21] = {0, 325, 270}
			ThanhThi[22] = {1, 202, 257}
			ThanhThi[23] = {1, 331, 226}
			ThanhThi[24] = {186, 286, 129}
			ThanhThi[25] = {420, 200, 211}
			ThanhThi[26] = {2, 252, 124}
		
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,ThanhThi[key][1],ThanhThi[key][2],ThanhThi[key][3])
	end
	
	if key >= 30 and key <= 42 then
		local MapTrain = {}
			MapTrain[30] = {159, 67, 90}
			MapTrain[31] = {400, 226, 220}
			MapTrain[32] = {520, 100, 100}
			MapTrain[33] = {519, 71, 29}
			MapTrain[34] = {427, 36, 23}
			MapTrain[35] = {541, 110, 20}
			MapTrain[36] = {432, 92, 92}
			MapTrain[37] = {536, 40, 220}
			MapTrain[38] = {544, 255, 375}
			MapTrain[39] = {545, 255, 375}
			MapTrain[40] = {546, 255, 355}
			MapTrain[41] = {547, 260, 300}
			MapTrain[42] = {548, 260, 274}
			
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,MapTrain[key][1],MapTrain[key][2],MapTrain[key][3])
	end

	if key >= 50 and key <= 59 then
		local CuongDao = {}
			CuongDao[51] = {560, 105, 115}
			CuongDao[52] = {561, 95, 150}
			CuongDao[53] = {562, 155, 145}

		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,CuongDao[key][1],CuongDao[key][2],CuongDao[key][3])
	end

	if key == 6 then
		x002201_CloseMe( sceneId, selfId )
	end
end

function x002201_CloseMe( sceneId, selfId )
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
end


