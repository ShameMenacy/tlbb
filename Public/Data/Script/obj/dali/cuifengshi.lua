--����NPC
--��վ�ϰ�
--��ͨ

x002924_g_ScriptId	= 002924

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x002924_g_mpInfo		= {}
x002924_g_mpInfo[0]	= { "����", 16,  96, 152, MP_XINGSU }
x002924_g_mpInfo[1]	= { "��ң", 14,  67, 145, MP_XIAOYAO }
x002924_g_mpInfo[2]	= { "����",  9,  96, 127, MP_SHAOLIN }
x002924_g_mpInfo[3]	= { "��ɽ", 17,  95, 120, MP_TIANSHAN }
x002924_g_mpInfo[4]	= { "����", 13,  96, 120, MP_DALI }
x002924_g_mpInfo[5]	= { "����", 15,  89, 139, MP_EMEI }
x002924_g_mpInfo[6]	= { "�䵱", 12, 103, 140, MP_WUDANG }
x002924_g_mpInfo[7]	= { "����", 11,  98, 167, MP_MINGJIAO }
x002924_g_mpInfo[8]	= { "ؤ��", 10,  91, 116, MP_GAIBANG }

x002924_g_Yinpiao = 40002000
--**********************************
--�¼��������
--**********************************
function x002924_OnDefaultEvent( sceneId, selfId, targetId )

	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, x002924_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  ����������Ʊ���������̣��Ҳ��ܰ����㡣" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 10 then
			--AddText( sceneId, "#{XIYU_20071228_01}" )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y��������", 9, 1000 )
			AddNumText( sceneId, x002924_g_ScriptId, "#Y���� - ����", 9, 1001 )
			AddNumText( sceneId, x002924_g_ScriptId, "#Y���� - ����", 9, 1002 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#YҰ�� - ����ɽ", 9, 1003 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y���� - ���� - �����̻�", 9, 1006 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y���� - ���� - ������", 9, 1007 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18�����¥����������ת��", 9, 1015 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18���ľ�ׯ�������ռ���ʯ��", 9, 1018 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18��ʥ�𹬡������������ơ�", 9, 1017 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18�����ظ��ء����������ơ�", 9, 1010 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18�����������������须", 9, 1019 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18����ʥ̽�ա�����Աװ����", 9, 1014 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18���ػʵع��������ػ��须", 9, 1013 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18����Ĺһ�㡻������������", 9, 1008 )
			AddNumText( sceneId, x002924_g_ScriptId, "#gDC4C18�������þ��������������", 9, 1016 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#Y�����ӹ��򡻡��ֻ������", 9, 1009 )
			--AddNumText( sceneId, x002924_g_ScriptId, "#b#c33ffccBOSS -�����ӹųǡ�", 9, 1012 )
			AddNumText( sceneId, x002924_g_ScriptId, "#Y����ȥ��������", 9, 1011 )
			for i, mp in x002924_g_mpInfo do
				--AddNumText( sceneId, x002924_g_ScriptId, "���� - "..mp[1], 9, i )
			end
		else
			AddText( sceneId, "  ����Ҫ�ȼ�����10�����ϣ�����ȥ��ĳ��С�" )
			AddNumText( sceneId, x002924_g_ScriptId, "���� - ����",  9, 1003 )
			AddNumText( sceneId, x002924_g_ScriptId, "���� - ����2", 9, 1004 )
			AddNumText( sceneId, x002924_g_ScriptId, "���� - ����3", 9, 1005 )
		end

		-- ����������ȥ�ػͺ���ɽ
		--AddNumText( sceneId, x002924_g_ScriptId, "����������ȥ�ػͺ���ɽ", 11, 2000 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002924_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1011 then
	local	mp
	local	i		= 0
		BeginEvent( sceneId )
			for i, mp in x002924_g_mpInfo do
				AddNumText( sceneId, x002924_g_ScriptId, "���� - "..mp[1], 9, i )
			end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
		--�������
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
				x002924_MsgBox( sceneId, selfId, targetId, "  ������Ա������������\��������������վ����Ϊ���ṩ���ͷ���" )
				return
			end
		end
	end

	--�������
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002924_MsgBox( sceneId, selfId, targetId, "  ��������\��������������վ����Ϊ���ṩ���ͷ���" )
		return
	end

	--˳������
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--��������
		if id < 0 or id >= 9 then
			x002924_MsgBox( sceneId, selfId, targetId, "  �㻹û�м����κ����ɣ�" )
		else
			mp	= x002924_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 10 )
		return
	end
	if arg == 1002 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162, 10 )
		return
	end
	if arg == 1003 then		--����ɽ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110,18, 10 )
		return
	end
	if arg == 1006 then		--�����̻�
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
		return
	end
	if arg == 1007 then		--������
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 10 )
		return
	end
	if arg == 1008 then		--��һ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 159, 70, 100, 10 )
		return
	end
	if arg == 1009 then		--���ӹ���
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 422, 200, 211, 10 )
		return
	end
	if arg == 1010 then		--���ظ���
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
		return
	end
	if arg == 1012 then		--����ɽ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 110, 18, 10 )
		return
	end
	if arg == 1013 then		--�ػʵع�
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 400, 110, 18, 10 )
		return
	end
	if arg == 1014 then		--�����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 519, 31, 33, 10 )
		return
	end
	if arg == 1015 then		--���¥
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 533, 82, 77, 125 )
		return
	end
	if arg == 1016 then		--�þ�
		BeginEvent( sceneId )
			AddText( sceneId, "  ʮ��ɷ�Ǹ���������̨�����С� " )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 534, 36, 32, 10 )
		return
	end
	if arg == 1017 then		--ʥ��
		BeginEvent( sceneId )
			AddText( sceneId, "  �� ")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 537, 85, 36, 10 )
		return
	end
	if arg == 1018 then		--�ľ�ׯ
		BeginEvent( sceneId )
			AddText( sceneId, "  �� ")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 540, 98, 109, 10 )
		return
	end
	if arg == 1019 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 151, 36, 32, 10 )
		return
	end
	if arg == 1003 then		--����1
		--�����Ҿ��ڴ���1�򲻴���
		if sceneId == 2 then
			x002924_MsgBox( sceneId, selfId, targetId, "  ")
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--����2
		--�����Ҿ��ڴ���2�򲻴���
		if sceneId == 71 then
			x002924_MsgBox( sceneId, selfId, targetId, "  ���Ѿ��ڴ���2�ˡ�" )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--����3
		--�����Ҿ��ڴ���3�򲻴���
		if sceneId == 72 then
			x002924_MsgBox( sceneId, selfId, targetId, "  ���Ѿ��ڴ���3�ˡ�" )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002924_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			return
		end
	end

	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		return
	end

end

--**********************************
--��������ID��ȡ������Ϣ
--**********************************
function x002924_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002924_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x002924_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end