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
			StaticPopup1Button1:Click()
		end
        end
end)
