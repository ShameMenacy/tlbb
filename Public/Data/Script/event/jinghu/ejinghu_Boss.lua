-- 005116
-- 镜湖BOSS

x005116_g_PreTimeHour_1 = 0
x005116_g_PreTimeHour_2 = 0
x005116_g_PreTimeHour_3 = 0

x005116_g_Boss ={
								{x=141,z=96,	b1=885,b2=887,b3=889,n1="B H鋓 H瞡 Giang Ti瑄 Long",n2="B H鋓 xu 鸬ng Ti瑄 Giao",n3="B H鋓 phi阯 giang Ti瑄 Th"},
								{x=250,z=98,	b1=885,b2=887,b3=889,n1="恤ng H鋓 H瞡 Giang Ti瑄 Long",n2="恤ng H鋓 xu 鸬ng Ti瑄 Giao",n3="恤ng H鋓 phi阯 giang Ti瑄 Th"},
								
								{x=206,z=253,	b1=885,b2=887,b3=889,n1="Nam H鋓 H瞡 Giang Ti瑄 Long",n2="Nam H鋓 xu 鸬ng Ti瑄 Giao",n3="Nam H鋓 phi阯 giang Ti瑄 Th"},
								{x=101,z=256,	b1=885,b2=887,b3=889,n1="T鈟 H鋓 H瞡 Giang Ti瑄 Long",n2="T鈟 H鋓 xu 鸬ng Ti瑄 Giao",n3="T鈟 H鋓 phi阯 giang Ti瑄 Th"},
								
								{x=139,z=133,	b1=884,b2=886,b3=888,n1="H瞡 Giang Long",n2="Xu 鸬ng giao",n3="Phi阯 giang th"}}

-- 使用一些本场景唯一的全局变量来保存数据

-- 这里的计时器在第一玩家进入本场景后自己启动，永不关闭。
function x005116_OnSceneTimer(sceneId)

	-- 获得当前时间
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	local nHour = GetQuarterTime()
	--local temp = floor(nHour/100)*100
	
	-- 只睹在 10:00 4:00 直接的这段时间内才睹
	--if nHour-temp>16 and nHour-temp<40    then
	--	return
	--end
	
	local nQuarter = mod(nHour,100);
	-- 只睹在 10:00 4:00 直接的这段时间内才睹
	if nQuarter > 16 and nQuarter < 40    then
		return
	end
	--end modified by zhangguoxin 090207
	
	--怪物分布：刷新时共刷出5组BOSS，
	--	第45分钟，两组BOSS，55级带53小弟出现。()
	--	50分钟，两组BOSS，55级带53小弟出现。	()
	--	55分钟，一组BOSS，60级带58小弟出现。	()
	--	最后一组BOSS出现时系统公告。	
	
	-- 第45分钟，刷第一队BOSS
	if GetMinute() >= 45 and GetMinute() < 50  then 
		-- 本小时的这组怪已经刷过
		if nHour == x005116_g_PreTimeHour_1  then
			return
		end
		
		-- 记录这个时间点
		x005116_g_PreTimeHour_1 = nHour
		
		-- 检测是不是满足创建怪的条件
		-- 检测场景中 x005116_g_Boss[1].b1 是不是还存在，
		-- 存在就不做操作，否则清除小怪然后刷出新的来
		if x005116_IsHaveMonster( sceneId, "B H鋓 H瞡 Giang Ti瑄 Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 1, 10 )
		end
		if x005116_IsHaveMonster( sceneId, "恤ng H鋓 H瞡 Giang Ti瑄 Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 2, 11 )
		end

		
	end
	
	-- 55分钟，刷第二队BOSS
	if GetMinute() >= 50 and GetMinute() < 55  then
		-- 本小时的这组怪已经刷过
		if nHour == x005116_g_PreTimeHour_2  then
			return
		end
		
		-- 记录这个时间点
		x005116_g_PreTimeHour_2 = nHour
		
		-- 检测是不是满足创建怪的条件
		if x005116_IsHaveMonster( sceneId, "Nam H鋓 H瞡 Giang Ti瑄 Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 3, 12 )
		end
		if x005116_IsHaveMonster( sceneId, "T鈟 H鋓 H瞡 Giang Ti瑄 Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 4, 13 )
		end
		
	end
	
	-- 60分钟，刷第三队BOSS
	if GetMinute() >= 55 	then
		-- 本小时的这组怪已经刷过
		if nHour == x005116_g_PreTimeHour_3  then
			return
		end
		
		-- 记录这个时间点
		x005116_g_PreTimeHour_3 = nHour
		
		-- 检测是不是满足创建怪的条件
		if x005116_IsHaveMonster( sceneId, "H瞡 Giang Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 5, 14 )
		end
	end
	
		
end

function x005116_IsHaveMonster( sceneId, MonsterName )
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)  == MonsterName  then
			bHaveMonster = 1
		end
	end
	return bHaveMonster
end

function x005116_UpDateMonster( sceneId, nIndex, nGroupId )

	-- 先清除这个组里头的所有小怪
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n1  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n2  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n3  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
	
	-- 把怪全创建出来
	local nMonId
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b1, x005116_g_Boss[nIndex].x, x005116_g_Boss[nIndex].z, 19, 197, 005117)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n1)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "H瞡 Giang Long")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b2, x005116_g_Boss[nIndex].x+2, x005116_g_Boss[nIndex].z, 19, 198, 005118)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n2)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "H瞡 Giang Long")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b3, x005116_g_Boss[nIndex].x-2, x005116_g_Boss[nIndex].z, 19, 199, 005119)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n3)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "H瞡 Giang Long")
	
	if nIndex == 5   then
		--当年横行浔阳江的水贼“混江龙”已经带领部下出现在镜湖！请天下英雄速去剿灭！
		-- 刷总BOSS的时候，给一个世界公告
		
		local str = "H瞡 Giang Long th鼀 t T D呓ng Giang 餫ng tung ho鄋h th痭g l頽h thu礳 h� xu hi畁 � K韓h H�! Xin c醕 v� anh h鵱g h銀 nhanh ch髇g 餴 ti陁 di畉!"
		BroadMsgByChatPipe(sceneId, -1, str, 4)
	end
	
	
end

