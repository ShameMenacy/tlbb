--����ƽ

--�ű���
x002076_g_scriptId 				= 002076
x002076_g_shoptableindex	=	33
--**********************************
--�¼��������
--**********************************
function x002076_OnDefaultEvent( sceneId, selfId,targetId )
	AddText( sceneId, "#{QZG_80919_1}" )
	AddNumText( sceneId, x002076_g_scriptId, "Gi�i thi�u T�o V�n", 11, 1 )
	AddNumText( sceneId, x002076_g_scriptId, "M� Th߽ng �i�m", 7, 2 )
end


--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002076_OnEventRequest( sceneId, selfId, targetId, eventId )
	--�ز��̵�
	if GetNumText() == 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SHANGREN_JIESHAO_02}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		if(LuaFnGetAvailableItemCount(sceneId, selfId, 40002000) == 1 ) then
			DispatchShopItem( sceneId, selfId, targetId, x002076_g_shoptableindex )
		else
			BeginEvent(sceneId)
				AddText( sceneId, "Trong ng߶i c�c h� kh�ng c� ng�n phi�u, kh�ng th� m� c�a h�ng." )		
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
end
