extends StaticBody2D

# Called when the node is instantiated.
func _ready():
	var spike_collision = get_node("Sprite2D/StaticBody2D")
	spike_collision.connect("body_entered", self, "_on_spike_collision_body_entered")
	#pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

# Called when a body enters the collision shape.
func body_entered(body):
	# Check if the colliding body has a "health" property
	print("Something happende")
	if body.name != "player":
		# Deal damage to the colliding body
		body.health -= 10  # Adjust the damage value as needed
		print("Damaged:", body.name)
	else:
		PlayerStats.player["health"] -= 10
