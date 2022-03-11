

RegisterCommand("change-npc", function(source, args, user)

	TriggerClientEvent('npcvaihto', source, args, user, {})
    end)
