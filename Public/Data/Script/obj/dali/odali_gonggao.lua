--��������

--�����
x714014_g_MissionId = 704

x714014_g_SignPost = {x = 160, z = 156, tip = "Tri�u Thi�n S�"}

function x714014_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	if	IsHaveMission(sceneId,selfId,x714014_g_MissionId)>0	 then
		misIndex = GetMissionIndexByID(sceneId,selfId,x714014_g_MissionId)
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	    SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"#{BGDH_81009_01}")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"#GThi�n Long B�t B� vi�t h�a b�i #r#YH� Ho�ng ( S�i Kool - Facebook )#G. Have fun!...")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x714014_g_SignPost.x, x714014_g_SignPost.z, x714014_g_SignPost.tip )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Khai m�c V� L�m ��i H�i c�n 7 kh�c.")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
	end
end
