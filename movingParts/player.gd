extends CharacterBody2D

var input: Vector2

func get_input():
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	return input.normalized()

func _physics_process(delta: float) -> void:
	var stats = getStats()
	print("Current stats:", stats)
	
	# Get player input
	var playerInput = get_input()

	# Calculate the new velocity based on input
	velocity = lerp(velocity, playerInput * stats["speed"], delta * stats["accel"])

	# Move the character
	move_and_slide()

func getStats():
	var stats = PlayerStats.player
	return stats
