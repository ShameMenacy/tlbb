--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002022_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� h� v� ��i L� Th�nh!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
