local F, C = unpack(select(2, ...))

C.themes["Blizzard_GMChatUI"] = function()
	local frame = _G["GMChatFrame"]
	frame:SetClampRectInsets(0, 0, 0, 0)
	F.StripTextures(frame)
	F.SetBD(frame):SetPoint("BOTTOMRIGHT", C.mult, -5)

	local eb = frame.editBox
	eb:SetAltArrowKeyMode(false)
	F.SetBD(eb)
	for i = 3, 8 do
		select(i, eb:GetRegions()):SetAlpha(0)
	end
	eb:ClearAllPoints()
	eb:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 0, -7)
	eb:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, -32)

	local lang = _G["GMChatFrameEditBoxLanguage"]
	lang:GetRegions():SetAlpha(0)
	lang:SetPoint("TOPLEFT", eb, "TOPRIGHT", 3, 0)
	lang:SetPoint("BOTTOMRIGHT", eb, "BOTTOMRIGHT", 28, 0)
	F.SetBD(lang)

	local tab = _G["GMChatTab"]
	F.StripTextures(tab)
	F.SetBD(tab):SetBackdropColor(0, .6, 1, .3)
	tab:SetPoint("BOTTOMLEFT", frame, "TOPLEFT", 0, 3)
	tab:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 28)
	GMChatTabIcon:SetTexture("Interface\\ChatFrame\\UI-ChatIcon-Blizz")

	F.ReskinClose(GMChatFrameCloseButton)
	GMChatFrameCloseButton:ClearAllPoints()
	GMChatFrameCloseButton:SetPoint("RIGHT", GMChatTab, -5, 0)

	F.HideObject(frame.buttonFrame)
end