--���䵺BOSS��

--�ű����
x501999_g_ScriptId	= 501999

--**********************************
--Monster Timer
--**********************************
function x501999_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--ȫ�򹫸�

	str	= format( "#cff99cc�c th� tr�n#G Huy�n V� ��o #G%s#cff99cc �� xu�t hi�n, xin c�c v� ��i hi�p mau ch�ng �n Huy�n V� ��o thu ph�c, tr�nh g�y h�i cho b�ch t�nh." )
	AddGlobalCountNews( sceneId, str )

	--ȡ��ʱ��
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--�����¼�
--**********************************
function x501999_OnDie( sceneId, objId, killerId )

	--ȫ�򹫸�
	local	nam_ply	= GetName( sceneId, killerId )
	
	--ɱ��������ǳ������ȡ�����˵�����....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		nam_ply = GetName( sceneId, playerID )
	end
	
	--��������������ȡ�ӳ�������....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		nam_ply = GetName( sceneId, leaderID )
	end
	
	if nam_ply ~= nil then
		str	= format( "#{_INFOUSR%s}#cff99cc c�ng ng߶i trong �i ng� tr�i qua 1 tr�n chi�n gian kh�, #G%s#cff99cccu�i c�ng c�ng b� ��nh b�i.", nam_ply )
		AddGlobalCountNews( sceneId, str )
	end
	
end
