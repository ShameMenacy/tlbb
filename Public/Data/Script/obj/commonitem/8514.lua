--��ħ�飨�棩

--�ű���
x338514_g_scriptId = 338514

x338514_g_event = 050221
--**********************************
--ˢ���¼�
--**********************************
function x338514_OnDefaultEvent( sceneId, selfId, bagIndex )
	
	local ret = CallScriptFunction( x338514_g_event, "IsMonster", sceneId, selfId, bagIndex )
	if ret == 1 then
		CallScriptFunction( x338514_g_event, "GenerateMonster", sceneId, selfId, 2 )
	end

end

function x338514_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
