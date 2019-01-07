script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
		local inventory =  player.get_main_inventory()
		local quickbar = player.get_quickbar()
			if inventory.get_item_count("car") == 0 and quickbar.get_item_count("car") == 0
			then
				local position = { } --create empty table
						::rpt::
						repeat
						--Pick a random position in a square of radius 15 tiles
						position.x = math.random() * 30 - 15 --math.random() gets a random number 0 to 1. multiply by 30 => 0 to 30. subtract 15 => -15 to 15
						position.y = math.random() * 30 - 15
						until 	position.x > 5 or position.x < -5 or position.y > 5 or position.y < -5
								position.x = position.x + player.position.x
								position.y = position.y + player.position.y
						if game.surfaces[1].can_place_entity{name = "car", position = position, force = game.forces.player,} == false
						then goto rpt
						end
				game.surfaces[1].create_entity{
					name = "car",
					position = position,
					direction = math.random(8)-1,
					force = game.forces.player,
				}
			else player.print("Player already has an SMCE!")
		end
	end
)
