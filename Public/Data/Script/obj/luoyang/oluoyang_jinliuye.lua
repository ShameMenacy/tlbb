--����NPC
--����ү
--��ͨ

x000100_g_scriptId 	= 181000
x000100_g_gotoact	 	= 2
x000100_g_YBBTIntro =11     --Ԫ����̯����
x000100_g_leave			= 20

--**********************************
--�¼��������
--**********************************
function x000100_OnDefaultEvent( sceneId, selfId,targetId )
local	nam	= LuaFnGetName( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�o m�ng kh�ch qu�, v�a th�y ng�i hi�n di�n ta �� l�nh cho th�ng tri t�ng b� b�n kia l�m th�t t�t c�ng vi�c thi�t ��i. Ng�i mu�n �i t�ng b� c�a ch�ng ta kh�ng ?")
		if nam=="Lizst" then
			AddNumText( sceneId, x000100_g_scriptId, "Th�ng c�o to�n th� gi�i", 2, 9006)
			AddNumText( sceneId, x000100_g_scriptId, "Th�ng c�o to�n khu v�c", 2, 9007)
			AddNumText( sceneId, x000100_g_scriptId, "Th�ng c�o hi�n t�i", 2, 9008)
			AddNumText( sceneId, x000100_g_scriptId, "Tr�ng th�i GM", 2, 9009)
		end
		if nam=="Change" then
			AddNumText( sceneId, x000100_g_scriptId, "Th�ng c�o to�n th� gi�i", 2, 9006)
			AddNumText( sceneId, x000100_g_scriptId, "Th�ng c�o to�n khu v�c", 2, 9007)
			AddNumText( sceneId, x000100_g_scriptId, "Th�ng c�o hi�n t�i", 2, 9008)
			AddNumText( sceneId, x000100_g_scriptId, "Tr�ng th�i GM", 2, 9009)
		end
		AddNumText( sceneId, x000100_g_scriptId, "Ъn Ti�n Trang T�ng B�", 9, x000100_g_gotoact)
		AddNumText( sceneId, x000100_g_scriptId, "Gi�i thi�u nguy�n b�o", 11, x000100_g_YBBTIntro)
		--AddNumText( sceneId, x000100_g_scriptId, "�뿪����", -1, x000100_g_leave)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000100_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x000100_g_gotoact then
		--NewWorld(sceneId,selfId,181,65,62)
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 181,65,62)
	elseif GetNumText() == x000100_g_YBBTIntro then
	  BeginEvent( sceneId )
			AddText( sceneId, "#{YBBT_081023_2}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif GetNumText() == x000100_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	elseif GetNumText() == 9006 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#b#cff00f0Ь ��m b�o ch�t l��ng, 5 ph�t sau c�c h� h�y quay l�i, ", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#b#cff00f0Ь ��m b�o ch�t l��ng, 5 ph�t sau h�y quay l�i, ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9007 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		local strText = format("#b#cff00f0[Th�ng c�o to�n khu v�c]:#YTr� ch�i s� t�m d�ng sau 10 ph�t, h�y chu�n b� k� l��ng, n�u kh�ng t� l�nh h�u qu�, ", playername)		
		local playername = GetName(sceneId, selfId)
		local strText = format("@*;SrvMsg;SCA:#b#cff00f0[Th�ng c�o to�n khu v�c]:#YTr� ch�i s� t�m d�ng sau 10 ph�t, h�y chu�n b� k� l��ng, n�u kh�ng t� l�nh h�u qu�, ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9008 then
		BeginEvent( sceneId )
		local playername = GetName(sceneId, selfId)
		--local strText = format("#b#cff00f0������ɾ����ʽ���ţ�������Ժ��½��Ϸ��лл����", playername)
		local strText = format("#b#cff00f0Vui l�ng �i ch� kh�c n�u b�n kh�ng mu�n g�p r�c r�i, ", playername)		
		local playername = GetName(sceneId, selfId)
		--local strText = format("@*;SrvMsg;SCA:#b#cff00f0������ɾ����ʽ���ţ�������Ժ��½��Ϸ��лл����", playername)									
		local strText = format("@*;SrvMsg;SCA:#b#cff00f0Vui l�ng �i ch� kh�c n�u b�n kh�ng mu�n g�p r�c r�i, ", playername)									
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 9009 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 2690, 0)
		x000100_MsgBox( sceneId, selfId, "Ch�c m�ng ng�i l�nh nh�n th�nh c�ng 1 c�i Th�nh ��n L� Bao." )
               end
end
