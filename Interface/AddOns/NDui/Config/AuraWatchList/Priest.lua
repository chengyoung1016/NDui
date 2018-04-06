local B, C, L, DB = unpack(select(2, ...))

-- 牧师的法术监控
local list = {
	["Player Aura"] = {		-- 玩家光环组
		--渐隐术
		{AuraID = 586, UnitID = "player"},
		--意志坚定
		{AuraID = 194022, UnitID = "player"},
		--真言术：盾
		{AuraID = 17, UnitID = "player"},
		--暗影洞察
		{AuraID = 124430, UnitID = "player"},
		--天堂之羽
		{AuraID = 121557, UnitID = "player"},
		--身心合一
		{AuraID = 214121, UnitID = "player"},
		--救赎
		{AuraID = 194384, UnitID = "player"},
	},
	["Target Aura"] = {		-- 目标光环组
		--暗言术:痛
		{AuraID = 589, UnitID = "target", Caster = "player"},
		--吸血鬼之触
		{AuraID = 34914, UnitID = "target", Caster = "player"},
		--心灵尖啸
		{AuraID = 8122, UnitID = "target", Caster = "player"},
		--沉默
		{AuraID = 15487, UnitID = "target", Caster = "player"},
		--真言术：盾
		{AuraID = 17, UnitID = "target", Caster = "player", Value = true},
		--心灵炸弹
		{AuraID = 205369, UnitID = "target", Caster = "player"},
		--心灵尖刺
		{AuraID = 217673, UnitID = "target", Caster = "player"},
		--恢复
		{AuraID = 139, UnitID = "target", Caster = "player"},
		--图雷之光
		{AuraID = 208065, UnitID = "target", Caster = "player"},
		--圣言术：罚
		{AuraID = 200196, UnitID = "target", Caster = "player"},
		{AuraID = 200200, UnitID = "target", Caster = "player"},
		--愈合祷言
		{AuraID = 41635, UnitID = "target", Caster = "player"},
		--身心合一
		{AuraID = 214121, UnitID = "target", Caster = "player"},
		--天堂之羽
		{AuraID = 121557, UnitID = "target", Caster = "player"},
		--闪光力场
		{AuraID = 204263, UnitID = "target", Caster = "player"},
		--救赎
		{AuraID = 194384, UnitID = "target", Caster = "player"},
		--教派分歧
		{AuraID = 214621, UnitID = "target", Caster = "player"},
		--意志洞悉
		{AuraID = 152118, UnitID = "target", Caster = "player"},
		--净化邪恶
		{AuraID = 204213, UnitID = "target", Caster = "player"},
		--惩击
		{AuraID = 208772, UnitID = "target", Caster = "player", Value = true},
	},
	["Special Aura"] = {	-- 玩家重要光环组
		--消散
		{AuraID = 47585, UnitID = "player"},
		--吸血鬼的拥抱
		{AuraID = 15286, UnitID = "player"},
		--延宕狂乱
		{AuraID = 197937, UnitID = "player"},
		--虚空形态
		{AuraID = 194249, UnitID = "player"},
		--虚空射线
		{AuraID = 205372, UnitID = "player"},
		--能量灌注
		{AuraID = 10060, UnitID = "player"},
		--疯入膏肓
		{AuraID = 193223, UnitID = "player"},
		--纳鲁之能
		{AuraID = 196490, UnitID = "player"},
		--圣光涌动
		{AuraID = 114255, UnitID = "player"},
		--图雷的祝福
		{AuraID = 196644, UnitID = "player"},
		--圣洁
		{AuraID = 197030, UnitID = "player"},
		--神圣化身
		{AuraID = 200183, UnitID = "player"},
		--全神贯注
		{AuraID = 47536, UnitID = "player"},
		--争分夺秒
		{AuraID = 197763, UnitID = "player"},
		--身心合一
		{AuraID = 65081, UnitID = "player"},
		--阴暗面之力
		{AuraID = 198069, UnitID = "player"},
		--命运多舛
		{AuraID = 123254, UnitID = "player"},
		--神牧神器
		{AuraID = 211440, UnitID = "player"},
		{AuraID = 211442, UnitID = "player"},
		--救赎之魂
		{AuraID = 27827, UnitID = "player"},
		--T21
		{AuraID = 252848, UnitID = "player"}, --戒律
		{AuraID = 253437, UnitID = "player"}, --神圣2
		{AuraID = 253443, UnitID = "player"}, --神圣4
		--戒律法袍
		{AuraID = 216135, UnitID = "player"},
	},
	["Focus Aura"] = {		-- 焦点光环组
		--恢复
		{AuraID = 139, UnitID = "focus", Caster = "player"},
	},
	["Spell Cooldown"] = {	-- 冷却计时组
		--饰品
		{SlotID = 13, UnitID = "player"},
		{SlotID = 14, UnitID = "player"},
		--神圣赞美诗
		{SpellID = 64843, UnitID = "player"},
		--痛苦压制
		{SpellID = 33206, UnitID = "player"},
	},
}

C.AddNewAuraWatch("PRIEST", list)