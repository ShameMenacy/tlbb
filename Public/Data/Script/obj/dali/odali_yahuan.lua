--����NPC
--Ѿ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002047_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� Nha Ho�n v߽ng ph�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
