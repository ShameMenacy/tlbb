--��ħ�飨����

--�ű���
x338512_g_scriptId = 338512

x338512_g_event = 050221
--**********************************
--ˢ���¼�
--**********************************
function x338512_OnDefaultEvent( sceneId, selfId, bagIndex )
	
	local ret = CallScriptFunction( x338512_g_event, "IsMonster", sceneId, selfId, bagIndex )
	if ret == 1 then
		CallScriptFunction( x338512_g_event, "GenerateMonster", sceneId, selfId, 5 )
	end
	
end

function x338512_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
