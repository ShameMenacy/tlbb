--����NPC
--�ŵ���
--��ͨ

x002075_g_ScriptId	= 002075

--�������(���ܱ�š��������ơ����Ľ�Ǯ)
x002075_g_Ability				= {}
x002075_g_Ability["aid"]= 39
x002075_g_Ability["nam"]= "Ch� X�ch Thi�n Nhai"
x002075_g_Ability["gld"]= 300000		--30G
x002075_g_LevMax				= 3					--��H�c ����ߵȼ�

--������
x002075_g_Key				= {}
x002075_g_Key["nul"]= 0		--ɶ��û��
x002075_g_Key["stu"]= 1		--H�c ����
x002075_g_Key["sty"]= 101	--ȷ��H�c 
x002075_g_Key["stn"]= 100	--����H�c 
x002075_g_Key["lup"]= 2		--Th�ng c�p k� n�ng
x002075_g_Key["upy"]= 201	--ȷ������
x002075_g_Key["upn"]= 200	--��������
x002075_g_Key["des"]= 3		--Gi�i thi�u иnh V� Ph�


--**********************************
--�¼��������
--**********************************
function x002075_OnDefaultEvent( sceneId, selfId, targetId )
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta c� th� truy�n th� cho ng߽i m�t lo�i k� n�ng th�n k�, c� th� ghi l�i v� tr�, th�ng tin, r�t thu�n ti�n khi ng߽i tr� l�i n�i n�y." )
		AddText( sceneId, "Ch� �: Ph� c�ng cao c�p, k� hi�u s� d�ng c�ng nhi�u." )
		if GetLevel( sceneId, selfId ) >= 30 then
			if lev <= 0 then
				AddNumText( sceneId, x002075_g_ScriptId, "H�c "..x002075_g_Ability["nam"], 6, x002075_g_Key["stu"] )
			else
				AddNumText( sceneId, x002075_g_ScriptId, "Th�ng c�p k� n�ng", 6, x002075_g_Key["lup"] )
			end			
			AddNumText( sceneId, x002075_g_ScriptId, "C�i g� c�ng kh�ng l�m...", -1, x002075_g_Key["nul"] )
		end
		AddNumText( sceneId, x002075_g_ScriptId, "Gi�i thi�u иnh V� Ph�", 11, x002075_g_Key["des"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002075_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	local exp = GetAbilityExp( sceneId, selfId, x002075_g_Ability["aid"] )	--������
	local ret, demandMoney, _, limitAbilityExp, limitAbilityExpShow, _, limitLevel
		= LuaFnGetAbilityLevelUpConfig( x002075_g_Ability["aid"], lev + 1 )

	--Gi�i thi�u иnh V� Ph�
	if key == x002075_g_Key["des"]	then

		x002075_MsgBox( sceneId, selfId, targetId, "#{function_help_020}" )

	--H�c ����
	elseif key == x002075_g_Key["stu"]	then
	
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end

		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["stu"], "H�c t�p k� n�ng n�y c�n ti�u hao #{_EXCHG" .. demandMoney .. "} tinh l�c, ti�p t�c?" )
	
	--ȷ��H�c 
	elseif key == x002075_g_Key["sty"] then
	
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end

		if lev > 0 then
			x002075_MsgBox( sceneId, selfId, targetId, "Ng߽i �� h�c t�p k� n�ng n�y!" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "S� ti�n kh�ng ��, kh�ng th� h�c t�p!" )
			return 0
		end

		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], 1 )
		x002075_SetMyPrescription( sceneId, selfId, 1 )
		x002075_MsgBox( sceneId, selfId, targetId, "Ch�c m�ng ng߽i �� h�c ���c "..x002075_g_Ability["nam"]..", h�y ch� t�o th�t nhi�u � th�ng c�p k� n�ng!" )

	--Th�ng c�p k� n�ng
	elseif key == x002075_g_Key["lup"] then
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end
		
		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "�� �� c�p �, kh�ng c�n th�ng c�p." )
			return 0
		end
		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["lup"], "Th�ng c�p k� n�ng c�n #{_EXCHG" .. demandMoney .. "}, ti�p t�c?" )

	--ȷ������
	elseif key == x002075_g_Key["upy"] then
		if ret ~= 1 then
			return 0
		end
		
		if GetLevel( sceneId, selfId ) < 30 then--�Ƿ�����ߵ����Ҳ����Ҫ��ʾ��
			return 0
		end

		if lev < 1 then
			x002075_MsgBox( sceneId, selfId, targetId, "Ng߽i c�n ch�a h�c "..x002075_g_Ability["nam"]..", tr߾c ti�n h�y h�c k� n�ng n�y r�i m�i �n t�m ta th�ng c�p." )
			return 0
		end

		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "�� �� c�p �, kh�ng c�n th�ng c�p." )
			return 0
		end

		if exp < limitAbilityExp then
			x002075_MsgBox( sceneId, selfId, targetId, "C�n" .. limitAbilityExpShow .. " �i�m thu�n th�c � ti�n h�nh th�ng c�p." )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "C�n#{_EXCHG" .. demandMoney .. "} � th�ng c�p." )
			return 0
		end

		--�����˼���
		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], lev+1 )
		x002075_SetMyPrescription( sceneId, selfId, lev+1 )
		x002075_MsgBox( sceneId, selfId, targetId, "Th�ng c�p th�nh c�ng, ng߽i c� th� ch� t�o ph� ch� cao c�p r�i!" )

	else
		
		--�رս���		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	end

	return 1
end

--**********************************
--������Ӧ�ȼ����䷽
--**********************************
function x002075_SetMyPrescription( sceneId, selfId, lev )
	--ÿ���ȼ���Ӧ6���䷽����ɫ����ɫ����ɫ����ɫ����ɫ����ɫ
	for i=0, 5 do
		SetPrescription( sceneId, selfId, 510+(lev-1)*6+i, 1 )
	end
end

--**********************************
--ѯ���Ƿ�������
--**********************************
function x002075_OnAsk( sceneId, selfId, targetId, key, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText( sceneId, x002075_g_ScriptId, "Th�", -1, key*100+1 )
		AddNumText( sceneId, x002075_g_ScriptId, "Ph�", -1, key*100 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002075_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
