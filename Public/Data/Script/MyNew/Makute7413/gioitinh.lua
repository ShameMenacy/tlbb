--ת�Ե�NPC ����

--�ű���
x002191_g_scriptId = 002191


--��ӵ�е��¼�ID�б�
x002191_g_eventList={0147000, 0147001, 0147002, 0147003, 0147004, 0147005, 0147006}
x002191_g_item_zhuanxingdan = 30900048


x002191_g_result_msg = {
	"#{ZXD_20080312_03}", --"���ѳɻ��޷������Ա�����������ϵ����ʹ�ø���Ʒ"
	"#{ZXD_20080318_01}", --"����̫Զ��ת�Ե�ʹ��ʧ��"
	"#{ZXD_20080318_02}", --"û�п��õ�ת�Ե�",
	"#{ZXD_20080318_03}", --"���ʱ�޷�ת�ԣ����˳����״̬����ʹ��",
	"#{ZXD_20080318_04}", --"��̯״̬ʱ�޷�ʹ��ת�Ե�",
	"#{ZXD_20080318_05}"  --"��״̬�޷�ʹ��ת�Ե�"
}

--**********************************
--�¼��б�
--**********************************
function x002191_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "Nam thanh n� t� �u mu�n c� ���c t�nh y�u c�a m�nh, ta c� th� gi�p g� cho ng߽i?" )
		AddNumText( sceneId, x002191_g_scriptId, "Thay �i gi�i t�nh", 6, 0147000)
		AddNumText( sceneId, x002191_g_scriptId, "H߾ng d�n s� d�ng chuy�n t�nh �an", 11, 0147001)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x002191_OnDefaultEvent( sceneId, selfId,targetId )
	x002191_UpdateEventList( sceneId, selfId, targetId )
	AddNumText( sceneId, x002191_g_scriptId,"S�a dung m�o",6,4)
	AddNumText( sceneId, x002191_g_scriptId,"Ta mu�n �i t�n", 6, 1 )
	AddNumText( sceneId, x002191_g_scriptId,"Thay �i m�u t�c",6,2)
	AddNumText( sceneId, x002191_g_scriptId,"Thay �i ki�u t�c",6,3)
	AddNumText( sceneId, x002191_g_scriptId,"Nh��m m�u th�i trang",6,6)
	AddNumText( sceneId, x002191_g_scriptId,"Thay �i bi�u t��ng nh�n v�t",6,5)
end

--**********************************
-- �¼�����
--**********************************
function x002191_OnEventRequest( sceneId, selfId, targetId, eventId )
	local request_id = GetNumText()
	print("function x002191_OnEventRequest")
	if request_id == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 5423 )
	end
	if GetNumText() == 2 then
		CallScriptFunction( 801011, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 3 then
		CallScriptFunction( 801010, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 4 then
		CallScriptFunction( 805029, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 5 then
		CallScriptFunction( 805030, "OnEnumerate",sceneId, selfId, targetId )
	end
	if GetNumText() == 6 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  0910281)
	end
	if request_id == 0147000 then
		local isMarried = LuaFnIsMarried(sceneId, selfId)
		if isMarried > 0 then
			BeginEvent(sceneId)
				AddText( sceneId, "#{ZXD_20080312_03}" )		
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x002191_g_item_zhuanxingdan)
		if itemCount < 1 then
			BeginEvent(sceneId)
				AddText( sceneId, "#{ZXD_20080312_04}" )		
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		--֪ͨ�ͻ��˿�ʼת��ѡ��
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0147000)
		
	elseif request_id == 0147003 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0147005)
		
	elseif request_id == 0147004 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, targetId);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 0147006) --�ر�NPC�Ի���
		
	elseif request_id == 0147001 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{ZXD_20080312_02}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
-- ����ȷ�Ͻ���
--**********************************
function x002191_OnZhuanXingRequest( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{ZXD_20080312_05}")
		AddNumText( sceneId, x002191_g_scriptId, "X�c nh�n", 6, 0147003)
		AddNumText( sceneId, x002191_g_scriptId, "Hu� b�", 6, 0147004)		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
-- �ͻ��˵��ú���
--**********************************
function x002191_OnZhuanXingConfirm( sceneId, selfId, targetId, sex, hairColor, hairModel, faceModel, nFaceId)
	print("x002191_OnZhuanXingConfirm")
	local pre_condition = x002191_PreZhuanXingCondition( sceneId, selfId, targetId )
	if pre_condition == 0 then
		local is_suc = HumanZhuanXing(sceneId, selfId, sex, hairColor, hairModel, faceModel, nFaceId)
		if is_suc == 1 then
			LuaFnDelAvailableItem(sceneId, selfId, x002191_g_item_zhuanxingdan, 1)
			BeginEvent(sceneId)
				AddText(sceneId, "#{ZXD_20080312_06}")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)

			--����ͬʱ��һ��������Ч
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 100 )
			return
		end
	elseif( pre_condition >= 1 and pre_condition <= 6 ) then
		BeginEvent(sceneId)
			AddText(sceneId, x002191_g_result_msg[pre_condition])
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end


--**********************************
-- �Ƿ�����ת������
--**********************************
function x002191_PreZhuanXingCondition( sceneId, selfId, targetId )
	
	--�Ѿ����
	local isMarried = LuaFnIsMarried(sceneId, selfId)
	if isMarried == 1 then
		return 1
	end
	
	--����̫Զ
	local isValidDistance = IsInDist( sceneId, selfId, targetId, 1000.0)
	if isValidDistance <= 0 then
		return 2
	end
	
	--û�кϷ���Ʒ
	local itemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x002191_g_item_zhuanxingdan)
	if itemCount <= 0 then
		return 3
	end
	
	--�Ƿ����
	local hasTeam = LuaFnHasTeam(sceneId, selfId)
	if hasTeam > 0 then
		return 4
	end
	
	--�Ƿ��̯
	local isStall = LuaFnIsStalling(sceneId, selfId)
	if isStall > 0 then
		return 5
	end

	--�Ƿ����
	local isRiding = LuaFnIsRiding(sceneId, selfId)
	if isRiding > 0 then
		return 6
	end
	
	--����ת��
	return 0
end
