--��ɽNPC
--��ɽͯ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x017000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Con ranh L� Thu Th�y n� t�nh ��ng ng�y l�o l�o c�i l�o ho�n �ng � �n ph�... Phen n�y l�o l�o ph�i quy�t m�t tr�n sinh t� v�i n�...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
