--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002052_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"V߽ng phi ng�y ng�y �n kh�ng no, ng� kh�ng y�n, th�n h�nh suy s�p tr�ng th�y...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
