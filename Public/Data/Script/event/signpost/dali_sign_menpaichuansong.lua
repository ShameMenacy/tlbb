-- ����
--���ɴ�����
--��·�ű�
x500041_g_scriptId = 500041

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500041_g_Signpost = {
	{ type=2, name="Thi�u L�m", x=276, y=229, tip="Tu� D�ch ", desc="T�ng nh�n Tu� D�ch [276,229], ng߶i d�n �߶ng ph�i Thi�u L�m, � g�c ��ng B�c Ng� Hoa ��n trung t�m ��i L�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Thi�n Long", x=288, y=228, tip="Ph� Tham ", desc="T�ng nh�n Ph� Tham [288,228], ng߶i d�n �߶ng ph�i Thi�n Long, � g�c ��ng B�c Ng� Hoa ��n trung t�m ��i L�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�u Dao", x=288, y=225, tip="��m T� V� ", desc="��m T� V� [288,225], ng߶i d�n �߶ng ph�i Ti�u Dao, � g�c ��ng B�c Ng� Hoa ��n trung t�m ��i L�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nga My", x=276, y=235, tip="L� Tam N߽ng ", desc="C� c� L� Tam N߽ng [276,235], ng߶i d�n �߶ng ph�i Nga My, � g�c ��ng B�c Ng� Hoa ��n trung t�m ��i L�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Thi�n S�n", x=288, y=235, tip="Tr�nh Thanh S߽ng ", desc="Tr�nh Thanh S߽ng [288,235], ng߶i d�n �߶ng ph�i Thi�n S�n, � g�c T�y B�c Ng� Hoa ��n trung t�m ��i L�, c�ch Nhi�p Ch�nh-ng߶i gi�i thi�u b�i s� kh�ng xa. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Tinh T�c", x=288, y=232, tip="H�i Phong T� ", desc="Ю t� H�i Phong T� [288,232], ng߶i d�n �߶ng ph�i Tinh T�c, � g�c T�y B�c Ng� Hoa ��n trung t�m ��i L�, c�ch Nhi�p Ch�nh-ng߶i gi�i thi�u b�i s� kh�ng xa. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Minh Gi�o", x=288, y=238, tip="Th�ch B�o ", desc="S� Th�ch B�o [288,238], ng߶i d�n �߶ng ph�i Minh Gi�o, � g�c T�y B�c Ng� Hoa ��n trung t�m ��i L�, c�ch Nhi�p Ch�nh-ng߶i gi�i thi�u b�i s� kh�ng xa. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="V� �ang", x=276, y=225, tip="Tr߽ng Ho�ch ", desc="Tr߽ng Ho�ch ��o tr߷ng [276,225], ng߶i d�n �߶ng ph�i V� �ang, � g�c T�y B�c Ng� Hoa ��n trung t�m ��i L�, c�ch Nhi�p Ch�nh-ng߶i gi�i thi�u b�i s� kh�ng xa. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="C�i Bang", x=276, y=232, tip="Gi�n Ninh ", desc="Tr߷ng l�o Gi�n Ninh [276,232], ng߶i d�n �߶ng ph�i C�i Bang, � g�c T�y B�c Ng� Hoa ��n trung t�m ��i L�, c�ch Nhi�p Ch�nh-ng߶i gi�i thi�u b�i s� kh�ng xa. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500041_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500041_g_Signpost do
		AddNumText(sceneId, x500041_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500041_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500041_g_Signpost[GetNumText()]

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
