--��翷帱��....   ____������ By��403413393 �޸�

--�ű���
x894063_g_ScriptId = 894063

x894063_g_CopySceneType = FUBEN_BINGSHENZHEN	--�������ͣ�������ScriptGlobal.lua����

x894063_g_TickTime		= 1				--�ص��ű���ʱ��ʱ�䣨��λ����/�Σ�
x894063_g_NoUserTime	= 10			--������û���˺���Լ��������ʱ�䣨��λ���룩
x894063_g_Fuben_X			= 123			--���븱����λ��X
x894063_g_Fuben_Z			= 138			--���븱����λ��Z
x894063_g_FuBenTime		= 3*60*60	--�����ر�ʱ��....

--BOSS��....
x894063_g_BOSSList =
{
	["XiaoYiFeng_NPC"]				= { DataID=15106, Title="�����", posX=51, posY=53, Dir=27, BaseAI=3, AIScript=0, ScriptID=894070 },
	["XiaoYiFeng_BOSS"]				= { DataID=14348, Title="�����", posX=51, posY=53, Dir=27, BaseAI=27, AIScript=301, ScriptID=894064 },
	["XuanFeng_BOSS"]			= { DataID=14353, Title="", posX=0, posY=0, Dir=0, BaseAI=3, AIScript=0, ScriptID=-1 },
	["FengLei_BOSS"]			= { DataID=14349, Title="", posX=0, posY=0, Dir=0, BaseAI=27, AIScript=302, ScriptID=-1 },

	["XiaoRuJun_NPC"]		= { DataID=15126, Title="������", posX=173, posY=36, Dir=0, BaseAI=3, AIScript=0, ScriptID=894071 },
	["XiaoRuJun_BOSS"]		= { DataID=14240, Title="������", posX=173, posY=36, Dir=0, BaseAI=27, AIScript=0, ScriptID=894065 },
	["XiaoRuWei_NPC"]		= { DataID=15131, Title="������", posX=173, posY=100, Dir=0, BaseAI=3, AIScript=0, ScriptID=894068 },
	["XiaoRuWei_BOSS"]		= { DataID=14244, Title="������", posX=173, posY=100, Dir=0, BaseAI=27, AIScript=0, ScriptID=894067 },

	["ZhuBai_BOSS"]			= { DataID=15140, Title="�⹥����", posX=169, posY=36, Dir=0, BaseAI=28, AIScript=0, ScriptID=894080 },
	["ZhuHong_BOSS"]			= { DataID=15160, Title="��", posX=173, posY=32, Dir=0, BaseAI=28, AIScript=0, ScriptID=894083 },
	["ZhuHuang_BOSS"]			= { DataID=15150, Title="����", posX=177, posY=36, Dir=0, BaseAI=28, AIScript=0, ScriptID=894082 },
	["ZhuLan_BOSS"]			= { DataID=15165, Title="����", posX=176, posY=39, Dir=0, BaseAI=28, AIScript=0, ScriptID=894084 },
	["ZhuLv_BOSS"]			= { DataID=15155, Title="����", posX=170, posY=33, Dir=0, BaseAI=28, AIScript=0, ScriptID=894085 },
	["ZhuZi_BOSS"]			= { DataID=15145, Title="�ڹ�����", posX=173, posY=38, Dir=0, BaseAI=28, AIScript=0, ScriptID=894081 },

	["ZhuBaiB_BOSS"]			= { DataID=15140, Title="�⹥����", posX=169, posY=100, Dir=0, BaseAI=28, AIScript=0, ScriptID=894086 },
	["ZhuHongB_BOSS"]			= { DataID=15160, Title="��", posX=173, posY=97, Dir=0, BaseAI=28, AIScript=0, ScriptID=894089 },
	["ZhuHuangB_BOSS"]			= { DataID=15150, Title="����", posX=177, posY=98, Dir=0, BaseAI=28, AIScript=0, ScriptID=894088 },
	["ZhuLanB_BOSS"]			= { DataID=15165, Title="����", posX=176, posY=101, Dir=0, BaseAI=28, AIScript=0, ScriptID=894090 },
	["ZhuLvB_BOSS"]			= { DataID=15155, Title="����", posX=175, posY=104, Dir=0, BaseAI=28, AIScript=0, ScriptID=894091 },
	["ZhuZiB_BOSS"]			= { DataID=15145, Title="�ڹ�����", posX=173, posY=101, Dir=0, BaseAI=28, AIScript=0, ScriptID=894087 },

	["YeLvYan_NPC"]				= { DataID=15171, Title="�������", posX=192, posY=195, Dir=27, BaseAI=3, AIScript=0, ScriptID=894072 },
	["YeLvYanLoss_NPC"]		= { DataID=14216, Title="", posX=117, posY=49, Dir=0, BaseAI=3, AIScript=0, ScriptID=894075 },
	["YeLvYan_BOSS"]			= { DataID=14239, Title="�������", posX=192, posY=195, Dir=27, BaseAI=27, AIScript=0, ScriptID=894066 },
	["HuoNiu_BOSS"]			= { DataID=15180, Title="", posX=0, posY=0, Dir=0, BaseAI=3, AIScript=0, ScriptID=-1 },

	["YaoBoDang_BOSS"]		= { DataID=42202, Title="", posX=129, posY=108, Dir=0, BaseAI=27, AIScript=0, ScriptID=890067 },
	["SiMaLing_BOSS"]	= { DataID=42203, Title="", posX=131, posY=109, Dir=0, BaseAI=27, AIScript=0, ScriptID=890068 },

	["YouDanZhi_BOSS"]		= { DataID=42204, Title="", posX=129, posY=126, Dir=0, BaseAI=0, AIScript=0, ScriptID=890074 },

	["LiFan_NPC"]				= { DataID=15186, Title="������ɽ", posX=52, posY=203, Dir=27, BaseAI=3, AIScript=0, ScriptID=894075 },
	["YeLvLian_BOSS"]		= { DataID=14234, Title="������ɽ", posX=52, posY=203, Dir=27, BaseAI=27, AIScript=0, ScriptID=894069 },

	["ShiDui_BOSSA"]			= { DataID=15195, Title="�����⹥", posX=52, posY=218, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSB"]			= { DataID=15195, Title="�����⹥", posX=63, posY=213, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSC"]			= { DataID=15195, Title="�����⹥", posX=67, posY=203, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSD"]			= { DataID=15195, Title="�����⹥", posX=63, posY=192, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSE"]			= { DataID=15195, Title="�����ڹ�", posX=53, posY=188, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSF"]			= { DataID=15195, Title="�����ڹ�", posX=42, posY=192, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSG"]			= { DataID=15195, Title="�����ڹ�", posX=38, posY=203, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["ShiDui_BOSSH"]			= { DataID=15195, Title="�����ڹ�", posX=42, posY=213, Dir=0, BaseAI=28, AIScript=0, ScriptID=-1 },
	["TieGu_BOSS"]			= { DataID=15185, Title="�����⹥", posX=0, posY=0, Dir=0, BaseAI=28, AIScript=0, ScriptID=894092 },
	["YuanShen_BOSS"]			= { DataID=15200, Title="�����ڹ�", posX=0, posY=0, Dir=0, BaseAI=28, AIScript=0, ScriptID=894093 },
	["TieFuZhen_BOSS"]			= { DataID=15205, Title="", posX=46, posY=795, Dir=0, BaseAI=3, AIScript=0, ScriptID=894094 },
	["YuanFuZhen_BOSS"]			= { DataID=15206, Title="", posX=54, posY=213, Dir=0, BaseAI=3, AIScript=0, ScriptID=894095 },

}

x894063_g_FightBOSSList =
{
	[1] = x894063_g_BOSSList["XiaoYiFeng_BOSS"].DataID,
	[2] = x894063_g_BOSSList["XiaoRuJun_BOSS"].DataID,
	[3] = x894063_g_BOSSList["YeLvYan_BOSS"].DataID,
	[4] = x894063_g_BOSSList["XiaoRuWei_BOSS"].DataID,
	[5] = x894063_g_BOSSList["SiMaLing_BOSS"].DataID,
	[6] = x894063_g_BOSSList["YeLvLian_BOSS"].DataID
}

--�Ƿ������սĳ��BOSS�ı���б�....
x894063_g_BattleFlagTbl = 
{
	["XiaoYiFeng"]			= 8,	--�Ƿ������ս�����...
	["XiaoRuJun"]	= 9,	--�Ƿ������սɣ����....
	["YeLvYan"]			= 10,	--�Ƿ������ս���ϴ�....
	["ShuangZi"]		= 11,	--�Ƿ������ս˫��....
	["YeLvLian"]		= 12,	--�Ƿ������ս����ˮ....
	["PlayHp"]		= 21,	--���Ѫ��....
}

--������������....�Ƿ������սĳ��BOSS�ı��....
-- 0=������ս 1=������ս 2=�Ѿ���ս����
x894063_g_IDX_BattleFlag_XiaoYiFeng			= 8
x894063_g_IDX_BattleFlag_XiaoRuJun	= 9
x894063_g_IDX_BattleFlag_YeLvYan		= 10
x894063_g_IDX_BattleFlag_Shuangzi		= 11
x894063_g_IDX_BattleFlag_YeLvLian	= 12
x894063_g_IDX_BattleFlag_PlayHp	= 21

x894063_g_IDX_FuBenOpenTime		= 13	--����������ʱ��....
x894063_g_IDX_FuBenLifeStep		= 14	--���������ڵ�step....(��������NPC....�رյ���ʱ��ʾ....)

--������������....ͨ�õ���翷��ʱ��....��Ҫ���ڼ���BOSSս��....
x894063_g_IDX_BQZTimerStep			= 15
x894063_g_IDX_BQZTimerScriptID	= 16

--������������....���ϴ������ļ�ʱ��....���ڴ��������߼�....
x894063_g_IDX_YeLvYanDieStep				= 17
x894063_g_IDX_YeLvYanDieScriptID		= 18
x894063_g_IDX_YeLvYanDiePosX				=	19
x894063_g_IDX_YeLvYanDiePosY				=	20


--**********************************
--������ں���....
--**********************************
function x894063_OnDefaultEvent( sceneId, selfId, targetId )

	--����Ƿ���Խ��븱��....
	local ret, msg = x894063_CheckCanEnter( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--�ر�NPC�Ի�����....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

	x894063_MakeCopyScene( sceneId, selfId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#Y���գ����Ź��⴫���ܱ�������һ��ϰ�����󣬲��ձ㽫������ԭ���ҳ�����Σ�ڵ�Ϧ����#gff00f0�ػ�����֮��#gffff00"..nam.."#gff00f0�ʶ����������븱��,�Ľ�Ү����������#Y�����ȷ�ӡ#W�������С�", 4 )

end

--**********************************
--�о��¼�
--**********************************
function x894063_OnEnumerate( sceneId, selfId, targetId )

	--AddNumText( sceneId, x894063_g_ScriptId, "#cFF0000��Ϯ����ʥ����", 10, 1 )

end

--**********************************
--����Ƿ���Խ���˸���....
--**********************************
function x894063_CheckCanEnter( sceneId, selfId, targetId )

	--�Ƿ��ж���....
	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "#{PMF_20080521_02}"
	end

	--�ǲ��Ƕӳ�....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "#{PMF_20080521_03}"
	end

	--�����Ƿ�....
	if GetTeamSize(sceneId,selfId) < 1 then
		return 0, "#{PMF_20080521_04}"
	end

	--�Ƿ��ڸ���....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "#{PMF_20080521_05}"
	end

	local Humanlist = {}
	local nHumanNum = 0

	--�Ƿ����˲���90��....
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 70 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "    ���鵱�е�"
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. "��"
		end
		msg = msg .. Humanlist[nHumanNum-1] .. "����Ϊ��ǳ\�����ǲ�ҪȥΪ�"
		return 0, msg

	end


	--�Ƿ����˽�������3����....
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_YURENJIE_LASTTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 30 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end

	if nHumanNum > 0 then

		local msg = "    "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. "��"
		end
		msg = msg .. Humanlist[nHumanNum-1] .. "�����Ѿ���ս��3���ľ�ׯ�ˡ�"
		return 0, msg

	end

	return 1

end

--**********************************
--��������....
--**********************************
function x894063_MakeCopyScene( sceneId, selfId )

	local x = 0
	local z = 0
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, "BattleField.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x894063_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x894063_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x894063_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x894063_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_XiaoYiFeng, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_XiaoRuJun, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_YeLvYan, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_Shuangzi, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_YeLvLian, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BattleFlag_PlayHp, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenOpenTime, LuaFnGetCurrentTime() )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID, -1 )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID, -1 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY, 0 )

	LuaFnSetSceneLoad_Area( sceneId, "BattleField_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "BattleField_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"���������ɹ���");
		else
			AddText(sceneId,"���������Ѵ����ޣ����Ժ����ԣ�");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--�����¼�....
--**********************************
function x894063_OnCopySceneReady( sceneId, destsceneId )

	--���븱���Ĺ���
	-- 1�����������û����ӣ��ʹ����������Լ����븱��
	-- 2, �������ж��飬������Ҳ��Ƕӳ����ʹ����Լ����븱��
	-- 3���������ж��飬�����������Ƕӳ����ʹ����Լ��͸�������һ���ȥ

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--ͳ�ƴ�����������....
	--AuditBQZCreateFuben( sceneId, leaderObjId )

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z)
			end
		end		
	end

end

--**********************************
--����������ʱ���¼�....
--**********************************
function x894063_OnCopySceneTimer( sceneId, nowTime )

	x894063_TickFubenLife( sceneId, nowTime )

	x894063_TickBQZTimer( sceneId, nowTime )

	x894063_TickYeLvYanDieTimer( sceneId, nowTime )

	x894063_TickJianWuArea( sceneId, nowTime )

end

--**********************************
--����ҽ��븱���¼�....
--**********************************
function x894063_OnPlayerEnter( sceneId, selfId )

	--���������¼�....
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x894063_g_Fuben_X, x894063_g_Fuben_Z )

	--������ս��һ����翷�....
	local lastTime = GetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME, lastTime )

end

--**********************************
--������ڸ����������¼�....
--**********************************
function x894063_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--��ʾ���и��������....
--**********************************
function x894063_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end

--**********************************
--Tick����������....
--**********************************
function x894063_TickFubenLife( sceneId, nowTime )

	local openTime = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenOpenTime )
	local leftTime = openTime + x894063_g_FuBenTime - LuaFnGetCurrentTime()
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep )

	if lifeStep == 15 then

		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 16 )

		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end

		return

	end

	if lifeStep == 14 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 15 )
		x894063_TipAllHuman( sceneId, "��������1����رա�" )
		return
	end

	if lifeStep == 13 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 14 )
		x894063_TipAllHuman( sceneId, "��������2����رա�" )
		return
	end

	if lifeStep == 12 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 13 )
		x894063_TipAllHuman( sceneId, "��������3����رա�" )
		return
	end

	if lifeStep == 11 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 12 )
		x894063_TipAllHuman( sceneId, "��������4����رա�" )
		return
	end

	if lifeStep == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 11 )
		x894063_TipAllHuman( sceneId, "��������5����رա�" )
		return
	end

	if leftTime <= 10 and lifeStep == 9 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 10 )
		x894063_TipAllHuman( sceneId, "��������10����رա�" )
		return
	end

	if leftTime <= 30 and lifeStep == 8 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 9 )
		x894063_TipAllHuman( sceneId, "��������30����رա�" )
		return
	end

	if leftTime <= 60 and lifeStep == 7 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 8 )
		x894063_TipAllHuman( sceneId, "��������1������رա�" )
		return
	end

	if leftTime <= 120 and lifeStep == 6 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 7 )
		x894063_TipAllHuman( sceneId, "��������2������رա�" )
		return
	end

	if leftTime <= 180 and lifeStep == 5 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 6 )
		x894063_TipAllHuman( sceneId, "��������3������رա�" )
		return
	end

	if leftTime <= 300 and lifeStep == 4 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 5 )
		x894063_TipAllHuman( sceneId, "��������5������رա�" )
		return
	end

	if leftTime <= 900 and lifeStep == 3 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 4 )
		x894063_TipAllHuman( sceneId, "��������15������رա�" )
		return
	end

	if leftTime <= 1800 and lifeStep == 2 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 3 )
		x894063_TipAllHuman( sceneId, "��������30������رա�" )
		return
	end

	if leftTime <= 3600 and lifeStep == 1 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 2 )
		x894063_TipAllHuman( sceneId, "��������60������رա�" )
		return
	end

	--��ʼ�������ڵ�NPC....
	if lifeStep == 0 then

		local MstId = x894063_CreateBOSS( sceneId, "XiaoYiFeng_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "XiaoRuJun_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "XiaoRuWei_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "YeLvYan_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		MstId = x894063_CreateBOSS( sceneId, "LiFan_NPC", -1, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )

		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_FuBenLifeStep, 1 )

		return
	end

end

--**********************************
--Tick��翷��ʱ��....
--**********************************
function x894063_TickBQZTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep )
	if step <= 0 then
		return
	end
	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID )

	--�ص�ָ���ű���OnTimer....
	CallScriptFunction( scriptID, "OnBQZTimer", sceneId, step )

	--����Ѿ���������step��رռ�ʱ��....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID, -1 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, step )
	end

end

--**********************************
--������翷��ʱ��....
--**********************************
function x894063_OpenBQZTimer( sceneId, allstep, ScriptID )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerScriptID, ScriptID )

end

--**********************************
--��ǰ��翷��ʱ���Ƿ񼤻�....
--**********************************
function x894063_IBQZSTimerRunning( sceneId )

	local step = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_BQZTimerStep )
	if step > 0 then
		return 1
	else
		return 0
	end

end

--**********************************
--Tick���ϴ�������ʱ��....
--**********************************
function x894063_TickYeLvYanDieTimer( sceneId, nowTime )

	local step = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep )
	if step <= 0 then
		return
	end

	local scriptID = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID )
	local posX = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX )
	local posY = LuaFnGetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY )

	--�ص�ָ���ű���OnTimer....
	CallScriptFunction( scriptID, "OnXiaoYiFengDieTimer", sceneId, step, posX, posY )

	--����Ѿ���������step��رռ�ʱ��....
	step = step - 1
	if step <= 0 then
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID, -1 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY, 0 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, step )
	end

end

--**********************************
--�������ϴ�������ʱ��....
--**********************************
function x894063_OpenYeLvYanDieTimer( sceneId, allstep, ScriptID, posX, posY )

	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieStep, allstep )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDieScriptID, ScriptID )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosX, posX )
	LuaFnSetCopySceneData_Param( sceneId, x894063_g_IDX_YeLvYanDiePosY, posY )

end

--**********************************
--Tick��������....
--ֻҪ���վ�ڳ������6��������....ÿ�붼�ܻ��һ�����߽����buff....
--**********************************
function x894063_TickJianWuArea( sceneId, nowTime )

end

--**********************************
--����ָ��BOSS....
--**********************************
function x894063_CreateBOSS( sceneId, name, x, y )

	local BOSSData = x894063_g_BOSSList[name]
	if not BOSSData then
		return
	end

	local posX = 0
	local posY = 0
	if x ~= -1 and y ~= -1 then
		posX = x
		posY = y
	else
		posX = BOSSData.posX
		posY = BOSSData.posY
	end

	local MstId = LuaFnCreateMonster( sceneId, BOSSData.DataID, posX, posY, BOSSData.BaseAI, BOSSData.AIScript, BOSSData.ScriptID )
	--SetUnitReputationID(sceneId, selfId, nMonsterId, 29)   --by yaya
	SetUnitCampID(sceneId, MstId, MstId, 110)

	--SetObjDir( sceneId, MstId, BOSSData.Dir )
	SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
	if BOSSData.Title ~= "" then
		SetCharacterTitle(sceneId, MstId, BOSSData.Title)
	end

	LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

	--ͳ�ƴ���BOSS....
	--AuditBQZCreateBoss( sceneId, BOSSData.DataID )

	return MstId

end

--**********************************
--ɾ��ָ��BOSS....
--**********************************
function x894063_DeleteBOSS( sceneId, name )

	local BOSSData = x894063_g_BOSSList[name]
	if not BOSSData then
		return
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if BOSSData.DataID == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

end

--**********************************
--Ѱ��ָ��BOSS....
--**********************************
function x894063_FindBOSS( sceneId, name )

	local BOSSData = x894063_g_BOSSList[name]
	if not BOSSData then
		return -1
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if BOSSData.DataID == GetMonsterDataID( sceneId, MonsterId ) then
			return MonsterId
		end
	end

	return -1

end

--**********************************
--��⵱ǰ�Ƿ��Ѿ�����һ��BOSS��....
--**********************************
function x894063_CheckHaveBOSS( sceneId )

	local BossList = {}
	local nBossNum = 0

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			local DataID = GetMonsterDataID( sceneId, MonsterId )
			for j, dataId in x894063_g_FightBOSSList do
				if DataID == dataId then
					BossList[nBossNum] = GetName( sceneId, MonsterId )
					nBossNum = nBossNum + 1
				end
			end
		end
	end

	if nBossNum > 0 then
		local msg = "����"
		for i=0, nBossNum-2 do
			msg = msg .. BossList[i] .. "��"
		end
		msg = msg .. BossList[nBossNum-1] .. "ս����"
		return 1, msg
	end

	return 0, ""

end

--**********************************
--��ȡ�Ƿ������սĳ��BOSS�ı��....
--**********************************
function x894063_GetBossBattleFlag( sceneId, bossName )

	local idx = x894063_g_BattleFlagTbl[ bossName ]
	return LuaFnGetCopySceneData_Param( sceneId, idx )

end

--**********************************
--�����Ƿ������սĳ��BOSS�ı��....
--**********************************
function x894063_SetBossBattleFlag( sceneId, bossName, bCan )

	local idx = x894063_g_BattleFlagTbl[ bossName ]
	LuaFnSetCopySceneData_Param( sceneId, idx, bCan )

end
