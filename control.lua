script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
		local inventory =  player.get_main_inventory()
		local quickbar = player.get_quickbar()
			if inventory.get_item_count("car") == 0 and quickbar.get_item_count("car") == 0
			then player.insert{name='car', count=1}
			else player.print("Player already has an SMCE!")
		end
	end
)
