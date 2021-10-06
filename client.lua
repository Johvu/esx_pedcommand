ESX = nil TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent( 'npcvaihto' )
AddEventHandler( 'npcvaihto', function(args)
    local modelHash = tostring(args[1])

    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        ESX.Streaming.RequestModel(modelHash, function()
            SetPlayerModel(PlayerId(), modelHash)
            SetModelAsNoLongerNeeded(modelHash)

            TriggerEvent('esx:restoreLoadout')
        end)
    end)

end )