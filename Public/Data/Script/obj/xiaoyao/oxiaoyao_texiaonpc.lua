--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--���NPC����ǲ��ỹ�֣��ɹ��������ǲ����ܵ��κ��˺�
--�ű���
x801009_g_ScriptId = 801009;

--Ҫ��ʾ�ļ����б� 
x801009_g_DemoSkills = {};
--����������  x801009_g_DemoSkills[���ܵı��] = "���ܵ�����"; ע�������Ѽ��ܵı�ŵ��¼���ʹ�� 

x801009_g_DemoSkills[881]="V�ng D߽ng H�ng Th�n";
x801009_g_DemoSkills[882]="H� �i�p Tr�n";
x801009_g_DemoSkills[883]="B�t M�n Kim To�";
x801009_g_DemoSkills[884]="Nh�t T� Tr߶ng X�";
x801009_g_DemoSkills[885]="Th�i �t Tam T�i";
x801009_g_DemoSkills[886]="B�t Tr�n а";
x801009_g_DemoSkills[887]="Ho� Nh�n Kim Tinh";
x801009_g_DemoSkills[888]="Ch�ng Di�u Chi M�n";
x801009_g_DemoSkills[889]="Th�n Quang Ly H�p";
x801009_g_DemoSkills[890]="L�ng Ba Vi B�";
x801009_g_DemoSkills[891]="L� S߽ng B�ng Ch�";
x801009_g_DemoSkills[892]="D�c C�m иch Tung";
x801009_g_DemoSkills[893]="Tho�i B�t Tam X�";
x801009_g_DemoSkills[894]="Tri�u Tam M� T�";
x801009_g_DemoSkills[895]="Nh�t H� B�ch �ng";

--��ӵ�е��¼�Id�б�
x801009_g_eventList={881,882,883,884,885,886,887,888,889,890,891,892,893,894,895};
--**********************************
--�¼��������
--**********************************
function x801009_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan.");
--	for i=1,getn(x801009_g_eventList) do 
	for nIdx, nEvent in x801009_g_eventList do
		--�����ʾ���ܵİ�ť 
		AddNumText(sceneId, nEvent, x801009_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x801009_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ʲô��ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801009, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
