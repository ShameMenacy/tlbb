--���ɽ���װ��������

--�ű���
x808004_g_ScriptId			= 808004

--������
x808004_g_Key			=
{
	["eqp"]					= 100,	--��ȡװ��
	["pet"]					= 101,	--��ȡ����
	["menpai"]				= 102,	--��ȡ����ʱװ
}

--װ������
x808004_g_EqpNum	= 9
x808004_g_Eqp			=
{
	[0]	= { weapon = 10430010, armor = 10141136, menpai=10124009 },	--����
	[1]	= { weapon = 10431110, armor = 10141136, menpai=10124010 },	--����
	[2]	= { weapon = 10431210, armor = 10141136, menpai=10124011 },	--ؤ��
	[3]	= { weapon = 10432010, armor = 10141136, menpai=10124012 },	--�䵱
	[4]	= { weapon = 10432110, armor = 10141136, menpai=10124013 },	--����
	[5]	= { weapon = 10433210, armor = 10141136, menpai=10124014 },	--����
	[6]	= { weapon = 10435210, armor = 10141136, menpai=10124015 },	--����
	[7]	= { weapon = 10434010, armor = 10141136, menpai=10124016 },	--��ɽ
	[8] = { weapon = 10435110, armor = 10141136, menpai=10124017 },	--��ң
}

--���޽���
x808004_g_PetNum	= 3
x808004_g_Pet			=
{
	itemRcvErrMsg = "Khi t�ng tr�n th� cho c�c h�, c�n ph�i ��a c� � ch�i v� � �n cho tr�n th�. Xin � hai khoang tr�ng trong H�nh trang v� h�y t�i t�m t�i h�.",
	[1]	= { id = 6069, name = "M�c K�nh Mi�u B�o B�o",   itemList = { { id = 30607001, num = 1 } } },
	[2]	= { id = 6061, name = "M�c K�nh Mi�u Bi�n D�", itemList = { { id = 30607001, num = 1 } } },
	[3]	= { id = 6062, name = "M�c K�nh Mi�u Bi�n D�", itemList = { { id = 30607001, num = 1 } } },
}

--**********************************
--������ں���
--**********************************
function x808004_OnDefaultEvent( sceneId, selfId, targetId, menpai )
	local	mp	= GetMenPai( sceneId, selfId )
	if mp < 0 or mp >= x808004_g_EqpNum then
		x808004_MsgBox( sceneId, selfId, targetId, "C�c h� v�n ch�a gia nh�p m�n ph�i!" )
		return
	end
	if mp ~= menpai then
		x808004_MsgBox( sceneId, selfId, targetId, "C�c h� kh�ng ph�i l� � t� c�a b�n m�n!" )
		return
	end

	local	flag	= GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY )
	local	fEqp	= floor( flag / 10 )
	local	fPet	= flag - fEqp * 10
	local	str

	--ѡ��ť
	local	key	= GetNumText()
	local	rnd
	
		
	if key == x808004_g_Key["eqp"] then
		if fEqp > 0 then
			return
		end

		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x808004_MsgBox( sceneId, selfId, targetId, "Kh�ng gian trong H�nh trang c�a c�c h� kh�ng ��. Ch�nh l� xong h�y t�i t�m t�i h�." )
			return
		end
		if TryRecieveItem( sceneId, selfId, x808004_g_Eqp[mp].weapon, 1 ) >= 0 then
			str		= "#YC�c h� nh�n ���c "..GetItemName( sceneId, x808004_g_Eqp[mp].weapon ).."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
		end
		if TryRecieveItem( sceneId, selfId, x808004_g_Eqp[mp].armor, 1 ) >= 0 then
			str		= "#YC�c h� nh�n ���c "..GetItemName( sceneId, x808004_g_Eqp[mp].armor ).."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
		end
		x808004_MsgBox( sceneId, selfId, targetId, "H�y xem h�nh trang, c�c h� �� ��t ���c t�ng th߷ng trang b�!" )
		fEqp		= 1
	elseif key == x808004_g_Key["pet"] then
		if fPet > 0 then
			return
		end

		rnd			= random( getn( x808004_g_Pet ) )

		local itemList = x808004_g_Pet[rnd].itemList
		if not itemList then
			return
		end

		LuaFnBeginAddItem( sceneId )
			for i, item in itemList do
				LuaFnAddItem( sceneId, item.id, item.num )
			end
		local nRet = LuaFnEndAddItem( sceneId, selfId )
		if nRet ~= 1 then
			x808004_MsgBox( sceneId, selfId, targetId, x808004_g_Pet.itemRcvErrMsg )
			return
		end

		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x808004_g_Pet[rnd].id, 10, 0);
		if createPetRet and createPetRet == 1 then
			LuaFnAddItemListToHuman( sceneId, selfId )
			str		= "#YC�c h� nh�n ���c "..x808004_g_Pet[rnd].name.."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
			x808004_MsgBox( sceneId, selfId, targetId, "H�y xem h�nh trang, c�c h� �� ��t ���c t�ng th߷ng tr�n th�!" )
			fPet	= 1
		else
			x808004_MsgBox( sceneId, selfId, targetId, "C�c h� kh�ng th� mang theo qu� nhi�u tr�n th�!" )
		end
	elseif key == x808004_g_Key["menpai"] then
		if GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY_SHIZHUANG ) > 0 then
			return
		end

		if GetItemCount(sceneId,selfId, x808004_g_Eqp[mp].menpai) > 0 then
			x808004_MsgBox( sceneId, selfId, targetId, "Tr�n ng߶i c�c h� �� c� th�i trang m�n ph�i, kh�ng th� nh�n th�m!" )
			return
		end
		
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x808004_MsgBox( sceneId, selfId, targetId, "Kh�ng gian trong H�nh trang c�a c�c h� kh�ng ��. Ch�nh l� xong h�y t�i t�m t�i h�!" )
			return
		end
		if TryRecieveItem( sceneId, selfId, x808004_g_Eqp[mp].menpai, 1 ) >= 0 then
			str		= "#YC�c h� nh�n ���c "..GetItemName( sceneId, x808004_g_Eqp[mp].menpai ).."!"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x808004_NotifyTip( sceneId, selfId, str )
		end
		SetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY_SHIZHUANG, 1 )		
		return
	end
	
	--���ɽ����ı��
	SetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY, floor( fEqp * 10 + fPet ) )
end

--**********************************
--�о��¼�
--**********************************
function x808004_OnEnumerate( sceneId, selfId, targetId )
	--�������ɽ����ı�ǣ�������ֻ�ܽ�ȡһ��
	local	flag		= GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY )
	local	bShiZhuang	= GetMissionData( sceneId, selfId, MD_MENPAI_BOUNTY_SHIZHUANG )
	local	fEqp	= floor( flag / 10 )
	local	fPet	= flag - fEqp * 10
	if fEqp == 0 then
		AddNumText( sceneId, x808004_g_ScriptId, "Nh�n trang b�", 4, x808004_g_Key["eqp"] )
	end
	if fPet == 0 then
		AddNumText( sceneId, x808004_g_ScriptId, "Nh�n tr�n th�", 4, x808004_g_Key["pet"] )
	end
	if bShiZhuang <= 0 then
		AddNumText( sceneId, x808004_g_ScriptId, "Nh�n th�i trang m�n ph�i", 4, x808004_g_Key["menpai"] )
	end
	
end

--**********************************
--�Ի�����ʾ
--**********************************
function x808004_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808004_NotifyTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end