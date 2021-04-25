
ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent("hell_mushroomfarmer:sell")
AddEventHandler("hell_mushroomfarmer:sell", function()
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local money = math.random(80,500)
                xPlayer.addMoney(money)
                TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'You got ' ..money.. '$', length = 2500, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
              end)
