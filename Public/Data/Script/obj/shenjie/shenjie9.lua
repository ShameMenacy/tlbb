--��ѻ�Ա

--************************************************************************
--MisDescBegin
--�ű���
x011111_g_ScriptId	= 011111

--MisDescEnd
--************************************************************************
--**********************************
--������ں���
--**********************************
function x011111_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#G�����ݵ����.ÿ���1Сʱ������ȡһ������.���ۼ�.#R���㳬��80����޷�����ȡ)" )
		AddNumText( sceneId, x011111_g_ScriptId, "��ȡ�ݵ㽱��(1000����)",5,11 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x011111_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	if key == 10 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "����ʯͷ" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#G��ϲ�����ɹ���ȡ�˻�Ա�ƺš�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 11 then
		local mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
		local	lev	= GetLevel( sceneId, selfId )
		if lev < 100 then
				BeginEvent( sceneId )
				AddText( sceneId, "�ȼ�����#G100#W������#G100#W�����������ҡ�(ע�⣺���㳬��80���û����ȡ��)" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return -1
		end
		local CurTime = GetHourTime();
		local iTime = GetMissionData( sceneId, selfId, MD_VIPZENGDIAN );
		if iTime+1 >= CurTime then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000��һСʱ��ֻ����ȡһ�����㡣(ע�⣺���㳬��80���û����ȡ��)" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
			ZengDian(sceneId,selfId,targetId,1,1000)
			SetMissionData(sceneId, selfId, MD_VIPZENGDIAN, CurTime);
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#G��ϲ��� "..nam.."�ɹ���ȡ1Сʱ�ݵ㽱��(1000����)��", 4 )
			BeginEvent( sceneId )
				AddText( sceneId, "��ȡ�ɹ������ɹ�����ȡ��10000���㡣ף����Ϸ��졣" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
	if key == 14 then
	BeginEvent( sceneId )
		AddText( sceneId, "�𾴵Ļ�Ա����ѡ����Ҫ���������ɡ�#G�������ɺ󣬳����߱��ķ����ķ��ȼ�ȫ������Ϊ130����#cFF0000ע�⣺ÿ��ֻ�ܸ���һ�Σ�������ԭ����������ѡ��" )
		AddNumText( sceneId, x011111_g_ScriptId, "����",3,20 )
		AddNumText( sceneId, x011111_g_ScriptId, "��ң",3,21 )
		AddNumText( sceneId, x011111_g_ScriptId, "����",3,22 )
		AddNumText( sceneId, x011111_g_ScriptId, "��ɽ",3,23 )
		AddNumText( sceneId, x011111_g_ScriptId, "����",3,24 )
		AddNumText( sceneId, x011111_g_ScriptId, "��ü",3,25 )
		AddNumText( sceneId, x011111_g_ScriptId, "�䵱",3,26 )
		AddNumText( sceneId, x011111_g_ScriptId, "����",3,27 )
		AddNumText( sceneId, x011111_g_ScriptId, "ؤ��",3,28 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 23 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000�𾴵Ļ�Ա������������������ˣ�һ��ֻ�ܸ���һ�Ρ�" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,130)
		LuaFnSetXinFaLevel(sceneId,selfId,44,130)
		LuaFnSetXinFaLevel(sceneId,selfId,45,130)
		LuaFnSetXinFaLevel(sceneId,selfId,46,130)
		LuaFnSetXinFaLevel(sceneId,selfId,47,130)
		LuaFnSetXinFaLevel(sceneId,selfId,48,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G��ϲ��Ա "..nam.."�ɹ��������ɡ���ɽ��", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G����������ɽ�ɣ�ף����Ϸ��졣" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 24 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000�𾴵Ļ�Ա������������������ˣ�һ��ֻ�ܸ���һ�Ρ�" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,130)
		LuaFnSetXinFaLevel(sceneId,selfId,38,130)
		LuaFnSetXinFaLevel(sceneId,selfId,39,130)
		LuaFnSetXinFaLevel(sceneId,selfId,40,130)
		LuaFnSetXinFaLevel(sceneId,selfId,41,130)
		LuaFnSetXinFaLevel(sceneId,selfId,42,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G��ϲ��Ա "..nam.."�ɹ��������ɡ�������", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G�������������ɣ�ף����Ϸ��졣" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 25 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000�𾴵Ļ�Ա������������������ˣ�һ��ֻ�ܸ���һ�Ρ�" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,130)
		LuaFnSetXinFaLevel(sceneId,selfId,26,130)
		LuaFnSetXinFaLevel(sceneId,selfId,27,130)
		LuaFnSetXinFaLevel(sceneId,selfId,28,130)
		LuaFnSetXinFaLevel(sceneId,selfId,29,130)
		LuaFnSetXinFaLevel(sceneId,selfId,30,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G��ϲ��Ա "..nam.."�ɹ��������ɡ���ü��", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G�������˶�ü�ɣ�ף����Ϸ��졣" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 26 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000�𾴵Ļ�Ա������������������ˣ�һ��ֻ�ܸ���һ�Ρ�" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,130)
		LuaFnSetXinFaLevel(sceneId,selfId,20,130)
		LuaFnSetXinFaLevel(sceneId,selfId,21,130)
		LuaFnSetXinFaLevel(sceneId,selfId,22,130)
		LuaFnSetXinFaLevel(sceneId,selfId,23,130)
		LuaFnSetXinFaLevel(sceneId,selfId,24,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G��ϲ��Ա "..nam.."�ɹ��������ɡ��䵱��", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G���������䵱�ɣ�ף����Ϸ��졣" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 27 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000�𾴵Ļ�Ա������������������ˣ�һ��ֻ�ܸ���һ�Ρ�" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,130)
		LuaFnSetXinFaLevel(sceneId,selfId,8,130)
		LuaFnSetXinFaLevel(sceneId,selfId,9,130)
		LuaFnSetXinFaLevel(sceneId,selfId,10,130)
		LuaFnSetXinFaLevel(sceneId,selfId,11,130)
		LuaFnSetXinFaLevel(sceneId,selfId,12,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G��ϲ��Ա "..nam.."�ɹ��������ɡ����̡�", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G�����������̣�ף����Ϸ��졣" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 28 then
		local day = GetDayTime();
		local lastDay = GetMissionData(sceneId, selfId, MD_GENGHUANMENPAI);
		if lastDay == day then
			BeginEvent( sceneId )
			AddText( sceneId, "#cFF0000�𾴵Ļ�Ա������������������ˣ�һ��ֻ�ܸ���һ�Ρ�" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,130)
		LuaFnSetXinFaLevel(sceneId,selfId,14,130)
		LuaFnSetXinFaLevel(sceneId,selfId,15,130)
		LuaFnSetXinFaLevel(sceneId,selfId,16,130)
		LuaFnSetXinFaLevel(sceneId,selfId,17,130)
		LuaFnSetXinFaLevel(sceneId,selfId,18,130)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#G��ϲ��Ա "..nam.."�ɹ��������ɡ�ؤ�", 4 )

		SetMissionData(sceneId, selfId, MD_GENGHUANMENPAI, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#G��������ؤ�ף����Ϸ��졣" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 13 then
	BeginEvent( sceneId )
		AddText( sceneId, "�װ������.���.�������±������µĹ����.#Gע��:�����Թ�������.#cffcc00ף����Ϸ���!" )
	EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end