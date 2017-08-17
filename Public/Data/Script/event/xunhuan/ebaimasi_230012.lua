--����������
--����
--MisDescBegin
--�ű���
x230012_g_ScriptId = 230012

--ǰ������
--g_MissionIdPre =

--�����
x230012_g_MissionId = 4011

--M�c ti�u nhi�m v�npc
x230012_g_Name	="Tr� Thanh ��i S�"

--�������
x230012_g_MissionKind = 1

--��ng c�p nhi�m v� 
x230012_g_MissionLevel = 10000

--��ng����ngTinhӢ����
x230012_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x230012_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--���������m�t λ�����洢��� �i�m��to� � �ű���

--�����ı�����
x230012_g_MissionName="Tu h�nh B�ch M� T�"
x230012_g_MissionInfo="#{event_xunhuan_0003}"  --��������
x230012_g_MissionTarget="#{event_xunhuan_0004}"		--M�c ti�u nhi�m v�
x230012_g_ContinueInfo="A Di �� Ph�t... #rThi�u hi�p ph�i ch�ng �� th�ng qua Tr�n Long K� Cu�c ?"		--δHo�n t�t nhi�m v�to� � npc�Ի�
x230012_g_MissionComplete="Thi�n tai thi�n tai, thi�u hi�p v� ng߶i h�o hi�p, th߽ng y�u b�ch t�nh, ng�y sau s� th�nh c�ng"					--Ho�n t�t nhi�m v�npc˵��to� � ��

--���ƽű�
x230012_g_ControlScript=230000

--������


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x230012_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x230012_g_MissionId ) > 0 then
		--������������to� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x230012_g_MissionName )
			AddText( sceneId, x230012_g_ContinueInfo )
		EndEvent( )
		bDone = x230012_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x230012_g_ScriptId, x230012_g_MissionId, bDone )
	--Th�a m�n�����������
	elseif x230012_CheckAccept( sceneId, selfId ) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x230012_g_MissionName )
			AddText( sceneId, x230012_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}" )
			AddText( sceneId, x230012_g_MissionTarget )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x230012_g_ScriptId, x230012_g_MissionId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x230012_OnEnumerate( sceneId, selfId, targetId )
 	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x230012_g_MissionId ) > 0 or x230012_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x230012_g_ScriptId, x230012_g_MissionName,3,-1 )
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x230012_CheckAccept( sceneId, selfId )
	if CallScriptFunction( x230012_g_ControlScript, "CheckAccept", sceneId, selfId ) == 1 then
		--��������ng�����Ti�p th�����to� � ����
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x230012_OnAccept( sceneId, selfId, targetId )
 	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--������������б�
	CallScriptFunction( x230012_g_ControlScript, "OnAccept", sceneId, selfId, targetId, x230012_g_ScriptId )

	if IsHaveMission( sceneId, selfId, x230012_g_MissionId ) <= 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x230012_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, 7, 1 )						--�������кŰ��������to� � ��7λ��1 (����������)

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	BeginEvent( sceneId )
		AddText( sceneId, x230012_g_MissionInfo )
		AddText( sceneId,"#r        Ng߶i nh�n nhi�m v�: B�ch M� T� tu h�nh" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x230012_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	CallScriptFunction( x230012_g_ControlScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--����
--**********************************
function x230012_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent( sceneId )
	AddText( sceneId, x230012_g_MissionName )
	AddText( sceneId, x230012_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x230012_g_ScriptId, x230012_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x230012_CheckSubmit( sceneId, selfId )
	return CallScriptFunction( x230012_g_ControlScript, "CheckSubmit", sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x230012_OnSubmit( sceneId, selfId, targetId, selectRadioId )
 	if GetName( sceneId, targetId ) ~= x230012_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	CallScriptFunction( x230012_g_ControlScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x230012_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����objId
end

--**********************************
--���������¼�
--**********************************
function x230012_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x230012_OnItemChanged( sceneId, selfId, itemdataId )
end