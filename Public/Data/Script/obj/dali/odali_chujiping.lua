--����NPC
--����ƽ
--����������

x002077_g_scriptId = 002077
x002077_g_shoptableindex = 10

--**********************************
--�¼��������
--**********************************
function x002077_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "B�n nh�n b�n ra c�c lo�i �c nh�t v� nh� b� ch� ph�, c� kh� n�ng gi�m �nh thu�c t�nh c�c lo�i h�nh trang b�. Ng߽i c� mu�n xem kh�ng?" )
		AddNumText( sceneId, x002077_g_scriptId, "Xem ng߽i b�n nh�ng g�", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002077_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002077_g_shoptableindex )
	end
end
