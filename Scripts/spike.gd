extends Area2D

# Called when the player or any body enters the spike's collision shape
func _on_Area2D_body_entered(body):
	print(body.name, " entered")
	# Check if the colliding body is the player or another object with health
	if body.name == "Player":
		# Reduce the player's health (adjust depending on how you manage player health)
		PlayerStats.player["health"] -= 10
		print("Player hit the spike! Health:", PlayerStats.player["health"])
		# Calculate pushback direction and apply it
		var pushback_strength = 5000  # Adjust this value as needed
		var direction = (body.global_position - global_position).normalized()  # Get the direction away from the spike
		#direction = -direction
		
		# Apply pushback to the player's pushback_velocity
		body.velocity += direction * pushback_strength
