-- 005120
-- �������
--QQ:58977573 ��д

-- ʹ��һЩ������Ψһ��ȫ�ֱ�������������

-- ����ļ�ʱ���ڵ�һ��ҽ��뱾�������Լ������������رա�
function x005120_OnSceneTimer(sceneId)
          
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
        for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		x005120_Dogodali( sceneId, nHumanId )
	end
end

function x005120_Dogodali( sceneId, selfId )
	   local guildid = GetHumanGuildID(sceneId, selfId)
	      if guildid == -1 then
	   CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 375, 225 )
	      end
end
