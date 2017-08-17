--����NPC
--��վ....

x045000_g_ScriptId	= 045000

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x045000_g_mpInfo		= {}
x001100_g_mpInfo[0]	= { "Tinh T�c", 16,  96, 152, MP_XINGSU }
x001100_g_mpInfo[1]	= { "Ti�u Dao", 14,  67, 145, MP_XIAOYAO }
x001100_g_mpInfo[2]	= { "Thi�u L�m",  9,  96, 127, MP_SHAOLIN }
x001100_g_mpInfo[3]	= { "Thi�n S�n", 17,  95, 120, MP_TIANSHAN }
x001100_g_mpInfo[4]	= { "Thi�n Long", 13,  96, 120, MP_DALI }
x001100_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001100_g_mpInfo[6]	= { "V� �ang", 12, 103, 140, MP_WUDANG }
x001100_g_mpInfo[7]	= { "Minh Gi�o", 11,  98, 167, MP_MINGJIAO }
x001100_g_mpInfo[8]	= { "C�i Bang", 10,  91, 116, MP_GAIBANG }
x001100_g_mpInfo[9]	= { "M� Dung (�ang ho�n thi�n)", 435,  91, 116, MP_MURONG }--Ԥ��

x045000_g_Yinpiao = 40002000 

x045000_g_Impact_NotTransportList = { 5929, 5944 } -- ��ֹ���͵�Impact
x045000_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ��ֹ���͵�Impact��ʾ��Ϣ

--**********************************
--�¼��������
--**********************************
function x045000_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, x045000_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr�n ng߶i ng߽i �ang c� ng�n phi�u c�a tri�u ��nh, ta kh�ng th� gi�p ng߶i.." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )

		AddText( sceneId, "#{loulan_yizhan_20080329}")
		 
		AddNumText( sceneId, x045000_g_ScriptId, "Quay v� m�n ph�i", 9, 1000 )
		AddNumText( sceneId, x045000_g_ScriptId, "Th�nh Th� - L�c D߽ng", 9, 1001 )
		AddNumText( sceneId, x045000_g_ScriptId, "Th�nh Th� - L�c D߽ng - C�u Ch�u Th߽ng H�i", 9, 1002 )
		AddNumText( sceneId, x045000_g_ScriptId, "Th�nh Th� - T� Ch�u", 9, 1003 )
		AddNumText( sceneId, x045000_g_ScriptId, "Th�nh Th� - T� Ch�u - Thi�t T��ng Ph�", 9, 1004 )
		AddNumText( sceneId, x045000_g_ScriptId, "Th�nh Th� - ��i L�", 9, 1005 )
		AddNumText( sceneId, x045000_g_ScriptId, "Th�nh Th� - Th�c H� C� Tr�n", 9, 1016 )
		AddNumText( sceneId, x045000_g_ScriptId, "Th�nh Th� -Ph�ng Minh Tr�n", 9, 1017 )
		 
		AddNumText( sceneId, x045000_g_ScriptId, "��a ta �i m�n ph�i kh�c", 9, 1011 )
		
		--for i, mp in x045000_g_mpInfo do
			--AddNumText( sceneId, x045000_g_ScriptId, "���� - "..mp[1], 9, i )
		--end

	
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x045000_OnEventRequest( sceneId, selfId, targetId, eventId )

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
				x045000_MsgBox( sceneId, selfId, targetId, "  Ng߽i �ang trong tr�ng th�i v�n chuy�n, ta kh�ng h� gi�p ng߶i" )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x045000_MsgBox( sceneId, selfId, targetId, "  B�n b� trong �i ng� �ang trong tr�ng th�i t�o v�n n�n kh�ng th� v�n chuy�n." )
		return
	end

	--���Impact״̬פ��Ч��
	for i, ImpactId in x045000_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x045000_MsgBox( sceneId, selfId, targetId, x045000_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end

	
	--Quay v� m�n ph�i....
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Quay v� m�n ph�i
		if id < 0 or id >= 9 then
			x045000_MsgBox( sceneId, selfId, targetId, "  Ng߽i v�n ch�a gia nh�p m�n ph�i n�o c�" )
		else
			mp	= x045000_GetMPInfo( id )
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

	--��i L�....
	if arg == 1005 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 376, 222 )
		return
	end

	--���ӹ���....
	if arg == 1016 then		--���ӹ���
			-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x045000_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� noi kh�ng gia t�ng s�t kh�, nh� ng߽i h�y c�n th�n khi �n ��.");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end

	if arg == 1011 then		
		BeginEvent( sceneId )
			for i, mp in x045000_g_mpInfo do
				AddNumText( sceneId, x045000_g_ScriptId, "M�n ph�i - "..mp[1], 9, i )
			end
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	--¥��....
	if arg == 1016 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 286, 129 )
		return
	end
	
	--����....
	for i, mp in x045000_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

end
--  add by zchw
function x045000_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--��������ID��ȡ������Ϣ
--**********************************
function x045000_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x045000_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x045000_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
