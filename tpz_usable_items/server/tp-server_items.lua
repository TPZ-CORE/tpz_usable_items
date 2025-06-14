
local TPZInv = exports.tpz_inventory:getInventoryAPI()

---------------------------------------------------------------
--[[ General Events ]]--
---------------------------------------------------------------

RegisterNetEvent("tpz_usable_items:remove")
AddEventHandler("tpz_usable_items:remove", function(itemName)
	local _source = source

	if Config.UsableItems[itemName] == nil then
		return
	end

	TPZInv.removeItem(_source, itemName, 1)

end)

---------------------------------------------------------------
--[[ Items ]]--
---------------------------------------------------------------

Citizen.CreateThread(function()

	for item, itemData in pairs (Config.UsableItems) do

		TPZInv.registerUsableItem(item, "tpz_usable_items", function(data)
			local _source = data.source

			if itemData.RequiredItemUse.Enabled then 
				local itemQuantity = TPZInv.getItemQuantity(_source, itemData.RequiredItemUse.Item)

				if itemQuantity < itemData.RequiredItemUse.Quantity then
					SendNotification(_source, itemData.RequiredItemUse.Warning, "error")
					return
				end

			end

			if itemData.RemoveDurabilityOnUse.Enabled then
				local randomValueRemove = math.random(itemData.RemoveDurabilityOnUse.RemoveValue.min, itemData.RemoveDurabilityOnUse.RemoveValue.max)
				TPZInv.removeItemDurability(_source, item, randomValueRemove, item.itemId, true)
			end

			if itemData.RequiredItemUse.Enabled and itemData.RequiredItemUse.Remove then 
				TPZInv.removeItem(_source, itemData.RequiredItemUse.Item, itemData.RequiredItemUse.Quantity)
			end

			TriggerClientEvent("tpz_usable_items:client:use", _source, item)
			TriggerClientEvent('tpz_inventory:closePlayerInventory', _source)
		end)

	end

end)
