---@meta

---Methods for setting with create basins, using UnlimitedPeripheralWorks api
---
------
---[Official Documentation](https://docs.siredvin.site/UnlimitedPeripheralWorks/integrations/create/filters/)
---@class ccTweaked.peripherals.Basin
Basin = {}

---Get a list of items in this inventory

---This is similar to list(), but can provide more detailed information per item.
---If detailed is true (default), each item includes extra information such as metadata, tags, and more. Pass false to reduce overhead for faster performance.
---@param detailed? boolean Whether to include full item details (default true)
---@return table list The list of items in this inventory, with optional detailed information
---## Example
--- ---local chest = peripheral.find("minecraft:chest") ---for slot, item in pairs(chest.items()) do --- print(("%d x %s in slot %d"):format(item.count, item.name, slot)) ---end ---
function Basin.items(detailed) end

---Push items to another inventory with optional filtering

---You can filter which items to push using an ItemQuery table, and optionally limit the number of items pushed.
---@param to string The name of the target inventory
---@param itemQuery? table Optional query table to filter items to push
---@param limit? number Optional limit on number of items to move
---@return number quantity The number of items successfully transferred
function Basin.pushItem(to, itemQuery, limit) end

---Pull items from another inventory with optional filtering

---You can filter which items to pull using an ItemQuery table, and optionally limit the number of items pulled.
---@param from string The name of the source inventory
---@param itemQuery? table Optional query table to filter items to pull
---@param limit? number Optional limit on number of items to move
---@return number quantity The number of items successfully transferred
function Basin.pullItem(from, itemQuery, limit) end

---@return string
function Basin.getFilterName() end

---@param itemID string
---@return nil
function Basin.setFilterItem(itemID) end

--- Clears basin item filter
--- @return nil
function Basin.clearFilterItem() end
