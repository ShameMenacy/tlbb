--����NPC
--�ƹ���
--��װ��

x002024_g_scriptId = 002024
x002024_g_shoptableindex = 2

--**********************************
--�¼��������
--**********************************
function x002024_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ti�m ta c� r�t nhi�u th߽ng ph�m b�n ch�y, hoan ngh�nh �� gh� th�m!" )
		AddNumText( sceneId, x002024_g_scriptId, "Mua th߽ng ph�m", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002024_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002024_g_shoptableindex )
	end
end
