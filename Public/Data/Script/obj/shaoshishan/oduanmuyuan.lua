--��翷帱��....
--��ľԪ�Ի��ű�....

--�ű���
x890074_g_ScriptId	= 890074

--�����߼��ű���....
x890074_g_FuBenScriptId = 890063

--**********************************
--����....
--**********************************
function x890074_OnDie( sceneId, selfId, killerId )

	--�����û����ս������ˮ�������ս����ˮ....
	if 2 ~= CallScriptFunction( x890074_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "DingChunQiu" )	then
		CallScriptFunction( x890074_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "DingChunQiu", 1 )
	end
	-- zchw ȫ�򹫸�
	local	playerName	= GetName( sceneId, killerId )
	
	--ɱ��������ǳ������ȡ�����˵�����....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--��������������ȡ�ӳ�������....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("Thi�u Th�t S�n #{_INFOUSR%s}D�n d�t  �i ng� m�t �߶ng h�t vang, ��nh b�i  #Y Thi�n S�n аng L�o #W,#Y Thi�n S�n аng L�o #W t�t th� ti�n b�t l�y #{_INFOUSR%s}, v� h�n o�n h�n  n�i: Th�nh qu�...... Th�nh qu� ta c�ng......", playerName,playerName); --��ƽ��
		AddGlobalCountNews( sceneId, str )
	end
end
