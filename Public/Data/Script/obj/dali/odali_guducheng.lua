--����NPC
--���Ƴ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002012_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "C� n߽ng"
	else
		PlayerSex = "Thi�u hi�p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", �� l�u ng�y kh�ng th�y ng߽i. Ho�ng th��ng �ang ch� ng߽i ��!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
