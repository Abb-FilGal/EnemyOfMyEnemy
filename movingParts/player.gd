# This line should be the first line in your script
extends CharacterBody2D



var speed = 450.0
const accel = 16.0
var health = 100.0

var input: Vector2

func get_input():
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	return input.normalized()

func _process(delta: float):
	var playerInput = get_input()
  
	velocity = lerp(velocity, playerInput * speed, delta * accel)
  
	move_and_slide()

func _ready():
	print("Speed:", PlayerStats.playerSpeed)
	PlayerStats.playerSpeed += 50
	print("Speed2:", PlayerStats.playerSpeed)
	
