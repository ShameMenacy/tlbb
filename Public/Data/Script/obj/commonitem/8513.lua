--��ħ�飨�أ�

--�ű���
x338513_g_scriptId = 338513

x338513_g_event = 050221
--**********************************
--ˢ���¼�
--**********************************
function x338513_OnDefaultEvent( sceneId, selfId, bagIndex )
	
	local ret = CallScriptFunction( x338513_g_event, "IsMonster", sceneId, selfId, bagIndex )
	if ret == 1 then
		CallScriptFunction( x338513_g_event, "GenerateMonster", sceneId, selfId, 3 )
	end
	
end

function x338513_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
