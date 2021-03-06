--了解九大门派特色

--脚本号
x210237_g_ScriptId	= 210237

--门派信息(门派名称，特色描述，接引人坐标，接引人名称，传送坐标)
x210237_g_mpInfo		= {}
x210237_g_mpInfo[0]	= { "[Thi阯 Long]", "#{OBJ_dali_0045}", 288, 228, "Ph� Tham",    288, 228 }
x210237_g_mpInfo[1]	= { "[Nga My]", "#{OBJ_dali_0046}", 276, 235, "L� Tam N呓ng",  276, 235 }
x210237_g_mpInfo[2]	= { "[C醝 Bang]", "#{OBJ_dali_0047}", 276, 232, "Gi鋘 Ninh",    276, 232 }
x210237_g_mpInfo[3]	= { "[Minh Gi醥]", "#{OBJ_dali_0048}", 288, 238, "Th誧h B鋙",    288, 238 }
x210237_g_mpInfo[4]	= { "[Thi猽 L鈓]", "#{OBJ_dali_0049}", 276, 229, "Tu� D竎h",    276, 229 }
x210237_g_mpInfo[5]	= { "[Thi阯 S絥]", "#{OBJ_dali_0050}", 288, 235, "Tr靚h Thanh S呓ng",  288, 235 }
x210237_g_mpInfo[6]	= { "[V� 衋ng]", "#{OBJ_dali_0051}", 276, 225, "Tr呓ng Ho誧h",    276, 225 }
x210237_g_mpInfo[7]	= { "[Ti陁 Dao]", "#{OBJ_dali_0052}", 288, 225, "朽m T� V�",288, 225 }
x210237_g_mpInfo[8]	= { "[Tinh T鷆]", "#{OBJ_dali_0053}", 288, 232, "H鋓 Phong T�",  288, 232 }

--任务入口函数
--**********************************
function x210237_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
	--了解门派特色
	if key == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "C豼 鹫i m鬾 ph醝" )
			for i, mp in x210237_g_mpInfo do
				AddNumText( sceneId, x210237_g_ScriptId, mp[1], 11, i+1 )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--选择各门派
	elseif key >= 1 and key <= 9 then
		mp	= x210237_g_mpInfo[key-1]
		BeginEvent( sceneId )
			AddText( sceneId, mp[2] )
			AddNumText( sceneId, x210237_g_ScriptId, "羞a ta 餴 g ng叨i truy玭 t痭g", 9, -1*key )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--送我去见传送人
	elseif key >= -9 and key <= -1 then
		mp	= x210237_g_mpInfo[-1*key-1]
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, mp[3], mp[4], mp[5] )
		SetPos( sceneId, selfId, mp[6], mp[7] )
		
		--关闭界面
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	--其他
	else
		return
	end
end

--**********************************
--列举事件
--**********************************
function x210237_OnEnumerate( sceneId, selfId, targetId )
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		AddNumText( sceneId, x210237_g_ScriptId, "T靘 hi瑄 穑c tr遪g C豼 鹫i m鬾 ph醝", 11, 100 )
	end
end

--**********************************
--检测接受条件
--**********************************
function x210237_CheckAccept( sceneId, selfId )
	--需要10级才能接
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		return 1
	else
		return 0
	end
end

--**********************************
--接受
--**********************************
function x210237_OnAccept( sceneId, selfId )
end

--**********************************
--放弃
--**********************************
function x210237_OnAbandon( sceneId, selfId )
end

--**********************************
--继续
--**********************************
function x210237_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--检测是否可以提交
--**********************************
function x210237_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--提交
--**********************************
function x210237_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x210237_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x210237_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x210237_OnItemChanged( sceneId, selfId, itemdataId )
end
