-- T� Ch�u
--ѭ������
--��·�ű�
x500029_g_scriptId = 500029

-- ��·���� type: 1 Ϊ��c�p�˵�, 2 Ϊֱ����·
x500029_g_Signpost = {
	{ type=2, name="T�i tr� s�t kh�", x=298, y=162, tip="Tuy�t Tr�c Li�n ", desc="Tuy�t Tr�c Li�n (298,162) � g�n B�c M�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500029_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500029_g_Signpost do
		AddNumText(sceneId, x500029_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500029_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500029_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end
