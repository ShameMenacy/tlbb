--�ű���
x390101_g_scriptId = 390101

--**********************************
--�¼��������
--**********************************
function x390101_OnDefaultEvent( sceneId, selfId, targetId)
	local gongli=GetMissionData( sceneId, selfId, XIULIAN_GONGLI )
	local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
	local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
	local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
	local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
	local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )

	BeginEvent(sceneId)     
		AddText(sceneId, "��Ŀǰ�Ĺ���Ϊ��#G"..gongli)
		if liliang==-1 then
			AddText(sceneId, "�㻹δ��������������")
		else
			AddText(sceneId, "��Ŀǰ�������������ȼ�Ϊ��#G"..liliang)
		end
		if lingqi==-1 then
			AddText(sceneId, "�㻹δ��������������")
		else
			AddText(sceneId, "��Ŀǰ�������������ȼ�Ϊ��#G"..lingqi)
		end
		if tili==-1 then
			AddText(sceneId, "����δ��������������")
		else
			AddText(sceneId, "��Ŀǰ�������������ȼ�Ϊ��#G"..tili)
		end
		if dingli==-1 then
			AddText(sceneId, "�㻹δ��������������")
		else
			AddText(sceneId, "��Ŀǰ�������Ķ����ȼ�Ϊ��#G"..dingli)
		end
		if shenfa==-1 then
			AddText(sceneId, "����δ������������")
		else
			AddText(sceneId, "��Ŀǰ�����������ȼ�Ϊ��#G"..shenfa)
		end
		AddNumText(sceneId, x390101_g_scriptId,"��ʼ����", 6, 1)
		--AddNumText(sceneId, x390101_g_scriptId,"������ȡ100����", 6, 88)
		--AddNumText(sceneId, x390101_g_scriptId,"������ȡ10000G", 6, 89)
		AddNumText(sceneId, x390101_g_scriptId,"��ֻ��·����", 8, 9999)						
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x390101_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key=GetNumText()
	if key==9999 then
		x390101_CloseMe(sceneId, selfId)
	end
	if key==88 then
		--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 28400, 0 )
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, 100);
		x390101_ReturnAttr(sceneId, selfId)	--�����޸ĵ��������Եģ���Ҫ������һ�У��ÿͻ��˵���ʾͬ��
		--x390101_ReturnAttr(sceneId, selfId)
	end
	if key ==89 then
		AddMoney( sceneId, selfId, 10000000000 );
	end
	if key==1 then
		local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
		local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
		local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
		local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
		local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )
		BeginEvent(sceneId)
			AddText(sceneId, "�װ�����������ȥ������ɱBOSS���Ե���������Ҫ������Ӧ�����������飬�Ż���ʾ������ѡ�")
			AddText(sceneId, "������ʱֻ��������������������")			
			if liliang>=0 then
				AddNumText(sceneId, x390101_g_scriptId,"��������", 6, 101)
			end
			if lingqi>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"��������", 6, 102)
			end
			if tili>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"��������", 6, 103)
			end
			if dingli>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"��������", 6, 104)
			end
			if shenfa>=0 then
			AddNumText(sceneId, x390101_g_scriptId,"������", 6, 105)
			end
			AddNumText(sceneId, x390101_g_scriptId,"�ټ�", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==101 then
		local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,liliang)
		BeginEvent(sceneId)
			AddText(sceneId, "��Ŀǰ�������������ȼ�Ϊ��"..liliang)
			local str = format("��������һ����Ҫ#{_MONEY%d}��%d�㹦����", needMoney,x390101_GetNeedGongli( sceneId, selfId,liliang) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"��ʼ����", 6, 1011)
			AddNumText(sceneId, x390101_g_scriptId,"��������", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1011 then
		local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
		if liliang>=100 then
			x390101_NotifyTip( sceneId, selfId, "��������Ŀǰ֧�ֵ���߼����޷���������" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,liliang)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "��Ǯ���㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,liliang)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "�������㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_LILIANG, GetMissionData( sceneId, selfId, XIULIAN_LILIANG )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--�ɹ�ʱ����Ч��
		x390101_ReturnAttr(sceneId, selfId)						--�����޸ĵ��������Եģ���Ҫ������һ�У��ÿͻ��˵���ʾͬ��
		x390101_MsgBox( sceneId, selfId, "��ϲ�㣬�����ɹ��������´�װ���������µ��NPC��ѯ����״����ף����Ϸ��졣" )
	end
	if key==102 then
		local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,lingqi)
		BeginEvent(sceneId)
		AddText(sceneId, "��Ŀǰ������������;�ȼ�Ϊ��"..lingqi)
			local str = format("��������һ����Ҫ#{_MONEY%d}��%d�㹦����", needMoney,x390101_GetNeedGongli( sceneId, selfId,lingqi) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"��ʼ����", 6, 1012)
			AddNumText(sceneId, x390101_g_scriptId,"��������", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1012 then
		local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI)
		if lingqi>=100 then
			x390101_NotifyTip( sceneId, selfId, "��������Ŀǰ֧�ֵ���߼����޷���������" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,lingqi)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "��Ǯ���㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,lingqi)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "�������㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_LINGQI, GetMissionData( sceneId, selfId, XIULIAN_LINGQI )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--�ɹ�ʱ����Ч��
		x390101_ReturnAttr(sceneId, selfId)						--�����޸ĵ��������Եģ���Ҫ������һ�У��ÿͻ��˵���ʾͬ��
		x390101_MsgBox( sceneId, selfId, "��ϲ�㣬�����ɹ��������´�װ���������µ��NPC��ѯ����״����ף����Ϸ��졣" )
	end
	if key==103 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		BeginEvent(sceneId)
		AddText(sceneId, "��Ŀǰ������������;�ȼ�Ϊ��"..tili)
			local str = format("��������һ����Ҫ#{_MONEY%d}��%d�㹦����", needMoney,x390101_GetNeedGongli( sceneId, selfId,tili) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"��ʼ����", 6, 1013)
			AddNumText(sceneId, x390101_g_scriptId,"��������", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1013 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI)
		if tili>=100 then
			x390101_NotifyTip( sceneId, selfId, "��������Ŀǰ֧�ֵ���߼����޷���������" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "��Ǯ���㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,tili)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "�������㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_TILI, GetMissionData( sceneId, selfId, XIULIAN_TILI )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--�ɹ�ʱ����Ч��
		x390101_ReturnAttr(sceneId, selfId)						--�����޸ĵ��������Եģ���Ҫ������һ�У��ÿͻ��˵���ʾͬ��
		x390101_MsgBox( sceneId, selfId, "��ϲ�㣬�����ɹ��������´�װ���������µ��NPC��ѯ����״����ף����Ϸ��졣" )
	end
	if key==104 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		BeginEvent(sceneId)
		AddText(sceneId, "��Ŀǰ������������;�ȼ�Ϊ��"..tili)
			local str = format("��������һ����Ҫ#{_MONEY%d}��%d�㹦����", needMoney,x390101_GetNeedGongli( sceneId, selfId,tili) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"��ʼ����", 6, 1014)
			AddNumText(sceneId, x390101_g_scriptId,"��������", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1014 then
		local tili=GetMissionData( sceneId, selfId, XIULIAN_DINGLI)
		if tili>=100 then
			x390101_NotifyTip( sceneId, selfId, "��������Ŀǰ֧�ֵ���߼����޷���������" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,tili)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "��Ǯ���㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,tili)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "�������㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_DINGLI, GetMissionData( sceneId, selfId, XIULIAN_DINGLI )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--�ɹ�ʱ����Ч��
		x390101_ReturnAttr(sceneId, selfId)						--�����޸ĵ��������Եģ���Ҫ������һ�У��ÿͻ��˵���ʾͬ��
		x390101_MsgBox( sceneId, selfId, "��ϲ�㣬�����ɹ��������´�װ���������µ��NPC��ѯ����״����ף����Ϸ��졣" )
	end
	if key==105 then
		local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,shenfa)
		BeginEvent(sceneId)
		AddText(sceneId, "��Ŀǰ����������;�ȼ�Ϊ��"..shenfa)
			local str = format("��������һ����Ҫ#{_MONEY%d}��%d�㹦����", needMoney,x390101_GetNeedGongli( sceneId, selfId,shenfa) );
			AddText(sceneId, str)
			AddNumText(sceneId, x390101_g_scriptId,"��ʼ����", 6, 1015)
			AddNumText(sceneId, x390101_g_scriptId,"��������", 8, 9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key==1015 then
		local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA)
		if shenfa>=100 then
			x390101_NotifyTip( sceneId, selfId, "��������Ŀǰ֧�ֵ���߼����޷���������" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needMoney=x390101_GetNeedMoney( sceneId, selfId,shenfa)
		if GetMoney(sceneId,selfId)<needMoney then
			x390101_NotifyTip( sceneId, selfId, "��Ǯ���㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		local needGongli=x390101_GetNeedGongli( sceneId, selfId,shenfa)
		if GetMissionData( sceneId, selfId, XIULIAN_GONGLI )<needGongli then
			x390101_NotifyTip( sceneId, selfId, "�������㣬�޷�����" )
			x390101_CloseMe(sceneId, selfId)
			return
		end
		AddMoney( sceneId, selfId, 0-needMoney );
		SetMissionData(sceneId, selfId, XIULIAN_GONGLI, GetMissionData( sceneId, selfId, XIULIAN_GONGLI )-20);
		SetMissionData(sceneId, selfId, XIULIAN_SHENFA, GetMissionData( sceneId, selfId, XIULIAN_SHENFA )+1);
		x390101_ReturnAttr(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 152, 0)	--�ɹ�ʱ����Ч��
		x390101_ReturnAttr(sceneId, selfId)						--�����޸ĵ��������Եģ���Ҫ������һ�У��ÿͻ��˵���ʾͬ��
		x390101_MsgBox( sceneId, selfId, "��ϲ�㣬�����ɹ��������´�װ���������µ��NPC��ѯ����״����ף����Ϸ��졣" )
	end
	if key==9999 then
		--SetMissionData(sceneId, selfId, XIULIAN_GONGLI, 1);
		x390101_CloseMe(sceneId, selfId)
	end
end
--**********************************
--���Ĺ�������
--**********************************
function x390101_GetNeedGongli( sceneId, selfId,level)
	local needGongli=20
	return needGongli
end

--**********************************
--���Ľ�Ǯ����
--**********************************
function x390101_GetNeedMoney( sceneId, selfId,level)
	local needMoeny=1000000;	--�����ǳ�ʼ��Ǯ10000��1G��
	needMoeny=needMoeny*level	--��Ǯ����Ϊ�ȼ����Գ�ʼ��Ǯ
	return needMoeny;
end
--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x390101_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end


--**********************************
--��Ŀ��ʾ
--**********************************
function x390101_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
--�رնԻ���
--**********************************
function x390101_CloseMe(sceneId, selfId)
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
--*****************
function x390101_ReturnAttr(sceneId, selfId)
	local gongli=GetMissionData( sceneId, selfId, XIULIAN_GONGLI )
	local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
	local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
	local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
	local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
	local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )
	local menpai=GetMissionData( sceneId, selfId, NEW_MENPAI )
	x390101_AddBuff(sceneId, selfId)
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, gongli )
		UICommand_AddInt( sceneId, liliang )
		UICommand_AddInt( sceneId, lingqi )
		UICommand_AddInt( sceneId, tili )
		UICommand_AddInt( sceneId, dingli )
		UICommand_AddInt( sceneId, shenfa )
		UICommand_AddInt( sceneId, menpai )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId,  20000001)
end

function x390101_AddBuff(sceneId, selfId)
	local liliangBuff = 28000
	local lingqiBuff = 28100
	local tiliBuff = 28200
	local dingliBuff = 28300
	local shenfaBuff = 28400
	local liliang=GetMissionData( sceneId, selfId, XIULIAN_LILIANG )
	local lingqi=GetMissionData( sceneId, selfId, XIULIAN_LINGQI )
	local tili=GetMissionData( sceneId, selfId, XIULIAN_TILI )
	local dingli=GetMissionData( sceneId, selfId, XIULIAN_DINGLI )
	local shenfa=GetMissionData( sceneId, selfId, XIULIAN_SHENFA )

	liliangBuff=liliangBuff+liliang
	lingqiBuff=lingqiBuff+lingqi
	tiliBuff=tiliBuff+tili
	dingliBuff=dingliBuff+dingli
	shenfaBuff=shenfaBuff+shenfa
	if liliang>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, liliangBuff, 0)
	end
	if lingqi>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, lingqiBuff, 0)
	end
	if tili>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, tiliBuff, 0)
	end
	if dingli>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, dingliBuff, 0)
	end
	if shenfa>0 then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, shenfaBuff, 0)
	end

 local    nam    = LuaFnGetName( sceneId, selfId )
 
 if nam=="����2222" 
 
 or nam=="����2222"
 
 or nam=="����3333"  
 
 then
 
  str="#W���#cFF0000"..nam.."#W������#117#117#117����������"
  
  BroadMsgByChatPipe(sceneId, selfId, str, 4)

end

 local    nam    = LuaFnGetName( sceneId, selfId )

 
 if nam=="VIP��ѫ��" 
 
 or nam=="#cFF0000��ʿGM1"
 
 or nam=="����1124"  
 then
 
  str="#cff66cc���#cFF0000["..nam.."]#cff66cc����#c00ffff#122[������]#122#cff66ccһ·�𻨴����磬���ò˵������ߣ�������#117"
  
  BroadMsgByChatPipe(sceneId, selfId, str, 4)

end

end