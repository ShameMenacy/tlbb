--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002011_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "C� n߽ng"
	else
		PlayerSex = "Thi�u hi�p"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"C�ng nhau tu luy�n m�t lo�i tuy�t th� v� c�ng, ch�ng nh� ch�ng ta c�ng tr� th�nh Ho�ng Gia H� V� sao? "..PlayerName..PlayerSex..", ng߽i c� th� b�i nh�p th�p ��i m�n ph�i. Ng� Hoa ��n c� r�t nhi�u Th�p ��i m�n ph�i ch� d�n nh�n, ng߽i c� th� �n �� h�c h�i th�m.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
