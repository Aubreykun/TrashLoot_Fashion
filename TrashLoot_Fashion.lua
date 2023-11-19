DEFAULT_CHAT_FRAME:AddMessage("TrashLoot Fashion Coin Edition is Active", 1, 0, 1);
TrashLoot_Fashion = CreateFrame("Frame")
TrashLoot_Fashion:RegisterEvent("START_LOOT_ROLL") 
TrashLoot_Fashion:RegisterEvent("LOOT_BIND_CONFIRM")
TrashLoot_Fashion:RegisterEvent("ZONE_CHANGED_NEW_AREA")
TrashLoot_Fashion:SetScript("OnEvent", function()
if event == "START_LOOT_ROLL" then
	local rollID, rollTime, rollItemLink, rollQuantity, rollPlayer = arg1, arg2, arg3, arg4, arg5
		local texture, name, count, quality = GetLootRollItemInfo(rollID)
	if name == "Fashion Coin" then
        	RollOnLoot(rollID, 1)
			for i=1,STATICPOPUP_NUMDIALOGS do -- for i=1 to (I think this is always 4 - STATICPOPUP_NUMDIALOGS)
				local frame = getglobal("StaticPopup"..i)  -- set frame to be = StaticPopup1, StaticPopup2 etc
				if frame:IsShown() and frame.which == "CONFIRM_LOOT_ROLL" then -- what is the StaticPopup for 
					getglobal("StaticPopup"..i.."Button1"):Click(); --click StaticPopup..i..Button1:Click()
				end
	end
end)
