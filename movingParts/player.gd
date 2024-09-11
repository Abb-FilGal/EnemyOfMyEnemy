# This line should be the first line in your script
extends CharacterBody2D


var input: Vector2

func get_input():
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	return input.normalized()

func _process(delta: float):
	
	var stats = getStats()
	print("Current stats:", stats)
	
	var playerInput = get_input()
	velocity = lerp(velocity, playerInput * stats["speed"], delta * stats["accel"])
	
  
	move_and_slide()
	
#func _ready() -> void:
	
func getStats():
	var stats = PlayerStats.player
	return stats
	
	
