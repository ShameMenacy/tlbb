-- T� Ch�u
--�����
--��·�ű�
x500023_g_scriptId = 500023

-- ��·���� type: 1 Ϊ��c�p�˵�, 2 Ϊֱ����·
x500023_g_Signpost = {
		{ type=2, name="��i s� tr�ng tr�t", x=125, y=274, tip="L�m H�a T�nh ", desc="Ra kh�i T� Ch�u ��ng M�n �i v� h߾ng Nam, qua 1 c�y c�u nh� s� nh�n th�y ��i s� tr�ng tr�t L�m H�a T�nh (125,274) . �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� khai th�c m�", x=363, y=231, tip="Tr߽ng Ti�u H� ", desc="��i s� khai kho�ng Tr߽ng Ti�u H� (363,231) trong ti�m v� kh� � Th�nh ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� h�i thu�c", x=217, y=200, tip="V߽ng Th�m Chi ", desc="��i s� h�i th�o d��c V߽ng Th�m Chi (217,200) � T�y Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� c�u c�", x=335, y=170, tip="Tr߽ng B�nh ", desc="��i s� c�u c� Tr߽ng B�nh (335,170) � b�n B�c ��ng th�nh. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� c�ng ngh�", x=206, y=224, tip="T�ng Tam T�nh ", desc="��i s� c�ng ngh� T�ng Tam T�nh (206,224) � T�y Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� may v�", x=313, y=164, tip="D� H�a Long ", desc="��i s� may m�c D� H�a Long (313,164) � g�n B�c Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� luy�n kim", x=351, y=251, tip="Ti�t Ch�c ", desc="��c ki�m ��i s� Ti�t Ch�c (251,251) � ti�m v� kh� th�nh ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� n�u �n", x=290, y=269, tip="Tr� H�a ", desc="��i s� n�u n߾ng Tr� H�a (290,269) � c�a ti�m thu�c ph�a B�c Tr�ng Vi�n Tr߶ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		--{ type=2, name="�ع��䷽", x=96, y=127, tip="С��", desc="#G�ع��䷽: #W��ĳ�ֲ��ɿ�ԭ����������ѧ��to� � #G�ӹ��������䷽����ͷ�䷽����/��/��c�pʳ�����䷽����������䷽#W��ʧ,���Ե�#GT� Ch�u#Wto� � #GС��(96,127)#W������#G���䷽#W,����ۼ۸�#Gͳm�t Ϊ1��#W.", eventId=-1 },
		--{ type=2, name="���ϼӹ�����", x=-1, y=-1, tip="", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--�о��¼�
--**********************************
function x500023_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500023_g_Signpost do
		AddNumText(sceneId, x500023_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500023_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500023_g_Signpost[GetNumText()]

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
