--����NPC
--��ʿ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002065_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Lu�n v� c�ng, h�y �n L�i ��i...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
