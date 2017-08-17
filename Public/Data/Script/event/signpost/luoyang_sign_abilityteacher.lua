-- L�c D߽ng
--����ܵ�ʦ
--��·�ű�
x500005_g_scriptId = 500005

-- ��·���� type: 1 Ϊ��c�p�˵�, 2 Ϊֱ����·
x500005_g_Signpost = {
	{ type=2, name="��i s� tr�ng tr�t", x=314, y=401, tip="L�u Di�c N�ng", desc="�i ra kh�i L�c D߽ng, Nam M�n, qua c�u ph�a tr߾c, �i v� h߾ng ��ng, t�m ��i s� tr�ng tr�t L�u Di�c N�ng � th�a ru�ng (314,401). �n ph�m TAB � xem tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� khai th�c m�", x=310, y=228, tip="Ti�t аng Chuy", desc="��i s� khai kho�ng Ti�t аng Chuy (310,228) trong ti�m v� kh� � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� h�i thu�c", x=216, y=308, tip="Nghi�m B�ch Th�o", desc="��i s� h�i thu�c Nghi�m B�ch Th�o (216,308) � �߶ng l�n ph�a ��ng T�y Th�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ng� phu", x=306, y=324, tip="Kh߽ng Ng�", desc="Ng� phu Kh߽ng Ng� (306,324) � Nam M�n ��ng Th�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� c�ng ngh�", x=157, y=286, tip="Long Tam Thi�u ", desc="��i s� c�ng ngh� Long Tam Thi�u � (157,286) � �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� may v�", x=290, y=309, tip="Ph� M�n Chi", desc="��i s� may v� Ph� M�n Chi (290,309) � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� luy�n kim", x=309, y=302, tip="V߽ng ��c Ph�", desc="��c ki�m ��i s� V߽ng ��c Ph� (309,302) � trong ti�m binh kh� � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� n�u �n", x=236, y=292, tip="L� ��i Ch�y", desc="��i s� n�u n߾ng L� ��i Ch�y (236,292) � trong t�u �i�m ch� giao nhau gi�a T�y Th� v� �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� ch� du�c", x=232, y=308, tip="Tr߽ng Minh C�nh", desc="��i s� ch� d��c Tr߽ng Minh C�nh (232,308) � ti�m thu�c gi�a T�y Th� v� �߶ng l�n ph�a Nam. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� d��ng sinh ph�p", x=234, y=297, tip="S�c Vi", desc="��i s� d��ng sinh ph�p S�c Vi (234,297) � ti�m thu�c ch� giao nhau gi�a T�y Th� v� �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� d��c l� h�c", x=229, y=302, tip="B�ch D�nh Minh", desc="��i s� d��c l� h�c B�ch D�nh Minh (229,302) � ti�m thu�c gi�a T�y Th� v� �߶ng l�n ph�a Nam. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	--{ type=2, name="�ع��䷽", x=141, y=133, tip="С��", desc="#G�ع��䷽: #W��ĳ�ֲ��ɿ�ԭ����������ѧ��to� � #G�ӹ��������䷽����ͷ�䷽����/��/��c�pʳ�����䷽����������䷽#W��ʧ,���Ե�#GT� Ch�u#Wto� � #GС��(96,127)#W������#G���䷽#W,����ۼ۸�#Gͳm�t Ϊ1��#W.", eventId=-1 },
	--{ type=2, name="���ϼӹ�����", x=153, y=171, tip="������", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--�о��¼�
--**********************************
function x500005_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500005_g_Signpost do
		AddNumText(sceneId, x500005_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500005_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500005_g_Signpost[GetNumText()]

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
