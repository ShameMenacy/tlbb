-- 210534 ����
-- ��ȡbuff�ı���

x210534_g_scriptId = 210534


--��ӵ�е��¼�ID�б���ID����ʵ��
x210534_g_LimitiBuffCollectionID = 75;

--�߼�ʱװ��50%������� 1 ��
x210534_g_LootItem_1 = {
50813004,50802005,50802006,50802007,50802008,                        
}

--4����װ��100%������� 1 ��
x210534_g_LootItem_2 = {
39910059,10553074,10553075,38001100,
}

-----------------------ѽѽ�޸�Ϊʯͷ
x210534_g_LootItem_3 = {10155002}

--x210534_g_LootItem_3 = {10421018}

--�޵�buff
x210534_g_BuffId_1 = 54

--��������buff
x210534_g_BuffId_2 = 8046

--��ɢ�����е�BUFF��Ч��
x210534_g_BuffId_3 = 8055	--�������𣨿�����ɢ��


--��������BuffID
x210534_g_BuffId_4 = 8056	--�������𣨿������ߣ�

--Code Check Only
--QUALITY_CREATE_BY_BOSS =nil

--**********************************
--�¼��б�
--**********************************
function x210534_OnDefaultEvent( sceneId, selfId, targetId )
	
end

--**********************************
--���⽻��:�����ж�
--**********************************
function x210534_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- �������ϵ�buff
	local bOk = x210534_IsCanOpenBox( sceneId,activatorId )
	
	if bOk == 0  then
    BeginEvent(sceneId)
      AddText(sceneId,"�����ڲ��ܿ���������䡣");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
	end
	-- ��ɢ�����е�BUFF�������������Buff
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210534_g_BuffId_3, 0);
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, activatorId, x210534_g_BuffId_4, 0);

	if GetUnitCampID(sceneId, activatorId, activatorId) < 500   then
    BeginEvent(sceneId)
      AddText(sceneId,"�����ڵ�ս����Ӫ����ȷ�����ܿ������䡣");
    EndEvent(sceneId)
    DispatchMissionTips(sceneId,activatorId,selfId)
		bOk = 0
	end
	
	if bOk == 1  then
		local str = "#G[����̨]#W" .. GetName(sceneId, activatorId) .."#cff99cc������ͼ�򿪱����أ�"
		CallScriptFunction((200060), "Duibai",sceneId, "", "", str)
	end
	
	return bOk
end

--**********************************
-- ��⵱ǰ������ϵ�buff���ܲ��ܿ�������
--**********************************
function x210534_IsCanOpenBox( sceneId,activatorId )
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId,activatorId, x210534_g_BuffId_2)==1  then
		return 0
	end

	return 0==LuaFnHaveImpactInSpecificCollection(sceneId, activatorId, x210534_g_LimitiBuffCollectionID)
end

--**********************************
--���⽻��:���ĺͿ۳�����
--**********************************
function x210534_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ɹ���Ч����
--**********************************
function x210534_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- selfId == ����Id
	-- activatorId == ������Id
	
	local x
	local z
	
	x,z = GetWorldPos(sceneId, selfId)
	
	local nCount = GetMonsterCount(sceneId)
	local bDelOk = 0
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		if GetName(sceneId, nObjId) == "��ɫ����"  then
			bDelOk = 1
			LuaFnDeleteMonster(sceneId, nObjId)
		end
	end
	
	-- �������ɹ������һ�������
	local nItemCount = 2
	local nItemId_1
	local nItemId_2
	local nItemId_3

	if random(1000) <= 25  then
		nItemCount = 3
		nItemId_1 = x210534_g_LootItem_1[random( getn(x210534_g_LootItem_1))]
	end
	
	nItemId_2 = x210534_g_LootItem_2[random( getn(x210534_g_LootItem_2) )]
	
	nItemId_3 = x210534_g_LootItem_3[1]
	
	if bDelOk == 1  then
		local nBoxId = DropBoxEnterScene(	x,z,sceneId )
		if nBoxId > -1  then
			if nItemCount == 3  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,3,
								nItemId_1,nItemId_2,nItemId_3)
			elseif nItemCount == 2  then
				AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,2,
								nItemId_2,nItemId_3)
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
			
			--#cff99cc [����]�ھ����󺰣�����Ӣ���ǣ�ǿ���AAA�Ѿ��������������ı��䣡����XXX����������̨������������֮λ�ɣ�
			local str = format("#Y�ھ���#cff99cc�󺰣�����Ӣ���ǣ�ǿ���#{_INFOUSR%s}#cff99cc�Ѿ��������������ı��䣡����#Y%s��45��#cff99cc����#G����̨#cff99cc������������֮λ�ɣ�",GetName(sceneId,activatorId),nCurHour)
			BroadMsgByChatPipe(sceneId, 0, str, 4)
			
		end
	end
	
	-- �������¼�����������־
	LuaFnAuditPlayerBehavior(sceneId, activatorId, "������������");
	
	-- ��������һ��buff
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210534_g_BuffId_1, 100 )
	
	LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x210534_g_BuffId_2, 100 )
										
	x210534_DealExp(sceneId, activatorId)
	
	return 1
end

--**********************************
--���⽻��:������ÿʱ������Ч����
--**********************************
function x210534_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ʼʱ�����⴦��
--**********************************
function x210534_OnActivateActionStart( sceneId, selfId, activatorId )
	--PrintNum(777)
	return 1
end

--**********************************
--���⽻��:��������ʱ�����⴦��
--**********************************
function x210534_OnActivateCancel( sceneId, selfId, activatorId )
	local str = "#G[����̨]#W" .. GetName(sceneId,activatorId) .. "#cff99cc�򿪱����Ŭ�����ܴ��ɣ�"
	CallScriptFunction((200060), "Duibai",sceneId, "", "", str)
	return 0
end

--**********************************
--���⽻��:�����ж�ʱ�����⴦��
--**********************************
function x210534_OnActivateInterrupt( sceneId, selfId, activatorId )
	
	return 0
end

function x210534_OnActivateInterrupt( sceneId, selfId, activatorId )

end

function x210534_DealExp(sceneId, activatorId)

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
			AddExp(sceneId, nHumanIdList[i], floor(100000/j))
		end
	end
	
	for i=0, nHumanCount-1  do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if GetUnitCampID(sceneId, nHumanId, nHumanId) ~= nPlayerCamp   then
			AddExp(sceneId, nHumanId, floor(100000/(nHumanCount-j)))
		end
	end
	
end

--���飬
--�Ϳ����������ͬ��Ӫ����ƽ�� 10 ��
--�ڳ��ĳ���Щ���������ƽ�� 10 ��



