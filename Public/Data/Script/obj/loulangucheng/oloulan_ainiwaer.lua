--¥��NPC
--��վ....

x001100_g_ScriptId	= 001100

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x001100_g_mpInfo		= {}
x001100_g_mpInfo[0]	= { "Tinh T�c", 16,  96, 152, MP_XINGSU }
x001100_g_mpInfo[1]	= { "Ti�u Dao", 14,  67, 145, MP_XIAOYAO }
x001100_g_mpInfo[2]	= { "Thi�u L�m",  9,  96, 127, MP_SHAOLIN }
x001100_g_mpInfo[3]	= { "Thi�n S�n", 17,  95, 120, MP_TIANSHAN }
x001100_g_mpInfo[4]	= { "Thi�n Long", 13,  96, 120, MP_DALI }
x001100_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001100_g_mpInfo[6]	= { "V� �ang", 12, 103, 140, MP_WUDANG }
x001100_g_mpInfo[7]	= { "Minh Gi�o", 11,  98, 167, MP_MINGJIAO }
x001100_g_mpInfo[8]	= { "C�i Bang", 10,  91, 116, MP_GAIBANG }
--x001100_g_mpInfo[9]	= { "M� Dung", 435,  91, 116, MP_MURONG }--Ԥ��

x001100_g_Yinpiao = 40002000 

x001100_g_Impact_NotTransportList = { 5929, 5944 } -- ��ֹ���͵�Impact
x001100_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ��ֹ���͵�Impact��ʾ��Ϣ

--**********************************
--�¼��������
--**********************************
function x001100_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, x001100_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr�n ng߶i ng߽i �ang c� ng�n phi�u, ta kh�ng th� gi�p ng߶i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )

		AddText( sceneId, "#{loulan_yizhan_20080329}")
		 
		AddNumText( sceneId, x001100_g_ScriptId, "Quay v� m�n ph�i", 9, 1000 )
		AddNumText( sceneId, x001100_g_ScriptId, "Th�nh Th� - L�c D߽ng", 9, 1001 )
		AddNumText( sceneId, x001100_g_ScriptId, "Th�nh Th� - L�c D߽ng - C�u Ch�u Th߽ng H�i", 9, 1002 )
		AddNumText( sceneId, x001100_g_ScriptId, "Th�nh Th� - T� Ch�u", 9, 1003 )
		AddNumText( sceneId, x001100_g_ScriptId, "Th�nh Th� - T� Ch�u - Thi�t T��ng Ph�", 9, 1004 )
		AddNumText( sceneId, x001100_g_ScriptId, "Th�nh Th� - ��i L�", 9, 1005 )
		AddNumText( sceneId, x001100_g_ScriptId, "Th�nh Th� - Th�c H� C� Tr�n", 9, 1016 )
		AddNumText( sceneId, x001100_g_ScriptId, "Th�nh Th� - #GPh�ng Minh Tr�n", 9, 1017 )
		 
		AddNumText( sceneId, x001100_g_ScriptId, "��a ta �n m�n ph�i kh�c", 9, 1011 )
		
		--for i, mp in x001100_g_mpInfo do
			--AddNumText( sceneId, x001100_g_ScriptId, "���� - "..mp[1], 9, i )
		--end

	
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001100_OnEventRequest( sceneId, selfId, targetId, eventId )

	--���˽�ֹ����....
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x001100_MsgBox( sceneId, selfId, targetId, "  Trong t� �i c� ng߶i �ang trong tr�ng th�i v�n chuy�n, kh�ng th� ti�n h�nh thao t�c" )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x001100_MsgBox( sceneId, selfId, targetId, "  Ng߽i �ang trong tr�ng th�i v�n chuy�n, ch�u kh� ch�y b� �i" )
		return
	end

	--���Impact״̬פ��Ч��
	for i, ImpactId in x001100_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x001100_MsgBox( sceneId, selfId, targetId, x001100_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end

	
	--Quay v?m�n ph�i....
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Quay v?m�n ph�i
		if id < 0 or id >= 9 then
			x001100_MsgBox( sceneId, selfId, targetId, "  Ng߽i ch�a gia nh�p m�n ph�i n�o c�" )
		else
			mp	= x001100_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end

	--L�c D߽ng....
	if arg == 1001 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 233, 321 )
		return
	end

	--L�c D߽ng����....
	if arg == 1002 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 325, 270 )
		return
	end

	--T� Ch�u....
	if arg == 1003 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 202,257 )
		return
	end

	--T� Ch�u����....
	if arg == 1004 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 331, 226 )
		return
	end

	--��i L?...
	if arg == 1005 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 252, 124 )
		return
	end

	--Ph�ng Minh Tr�n....
	if arg == 1017 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 580, 158, 120 )
		return
	end

	if arg == 1011 then		
		BeginEvent( sceneId )
			for i, mp in x001100_g_mpInfo do
				AddNumText( sceneId, x001100_g_ScriptId, "M�n ph�i - "..mp[1], 9, i )
			end
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if arg == 1016 then		--Th�c H?C?Tr�n
			-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x001100_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i kh�ng gia t�ng s�t kh�, ng߽i ch�c ch�n mu�n ti�n v�o kh�ng");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	--����....
	for i, mp in x001100_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

end
--  add by zchw
function x001100_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--��������ID��ȡ������Ϣ
--**********************************
function x001100_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x001100_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x001100_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
