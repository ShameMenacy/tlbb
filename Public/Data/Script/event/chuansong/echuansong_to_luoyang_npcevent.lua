--�¼�
--���͵�����

--�ű���
x400919_g_ScriptId = 400919

--�����ı�����
x400919_g_MissionName="Tr� v� L�c D߽ng"
x400919_g_MissionInfo="Ta l� ng߶i v�n chuy�n l߽ng th�c v� kinh th�nh ��i Li�u. Tr�n �߶ng �i c� r�t nhi�u Th�o Nguy�n Lang, h�y �i ti�u di�t ch�ng, ta m�i c� th� ti�p t�c v�n chuy�n ���c..."  --��������
x400919_g_MissionTarget="Gi�t ch�t 5 con Th�o Nguy�n Lang"		--����Ŀ��
x400919_g_ContinueInfo="H�y gi�t ch�t 5 con Th�o Nguy�n Lang. Th�o Nguy�n ph�a nam c� r�t nhi�u Th�o Nguy�n Lang, c�n th�n nha."		--δ��������npc�Ի�
x400919_g_MissionComplete="C�m t� c�c h�, cu�i c�ng th� ta c�ng ti�p t�c v�n chuy�n l߽ng th�c ���c r�i."					--�������npc˵���Ļ�

--**********************************
--��ں���
--**********************************
function x400919_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0, 159, 240)
end

--**********************************
--�о��¼�
--**********************************
function x400919_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x400919_g_ScriptId,x400919_g_MissionName)
end
