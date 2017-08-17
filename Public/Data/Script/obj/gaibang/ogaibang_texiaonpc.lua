--NPC演示技能特效用
--演示NPC
--普通
--这个NPC最好是不会还手，可攻击，但是不会受到任何伤害
--脚本号
x801003_g_ScriptId = 801003;

--要演示的技能列表 
x801003_g_DemoSkills = {};
--声明方法：  x801003_g_DemoSkills[技能的编号] = "技能的名字"; 注：后面会把技能的编号当事件号使用 

x801003_g_DemoSkills[784]="B醝 Nhi阯 H鎢 V�";
x801003_g_DemoSkills[785]="Ngao Du 恤ng H鋓";
x801003_g_DemoSkills[786]="Ki猲 Long T読 衖玭";
x801003_g_DemoSkills[787]="Th Long B鉯 V�";
x801003_g_DemoSkills[788]="Phi Long T読 Thi阯";
x801003_g_DemoSkills[789]="Kh醤g Long H鎢 H痠";
x801003_g_DemoSkills[790]="C醕h Ng課 Quan H鯽";
x801003_g_DemoSkills[791]="L� 姓i 朽o C呓ng";
x801003_g_DemoSkills[792]="M課 Thi阯 Qu� H鋓";
x801003_g_DemoSkills[793]="Thi阯 H� V� C";
x801003_g_DemoSkills[794]="B醫 C Tri玼 Thi阯";
x801003_g_DemoSkills[795]="羛 Bi琻 C B痠";
x801003_g_DemoSkills[796]="Ti阯 H� Th� Vi C叨ng";
x801003_g_DemoSkills[797]="Kim Thi玭 Tho醫 X醕";
x801003_g_DemoSkills[798]="B鉶 T鄋 Th� Khuy猼";

--所拥有的事件Id列表
x801003_g_eventList={784,785,786,787,788,789,790,791,792,793,794,795,796,797,798};
--**********************************
--事件交互入口
--**********************************
function x801003_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan ngh阯h 疸 t緄. Xin m秈 l馻 ch鱪 c醕 k� n錸g mu痭 th錷 quan.");
--	for i=1,getn(x801003_g_eventList) do 
	for nIdx, nEvent in x801003_g_eventList do
		--添加演示技能的按钮 
		AddNumText(sceneId, nEvent, x801003_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--事件列表选中一项
--**********************************
function x801003_OnEventRequest( sceneId, selfId, targetId, eventId )
	--问题selfId,和TargetId分别是什么的ID? 
	LuaFnUnitUseSkill(sceneId, selfId,eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801003, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
