--����NPC
--����è
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002066_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"V�n Phi Phi t� t� s� h�u r�t nhi�u tr�n th� qu� hi�m. Phi Phi, Phi Phi, ta y�u t� gi�ng nh� chu�t y�u ��i m�!")
	elseif roll <= 1 then
			AddText(sceneId,"��ng cho l� ta kh�ng bi�t n�i, Phi Phi t� t� �� d�y ta n�i r�i. Kh�ng tin ch�ng ta h�y t� th�!")
	else
			AddText(sceneId,"Ng߽i bi�t kh�ng, nghe n�i Phi Phi t� t� c�n hai ch� em sinh ba n�a, gi�ng nhau nh� ��c...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
