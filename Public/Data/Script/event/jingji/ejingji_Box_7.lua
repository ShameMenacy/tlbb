-- 210537 ����
-- ��ȡbuff�ı���

x210537_g_scriptId = 210537


--��ӵ�е��¼�ID�б���ID����ʵ��
x210537_g_LimitiBuffCollectionID = 75;

--�ռ�������50%������� 1 ��
x210537_g_LootItem_1 = {10470050,10470051,
}

--15����ʯ��100%������� 1 ��
x210537_g_LootItem_2 = {10470052,10470053,
}

--�ռ����30%������� 1 ��
x210537_g_LootItem_3 = {10470054,10470055,
}

--�޵�buff
x210537_g_BuffId_1 = 54

--��������buff
x210537_g_BuffId_2 = 8046

--��ɢ�����е�BUFF��Ч��
x210537_g_BuffId_3 = 8055	--�������𣨿�����ɢ��

-- �ս����� ˫����ˢ
x210537_g_Npc_9_1={	{id=39779,x=81,y=99,script=210539,pp=4,camp=110,ai=21,af=253},
										{id=39779,x=82,y=98,script=210539,pp=4,camp=110,ai=21,af=253},

}

--��������BuffID
x210537_g_BuffId_4 = 8056	--�������𣨿������ߣ�

--Code Check Only
--QUALITY_CREATE_BY_BOSS =nil

--**********************************
--�¼��б�
--**********************************
function x210537_OnDefaultEvent( sceneId, selfId, targetId )
	
end

--**********************************
--���⽻��:�����ж�
--**********************************
function x210537_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- �������ϵ�buff
	local bOk = x210537_IsCanOpenBox( sceneId,activatorId )
	
	if bOk == 0  then
    BeginEvent(sceneId)
      AddText(sceneId,"�����ڲ��ܿ���������䡣");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
	end
	-- ��ɢ�����е�BUFF�������������Buff
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210537_g_BuffId_3, 0);
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210537_g_BuffId_4, 0);

	if GetUnitCampID(sceneId, activatorId, activatorId) < 500   then
    BeginEvent(sceneId)
      AddText(sceneId,"�����ڵ�ս����Ӫ����ȷ�����ܿ������䡣");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
		bOk = 0
	end
	
	if bOk == 1  then
		local str = "#G[����̨]#W" .. GetName(sceneId, activatorId) .."#P������ͼ�򿪱����أ�"
		CallScriptFunction((200060), "Duibai",sceneId, "", "", str)
	end
	
	return bOk
end

--**********************************
-- ��⵱ǰ������ϵ�buff���ܲ��ܿ�������
--**********************************
function x210537_IsCanOpenBox( sceneId,activatorId )
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId,activatorId, x210537_g_BuffId_2)==1  then
		return 0
	end

	return 0==LuaFnHaveImpactInSpecificCollection(sceneId, activatorId, x210537_g_LimitiBuffCollectionID)
end

--**********************************
--���⽻��:���ĺͿ۳�����
--**********************************
function x210537_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ɹ���Ч����
--**********************************
function x210537_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- selfId == ����Id
	-- activatorId == ������Id
	
	local x
	local z
	
	x,z = GetWorldPos(sceneId, selfId)
	
	local nCount = GetMonsterCount(sceneId)
	local bDelOk = 0
	for i=0, nCount-1  do
		local tempCamp = random(449) + 50
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == 39777 then
			bDelOk = 1
			LuaFnDeleteMonster(sceneId, nObjId)
		       nObjID = LuaFnCreateMonster(sceneId, 39779, 81, 99, 1, 253, 210547);
			SetCharacterTitle(sceneId, nObjID, "�ұ���¥װ��");
		       SetMonsterFightWithNpcFlag(sceneId, nObjID, 0)
		       SetUnitCampID(sceneId, nObjID, nObjID, tempCamp)
		end
	end

	-- �������ɹ������һ�������
	local nItemCount = 2
	local nItemId_1
	local nItemId_2
	local nItemId_3

	if random(1000) <= 125  then
		nItemCount = 3
		nItemId_1 = x210537_g_LootItem_1[random( getn(x210537_g_LootItem_1))]
	end

	if random(1000) <= 50  then
		nItemCount = 4
	       nItemId_3 = x210537_g_LootItem_3[random( getn(x210537_g_LootItem_3) )]
	end	

	nItemId_2 = x210537_g_LootItem_2[random( getn(x210537_g_LootItem_2) )]
	
	
	if bDelOk == 1  then
		local nBoxId = DropBoxEnterScene(	x,z,sceneId )
		if nBoxId > -1  then
			if nItemCount == 3  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,
								nItemId_1,nItemId_2,nItemId_2,nItemId_2)
			elseif nItemCount == 2  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,3,
								nItemId_2,nItemId_2,nItemId_2)
			elseif nItemCount == 4  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,
								nItemId_2,nItemId_3,nItemId_2,nItemId_2)
			end
			
			-- ���������󶨸��ƶ����
			SetItemBoxOwner(sceneId, nBoxId, LuaFnGetGUID(sceneId,activatorId))

			-- ����ϵͳ����
			local nCurHour = GetHour()
			if nCurHour==0 or nCurHour==2 or nCurHour==4 or
				 nCurHour==6 or nCurHour==8 or nCurHour==10 or
				 nCurHour==12 or nCurHour==14 or nCurHour==16 or
				 nCurHour==18 or nCurHour==20 or nCurHour==22  then
				
					nCurHour = nCurHour + 2
			else
					nCurHour = nCurHour + 1
			
			end
			
			if nCurHour >= 2 and nCurHour < 10  then
				nCurHour = 10
			end
			
			if nCurHour == 24  then
				nCurHour = 0
			end
			
			--#P [����]�ھ����󺰣�����Ӣ���ǣ�ǿ���AAA�Ѿ��������������ı��䣡����XXX����������̨������������֮λ�ɣ�
			local str = format("#Y�ھ���#cff99cc�󺰣�����Ӣ���ǣ�ǿ���#{_INFOUSR%s}#cff99cc�Ѿ����˾������ı��䣡�������Ǹ��յı���,��ӭ��λӢ��#Y%s�������ᱦ��",GetName(sceneId,activatorId),nCurHour)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
			
		end
	end
	
	-- �������¼�����������־
	LuaFnAuditPlayerBehavior(sceneId, activatorId, "������������");

	
	-- ��������һ��buff
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210537_g_BuffId_1, 100 )
	
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210537_g_BuffId_2, 100 )
										
	x210537_DealExp(sceneId, activatorId)

	x210537_TipAllHuman(sceneId, "���裡�����������˲����ս��ߵı���,�˹��ﳬ����̬,���ע����á�")
	x210537_TipAllHuman(sceneId, "���裡�����������˲����ս��ߵı���,�˹��ﳬ����̬,���ע����á�")
	x210537_TipAllHuman(sceneId, "���裡�����������˲����ս��ߵı���,�˹��ﳬ����̬,���ע����á�")
	x210537_TipAllHuman(sceneId, "���裡�����������˲����ս��ߵı���,�˹��ﳬ����̬,���ע����á�")
	x210537_TipAllHuman(sceneId, "���裡�����������˲����ս��ߵı���,�˹��ﳬ����̬,���ע����á�")
	x210537_TipAllHuman(sceneId, "���裡�����������˲����ս��ߵı���,�˹��ﳬ����̬,���ע����á�")
	
	return 1
end

--**********************************
--���⽻��:������ÿʱ������Ч����
--**********************************
function x210537_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ʼʱ�����⴦��
--**********************************
function x210537_OnActivateActionStart( sceneId, selfId, activatorId )
	--PrintNum(777)
	return 1
end

--**********************************
--���⽻��:��������ʱ�����⴦��
--**********************************
function x210537_OnActivateCancel( sceneId, selfId, activatorId )
	local str = "#G[����̨]#W" .. GetName(sceneId,activatorId) .. "#P�򿪱����Ŭ�����ܴ��ɣ�"
	CallScriptFunction((200060), "Duibai",sceneId, "", "", str)
	return 0
end

function x210537_CreateMonster_7_3(sceneId)
	local posX, posZ;
	posX, posZ = LuaFnGetWorldPos(sceneId, selfId)
	for i, Npc in x210537_g_Npc_9_1  do
		local nNpcId = x210537_CreateNpc(sceneId, Npc.id, posX, posZ, Npc.ai, Npc.af, Npc.script)
		SetUnitCampID(sceneId,nNpcId, nNpcId, Npc.camp)
		SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
		SetPatrolId(sceneId, nNpcId, Npc.pp)
	end
end

--**********************************
--��ʾ���и��������
--**********************************
function x210537_TipAllHuman( sceneId, Str )
	-- ��ó�����ͷ��������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û���˵ĳ�����ʲô������
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end
--**********************************
--���⽻��:�����ж�ʱ�����⴦��
--**********************************
function x210537_OnActivateInterrupt( sceneId, selfId, activatorId )
	
	return 0
end

function x210537_OnActivateInterrupt( sceneId, selfId, activatorId )

end

function x210537_DealExp(sceneId, activatorId)

	local nPlayerCamp = GetUnitCampID(sceneId, activatorId, activatorId)

	-- ���������ͬʱ������Exp
	local nHumanIdList = {}
	
	for i=1, 10  do
		nHumanIdList[i] = -1
	end
	
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	local j=1
	for i=0, nHumanCount-1  do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if GetUnitCampID(sceneId, nHumanId, nHumanId) == nPlayerCamp   then
			nHumanIdList[j] = nHumanId
			j = j+1
		end
	end
	
	j = j-1
	
	for i=1, j  do
		if nHumanIdList[i] ~= -1  then
			AddExp(sceneId, nHumanIdList[i], floor(10000000/j))
		end
	end
	
	for i=0, nHumanCount-1  do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if GetUnitCampID(sceneId, nHumanId, nHumanId) ~= nPlayerCamp   then
			AddExp(sceneId, nHumanId, floor(10000000/(nHumanCount-j)))
		end
	end
	
end

--���飬
--�Ϳ����������ͬ��Ӫ����ƽ�� 10 ��
--�ڳ��ĳ���Щ���������ƽ�� 10 ��
