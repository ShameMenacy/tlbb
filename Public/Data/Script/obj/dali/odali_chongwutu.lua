--大理NPC
--珍兽兔
--普通

--**********************************
--事件交互入口
--**********************************
function x002068_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"V鈔 Phi陁 Phi陁 t� t� s� h鎢 r nhi玼 tr鈔 th� qu� hi猰. Phi陁 Phi陁, Phi陁 Phi陁, ta y陁 t� gi痭g nh� chu祎 y陁 鹫i m�!")
	elseif roll <= 1 then
			AddText(sceneId,"凶ng cho l� ta kh鬾g bi猼 n骾. Phi陁 Phi陁 t� t� 疸 d誽 ta r癷. Kh鬾g tin ch鷑g ta h銀 t� th�!")
	else
			AddText(sceneId,"Ng呓i bi猼 kh鬾g, Phi陁 Phi陁 t� t� c騨 hai ch� em sinh ba n鎍, gi痭g nhau nh� 瘊c...")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
