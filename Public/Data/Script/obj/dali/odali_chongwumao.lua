--大理NPC
--珍兽猫
--普通

--**********************************
--事件交互入口
--**********************************
function x002066_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"V鈔 Phi Phi t� t� s� h鎢 r nhi玼 tr鈔 th� qu� hi猰. Phi Phi, Phi Phi, ta y陁 t� gi痭g nh� chu祎 y陁 鹫i m�!")
	elseif roll <= 1 then
			AddText(sceneId,"凶ng cho l� ta kh鬾g bi猼 n骾, Phi Phi t� t� 疸 d誽 ta n骾 r癷. Kh鬾g tin ch鷑g ta h銀 t� th�!")
	else
			AddText(sceneId,"Ng呓i bi猼 kh鬾g, nghe n骾 Phi Phi t� t� c騨 hai ch� em sinh ba n鎍, gi痭g nhau nh� 瘊c...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
