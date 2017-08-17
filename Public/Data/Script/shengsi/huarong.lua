-- �콱NPC

x892013_g_scriptId = 892013

x892013_g_MonsterId = 13560    ---npc����ID
x892013_g_CreateId = 13528     ----�����Ĺ���ID
x892013_g_posX = 21            ----������������x
x892013_g_posY = 42            ----������������y
x892013_g_AIScript = 255       ----�������＼�ܶ�Ӧ�ļ�ID
x892013_g_Title = "Thi�n Anh Tinh"       ----��������ƺ�


--**********************************
--�¼��������
--**********************************
function x892013_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "L�i ��i sinh t� kh�ng ph�i l� n�i mu�n �n th� �n mu�n �i th� �i ��u nha..." )
		AddNumText( sceneId, x892013_g_scriptId, "#c00ff00Quy�t chi�n Hoa Dung", 6, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892013_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 210 then
	
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
			strText = "S� l��ng qu�i v�t hi�n t�i: "..n..". D߾i 170 con c� th� �n ��y l�m m�i l�i t� �u."
			AddText( sceneId, strText )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
   		else 
			BeginEvent( sceneId )
			LuaFnCreateMonster(531, 39339, 30, 30, 17, 0, 402030)
				AddText( sceneId, "L�m m�i th�nh c�ng, s� l��ng qu�i v�t hi�n t�i l� : "..n.."." )
				AddText( sceneId, strText )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
    elseif GetNumText() == 200 then
	
		if GetTeamLeader(sceneId,selfId) ~= selfId then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_07}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local nCount = GetMonsterCount(sceneId)
		for i=0, nCount-1  do
			local nObjId = GetMonsterObjID(sceneId, i)
			local MosDataID = GetMonsterDataID( sceneId, nObjId )
			if MosDataID == x892013_g_CreateId then
               	BeginEvent( sceneId ) 
	        	AddText( sceneId, "#G�� b�t �u chi�n �u, kh�ng th� l�p l�i thao t�c n�y." )
              	EndEvent( sceneId )
               	DispatchEventList( sceneId, selfId, targetId )
				return 
			end
		end
		
		CallScriptFunction( x892013_g_scriptId, "TipAllHuman", sceneId, "B�t �u chi�n �u." )
		local nMonsterNum = GetMonsterCount(sceneId)
		local Monsters = x892013_g_MonsterId
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if Monsters == GetMonsterDataID( sceneId, MonsterId ) then
				LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
				SetCharacterDieTime( sceneId, MonsterId, 1000 )
			end
		end

		local posX = x892013_g_posX
		local posY = x892013_g_posY
		local AIScript = x892013_g_AIScript
		local Title = x892013_g_Title

		local MstId = LuaFnCreateMonster(sceneId, x892013_g_CreateId, posX, posY, 27, AIScript, 501000);
		SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
		SetUnitReputationID(sceneId, selfId, MstId, 29)
		SetNPCAIType(sceneId, MstId, 1)
		if Title ~= "" then
			SetCharacterTitle(sceneId, MstId, Title)
		end
		LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		
	end
	
end

--**********************************
--��ʾ���и��������....
--**********************************
function x892013_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end