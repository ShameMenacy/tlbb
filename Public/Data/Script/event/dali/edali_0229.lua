--��������
--������Ѱ��Tri�u Thi�n S�
--MisDescBegin
--�ű���
x210229_g_ScriptId = 210229

--��������NPC����
x210229_g_Position_X=282
x210229_g_Position_Z=253
x210229_g_SceneID=2
x210229_g_AccomplishNPC_Name="Tri�u Thi�n S�"

--�����
x210229_g_MissionId = 709

--��һ�������ID
x210229_g_MissionIdPre = 708

--Ŀ��NPC
x210229_g_Name	="�o�n Di�n Kh�nh"

--�������
x210229_g_MissionKind = 13

--����ȼ�
x210229_g_MissionLevel = 8

--�Ƿ��Ǿ�Ӣ����
x210229_g_IfMissionElite = 0

--������
x210229_g_MissionName="T�m l�i Tri�u Thi�n S�"
x210229_g_MissionInfo="#{event_dali_0042}"
x210229_g_MissionTarget="V� #GNg� Hoa ��n th�nh ��i L�#W t�m #RTri�u Thi�n S� #W#{_INFOAIM282,253,2,Tri�u Thi�n S�}.#r#YNh�c nh�: #G?n chu�t ph�i v�o t�a � NPC c� th� t� �ng d�ch chuy�n �n ch� NPC ��!""
x210229_g_MissionComplete="C�c h� v� ch�a? G�n ��y l�i �n h�nh hung h�i ng߶i c�a #R�o�n Di�n Kh�nh#W g�n nh� �t �i r�t nhi�u r�i. Nh�t �nh ch�c ch�n l� c�ng lao c�a c�c h�!"
x210229_g_MoneyBonus=72
x210229_g_SignPost = {x = 282, z = 253, tip = "Tri�u Thi�n S�"}
x210229_g_ItemBonus={{id=40002108,num=1}}

x210229_g_Custom	= { {id="�� t�m th�y Tri�u Thi�n S�",num=1} }
x210229_g_IsMissionOkFail = 1		--�����ĵ�0λ

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210229_OnDefaultEvent( sceneId, selfId, targetId )
    --��������ɹ��������
    if (IsMissionHaveDone(sceneId,selfId,x210229_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210229_g_MissionId) > 0)  then
			x210229_OnContinue( sceneId, selfId, targetId )
    --���������������
    elseif x210229_CheckAccept(sceneId,selfId) > 0 then
			--�����������ʱ��ʾ����Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210229_g_MissionName)
				AddText(sceneId,x210229_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210229_g_MissionTarget)
				for i, item in x210229_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210229_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210229_g_ScriptId,x210229_g_MissionId)
    end
end

--**********************************
--�о��¼�
--**********************************
function x210229_OnEnumerate( sceneId, selfId, targetId )
    --�����һ�δ�����һ������
    if 	IsMissionHaveDone(sceneId,selfId,x210229_g_MissionIdPre) <= 0 then
    	return
    end
    --��������ɹ��������
    if IsMissionHaveDone(sceneId,selfId,x210229_g_MissionId) > 0 then
    	return 
    --����ѽӴ�����
    elseif IsHaveMission(sceneId,selfId,x210229_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210229_g_Name then
			AddNumText(sceneId, x210229_g_ScriptId,x210229_g_MissionName,2,-1);
		end
    --���������������
    elseif x210229_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210229_g_Name then
			AddNumText(sceneId,x210229_g_ScriptId,x210229_g_MissionName,1,-1);
		end
    end
end

--**********************************
--����������
--**********************************
function x210229_CheckAccept( sceneId, selfId )
	--��Ҫ8�����ܽ�
	if GetLevel( sceneId, selfId ) >= 8 then
		return 1
	else
		return 0
	end
end

--**********************************
--����
--**********************************
function x210229_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210229_g_MissionId, x210229_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: T�m l�i Tri�u Thi�n S�",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210229_g_SignPost.x, x210229_g_SignPost.z, x210229_g_SignPost.tip )

	-- ����������ɱ�־
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210229_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x210229_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
    DelMission( sceneId, selfId, x210229_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210229_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210229_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱ��˵����Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210229_g_MissionName)
		AddText(sceneId,x210229_g_MissionComplete)
		AddMoneyBonus( sceneId, x210229_g_MoneyBonus )
		for i, item in x210229_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210229_g_ScriptId,x210229_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x210229_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210229_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x210229_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210229_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210229_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--����������
			if ret > 0 then
					AddMoney(sceneId,selfId,x210229_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,600)
					ret = DelMission( sceneId, selfId, x210229_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210229_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YNhi�m v� ho�n th�nh#W: T�m l�i Tri�u Thi�n S�",MSG2PLAYER_PARA )
				end
			else
				--������û�мӳɹ�
				BeginEvent(sceneId)
					strText = "Nhi�m v� th�t b�i"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
	end
end

--**********************************
--ɱ����������
--**********************************
function x210229_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210229_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210229_OnItemChanged( sceneId, selfId, itemdataId )
end
