--����NPC
--����ү
--Ԫ������

--**********************************
--�¼��������
--**********************************
function x002059_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H�nh t�u giang h� �߽ng nhi�n k� ch�c quy�n c�ng cao th� l�i c�ng gi�u c�. T�c ng� c� c�u 'C� ti�n c� th� ma sui qu� khi�n'. Trong tay c� Nguy�n B�o Kim T� c� th� l�m r�t nhi�u vi�c l�n, ng߶i ng߶i ph�i ng߾c nh�n...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
