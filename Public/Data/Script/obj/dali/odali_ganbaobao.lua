--����NPC
--�ʱ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002085_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H�. K� n�o l�m vi�c v� s�, tr�i l߽ng t�m, kh�ng c�n n�i ta c�ng s� �n tr�ng tr� k� �� d� l� ai!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
