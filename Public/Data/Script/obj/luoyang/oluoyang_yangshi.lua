--����NPC
--��ʱ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000040_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " C� n߽ng"
	else
		PlayerSex = " Thi�u hi�p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", c�c h� c�ng �n b�i ki�n s� ph� �? Ta v� s� huynh �n ��y th�m s� ph�, kh�ng g�p ���c s� ph� b�n ta s� kh�ng �i ��u c�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
