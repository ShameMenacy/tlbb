--����NPC
--���޹�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002067_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"V�n Di�u Di�u t� t� s� h�u r�t nhi�u tr�n th� qu� hi�m. Di�u Di�u, Di�u Di�u ta y�u t� t�a nh� chu�t y�u ��i m�!")
	elseif roll <= 1 then
			AddText(sceneId,"��ng cho l� ta kh�ng bi�t n�i! Di�u Di�u t� t� �� d�y ta n�i r�i. Kh�ng tin ch�ng ta h�y t� th�!")
	else
			AddText(sceneId,"Ng߽i bi�t kh�ng. Nghe n�i Di�u Di�u t� t� c�n hai ch� em sinh ��i n�a, gi�ng nhau nh� ��c...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
