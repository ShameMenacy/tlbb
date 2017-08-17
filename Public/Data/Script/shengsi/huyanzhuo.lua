-- �콱NPC

x892020_g_scriptId = 892020

x892020_g_MonsterId = 13557    ---npc����ID
x892020_g_CreateId = 13501     ----�����Ĺ���ID
x892020_g_posX = 28            ----������������x
x892020_g_posY = 23            ----������������y
x892020_g_AIScript = 256       ----�������＼�ܶ�Ӧ�ļ�ID
x892020_g_Title = "Thi�n Uy Tinh"       ----��������ƺ�


--**********************************
--�¼��������
--**********************************
function x892020_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "L�i ��i sinh t� kh�ng ph�i l� n�i mu�n �n th� �n mu�n �i th� �i ��u nha..." )
		AddNumText( sceneId, x892020_g_scriptId, "#c00ff00Quy�t chi�n H� Di�n Tr�c", 6, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x892020_OnEventRequest( sceneId, selfId, targetId, eventId )
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
	--�ǲ��Ƕӳ�....
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
		if MosDataID == x892020_g_CreateId then
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#G�� b�t �u chi�n �u, kh�ng th� l�p l�i thao t�c n�y." )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
			return 
		end
	end
	CallScriptFunction( x892020_g_scriptId, "TipAllHuman", sceneId, "B�t �u chi�n �u." )
	local nMonsterNum = GetMonsterCount(sceneId)
	local Monsters = x892020_g_MonsterId
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if Monsters == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

	local posX = x892020_g_posX
	local posY = x892020_g_posY
	local AIScript = x892020_g_AIScript
	local Title = x892020_g_Title

	local MstId = LuaFnCreateMonster(sceneId, x892020_g_CreateId, posX, posY, 27, AIScript, 501000);
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
function x892020_TipAllHuman( sceneId, Str )

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