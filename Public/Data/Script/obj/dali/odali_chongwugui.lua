--大理NPC
--珍兽龟
--普通

--**********************************
--事件交互入口
--**********************************
function x002067_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"V鈔 Di陁 Di陁 t� t� s� h鎢 r nhi玼 tr鈔 th� qu� hi猰. Di陁 Di陁, Di陁 Di陁 ta y陁 t� t馻 nh� chu祎 y陁 鹫i m�!")
	elseif roll <= 1 then
			AddText(sceneId,"凶ng cho l� ta kh鬾g bi猼 n骾! Di陁 Di陁 t� t� 疸 d誽 ta n骾 r癷. Kh鬾g tin ch鷑g ta h銀 t� th�!")
	else
			AddText(sceneId,"Ng呓i bi猼 kh鬾g. Nghe n骾 Di陁 Di陁 t� t� c騨 hai ch� em sinh 痿i n鎍, gi痭g nhau nh� 瘊c...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
