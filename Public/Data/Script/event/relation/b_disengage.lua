-- ǿ��H�y b� k�t giao����

--�ű���
x806000_g_scriptId = 806000

--��ʾ��Ϣ
x806000_g_msg_swear					= {}
x806000_g_msg_swear["uns"]	= "H�y b� k�t giao"
x806000_g_msg_swear["cas"]	= "C�c h� ch�a t�ng k�t giao n�n kh�ng c�n h�y b�!"
x806000_g_msg_swear["unc"]	= "Sau khi h�y b� k�t giao, � h�o h�u v�i ng߶i ch�i �� s� gi�m xu�ng 500 �i�m. M�t �i m�t ng߶i b�n th�t l� ��ng ti�c. Ph�i ch�ng c�c h� v�n c� � �nh h�y b� k�t giao?"

--Key for AddNumText
x806000_g_key					= {}
x806000_g_key["uns"]	= 10000	--H�y b� k�t giao
x806000_g_key["all"]	= 20000	--ͬ��H�y b� k�t giao
x806000_g_key["una"]	= 30000	--ȡ��H�y b� k�t giao

--**********************************
--�о��¼�
--**********************************
function x806000_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806000_g_scriptId, x806000_g_msg_swear["uns"], 6, x806000_g_key["uns"] )
end


--**********************************
--������ں���
--**********************************
function x806000_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()

	--H�y b� k�t giao
	if key == x806000_g_key["uns"] then
		if x806000_CheckAccept( sceneId, selfId, targetId ) == 0 then
			return 0
		end
		x806000_OnSubmit( sceneId, selfId, targetId )
		return 1
	end

	--ͬ����
	if key == x806000_g_key["all"] then
		x806000_DoUnswear( sceneId, selfId, targetId )

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end

	--ȡ�����
	if key == x806000_g_key["una"] then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end
end

--**********************************
--����������
--**********************************
function x806000_CheckAccept( sceneId, selfId, targetId )
	local BrotherNum = LuaFnIsSweared(sceneId, selfId)
	if BrotherNum == 0 then
		x806000_MessageBox( sceneId, selfId, targetId, x806000_g_msg_swear["cas"] )
		return 0
	end
end

--**********************************
--ȷ�ϴ���
--**********************************
function x806000_OnSubmit( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x806000_g_msg_swear["unc"] )
		AddNumText( sceneId, x806000_g_scriptId, "X�c nh�n", 6, x806000_g_key["all"] )
		AddNumText( sceneId, x806000_g_scriptId, "H�y b�", 8, x806000_g_key["una"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806000_MessageBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end


--**********************************
--ǿ��H�y b� k�t giao
--**********************************
function x806000_DoUnswear( sceneId, selfId, targetId )
	local BrotherNum = LuaFnIsSweared(sceneId, selfId)
	local selfName = LuaFnGetName( sceneId, selfId )
	local selfGuid = LuaFnGetGUID( sceneId, selfId )
	local AllDismiss = 0
	
	--���������ֻ�������ˣ���ȫ����ɢ
	if BrotherNum == 1 then
		AllDismiss = 1
	end
	
	--ɾ���ƺ�
	AwardJieBaiTitle( sceneId, selfId, "" )
	DispatchAllTitle( sceneId, selfId )
	
	--������ѵ�GUID
	local i = 0
	local BrotherGuid = {}
	while i < BrotherNum do
		BrotherGuid[i] = LuaFnGetBrotherGuid(sceneId, selfId, i)
		i = i + 1
	end

	--��һ��H�y b� k�t giao��ϵ	
	i = 0
	while i < BrotherNum do
		local theGUID = BrotherGuid[i]
		if theGUID ~= nil then

			--�����Ѻöȵ�500
			local FriendPoint = LuaFnGetFriendPointByGUID( sceneId, selfId, theGUID )
			if FriendPoint > 500 then
				LuaFnSetFriendPointByGUID( sceneId, selfId, theGUID, 500 )
			end

			--ȡ�����
			LuaFnUnswear( sceneId, selfId, theGUID )

			--������ͨ�ʼ�
			local FriendName = LuaFnGetFriendName( sceneId, selfId, theGUID )
			LuaFnSendSystemMail( sceneId, FriendName, selfName .. " �� x�a b� quan h� k�t b�i v�i c�c h�..." )
			--LuaFnSendNormalMail( sceneId, selfId, FriendName, selfName .. "�Ѿ���������˽�ݹ�ϵ��" )

			--���Ϳ�ִ���ʼ�
			LuaFnSendScriptMail( sceneId, FriendName, MAIL_UNSWEAR, selfGuid, AllDismiss, 0 )

		end
		i = i + 1
	end
	
end
