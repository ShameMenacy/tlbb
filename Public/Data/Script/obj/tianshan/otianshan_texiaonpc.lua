--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--���NPC����ǲ��ỹ�֣��ɹ��������ǲ����ܵ��κ��˺�
--�ű���
x801008_g_ScriptId = 801008;

--Ҫ��ʾ�ļ����б� 
x801008_g_DemoSkills = {};
--����������  x801008_g_DemoSkills[���ܵı��] = "���ܵ�����"; ע�������Ѽ��ܵı�ŵ��¼���ʹ�� 

x801008_g_DemoSkills[865]="L�c M�c Ti�u Ti�u";
x801008_g_DemoSkills[866]="V�ng Mai Ch� Kh�t";
x801008_g_DemoSkills[867]="D߽ng Quan Tam �i�p";
x801008_g_DemoSkills[868]="D߽ng Ph� �m Ph�n";
x801008_g_DemoSkills[869]="D߽ng Ca Thi�n Qu�n";
x801008_g_DemoSkills[870]="D߽ng Xu�n B�ch Tuy�t";
x801008_g_DemoSkills[871]="��p Tuy�t V� Ng�n";
x801008_g_DemoSkills[872]="Quy T�c C�ng";
x801008_g_DemoSkills[873]="M�i H� R�ng L�nh";
x801008_g_DemoSkills[874]="Th�p Di�n Mai Ph�c";
x801008_g_DemoSkills[875]="Bao Bi�n L�m Thay";
x801008_g_DemoSkills[876]="Quy Kh� Lai H�";
x801008_g_DemoSkills[877]="B�ng H� Ng� Phong";
x801008_g_DemoSkills[878]="T�nh �nh Tr�m B�ch";
x801008_g_DemoSkills[879]="��i T��ng V� H�nh";

--��ӵ�е��¼�Id�б�
x801008_g_eventList={865,866,867,868,869,870,871,872,873,874,875,876,877,878,879};
--**********************************
--�¼��������
--**********************************
function x801008_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan.");
--	for i=1,getn(x801008_g_eventList) do 
	for nIdx, nEvent in x801008_g_eventList do
		--������ʾ���ܵİ�ť 
		AddNumText(sceneId, nEvent, x801008_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x801008_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ʲô��ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId, targetId,1,0,0,0,0);
	--CallScriptFunction( 801008, "LuaFnUnitUseSkill",sceneId, selfId, eventId , targetId);
	--return;
end