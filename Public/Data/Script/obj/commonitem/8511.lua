--��ħ�飨�磩

--�ű���
x338511_g_scriptId = 338511

x338511_g_event = 050221
--**********************************
--ˢ���¼�
--**********************************
function x338511_OnDefaultEvent( sceneId, selfId, bagIndex )
	
	local ret = CallScriptFunction( x338511_g_event, "IsMonster", sceneId, selfId, bagIndex )
	if ret == 1 then
		CallScriptFunction( x338511_g_event, "GenerateMonster", sceneId, selfId, 1 )
	end
	
end

function x338511_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
