--����NPC
--��ӱ��
--��ҩ��

x000085_g_shoptableindex=29

--**********************************
--�¼��������
--**********************************
function x000085_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta chuy�n nghi�n c�u ch� t�o thu�c b�. Ch� m�t ng�y n�o �� nghi�n c�u th�nh c�ng, ta c� th� b�n cho ng߽i l�y ti�n. H�, ng߶i b�nh th߶ng th� ta s� kh�ng n�i ��u nha...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--DispatchShopItem( sceneId, selfId,targetId, x000085_g_shoptableindex )
end
