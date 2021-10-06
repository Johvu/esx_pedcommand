TriggerEvent('es:addCommand', 'change-npc', function(source, args, user)
	TriggerClientEvent('npcvaihto', source, args, {})
end, {help = "Choose the NPC you are playing"})