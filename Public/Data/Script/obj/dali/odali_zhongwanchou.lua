--����NPC
--�����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002086_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"�o�n Ch�nh Thu�n tr�i sinh t�nh phong l�u, t�o nhi�u oan nghi�t, k�t qu� l� th�n sinh n� nh�n m�n nhau th�nh gian. Th�t l� ti b� v� s� chi c�c...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
