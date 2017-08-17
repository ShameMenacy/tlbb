-- �콱NPC

x454546_g_scriptId = 454546

x454546_g_MonsterId = 42106    ---npc����ID
x454546_g_CreateId = 42210     ----�����Ĺ���ID
x454546_g_posX = 64            ----������������x
x454546_g_posY = 109            ----������������y
x454546_g_AIScript = 302       ----�������＼�ܶ�Ӧ�ļ�ID
x454546_g_Title = "��ɱ��"       ----��������ƺ�


--**********************************
--�¼��������
--**********************************
function x454546_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "������̨������ô�ô��ģ�ÿսʤ������ÿһ��BOSS�������Ի�ø߼�������Ʒ��Ҫע��Σ��Ŷ!" )
		AddNumText( sceneId, x454546_g_scriptId, "#c00ff00��ս �����", 6, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x454546_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 210 then
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
   		strText = "��ǰ��������Ϊ:"..n.."��,��������170���������ֶ�ˢ��,��"
  		AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
   		else 
		BeginEvent( sceneId )
		LuaFnCreateMonster(531, 39339, 30, 30, 17, 0, 402030)
                AddText( sceneId, "ˢ�³ɹ���������Һ͹���������Ϊ:"..n.."����" )
           	AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		end
  
        elseif GetNumText() == 200 then

	CallScriptFunction( x454546_g_scriptId, "TipAllHuman", sceneId, "ս����ʼ" )
	local nMonsterNum = GetMonsterCount(sceneId)
	local Monsters = x454546_g_MonsterId
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if Monsters == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

	local posX = x454546_g_posX
	local posY = x454546_g_posY
	local AIScript = x454546_g_AIScript
	local Title = x454546_g_Title

	local MstId = LuaFnCreateMonster(sceneId, x454546_g_CreateId, posX, posY, 1, AIScript, 0);
	SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
	SetUnitReputationID(sceneId, selfId, MstId, 28)
	SetNPCAIType(sceneId, MstId, 1)
	if Title ~= "" then
		SetCharacterTitle(sceneId, MstId, Title)
	end
	LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

	 end
end

--**********************************
--��ʾ���и��������....
--**********************************
function x454546_TipAllHuman( sceneId, Str )

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