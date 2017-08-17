--���䵺 BOSSȺˢ�½ű�

--�ű���
x100014_g_ScriptId	= 100014

--ˢ�·�ʽΪ:
--����˽ű�ʱ����ˢ��10��BOSS....

--��Ҫˢ����BOSS�����ݱ�....
--BOSS��MonsterID�����ظ�....�ڳ�����ͬһʱ��ͬһ��MonsterID�Ĺ�ֻ�ܴ���һ��....���˾Ͳ�ˢ��....
x100014_g_BossData = {

	-- ID						BOSS�� monster id
	-- PosX					����
	-- PosY					����
	-- BaseAI				BOSS��BaseAI....
	-- ExtAIScript	BOSS����չAI....
	-- ScriptID			BOSS�Ľű�ID....
	-- NeedCreate		����1....
	
	{ ID=42220, PosX=249, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42221, PosX=251, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42222, PosX=253, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42223, PosX=255, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42224, PosX=257, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42225, PosX=259, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42226, PosX=261, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42227, PosX=263, PosY=130,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42228, PosX=258, PosY=134,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	{ ID=42229, PosX=255, PosY=134,  BaseAI=20, ExtAIScript=255, ScriptID=-1, NeedCreate=1 },
	
}


--**********************************
--�ű���ں���
--**********************************
function x100014_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--�����....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSS���ݱ�Ϊ�վͲ�ˢBOSS....
	if getn(x100014_g_BossData) < 1 then
		return
	end

	--����Boss�ؽ�״̬....
	for _, Data in x100014_g_BossData do
		Data.NeedCreate = 1
	end

	--�������������еĹ�....����BOSS�ؽ�״̬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x100014_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--�ؽ���Ҫ�ؽ���BOSS....
	for _, BossData in x100014_g_BossData do
		if BossData.NeedCreate == 1 then
			LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
		end
	end

end

--**********************************
--��������
--**********************************
function x100014_OnTimer( sceneId, actId, uTime )

	--����Ƿ����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--���ڸ����ؽ�״̬....
--**********************************
function x100014_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x100014_g_BossData do
		if DataID == Data.ID then
			x100014_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
