--�����BOSSˢ�¹���

--�ű����
x502003_g_ScriptId	= 502003

--**********************************
--Monster Timer
--**********************************
function x502003_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--ȫ�򹫸�
	local	nam_mob	= GetName( sceneId, objId )
	if nam_mob ~= nil then
		str	= format( "#cff99ccCh� nh�n th�t s� c�a #GNg�n Ngai Tuy�t Nguy�n l� X� Nga V߽ng #cff99ccv� ��i �� vung quy�n tr��ng xu�t hi�n t�i l�nh th� c�a n� r�i!", nam_mob )
		AddGlobalCountNews( sceneId, str )
	end

	--ȡ��ʱ��
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--�����¼�
--**********************************
function x502003_OnDie( sceneId, objId, killerId )
	--ȫ�򹫸�
	--local	nam_mob	= GetName( sceneId, objId )
	--local	nam_ply	= GetName( sceneId, killerId )
	--if nam_mob ~= nil and nam_ply ~= nil then
		--str	= format( "#P����#W#{_INFOUSR%s}#P��������һ����ս��#G%s#P���ڱ�����ˡ�", nam_ply, nam_mob )
		--AddGlobalCountNews( sceneId, str )
	--end
end
