extends Sprite2D


var trueCooldown = 1.0
var cooldown = trueCooldown
var canShoot = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	cooldown = cooldown - delta
	if(Input.is_action_pressed("shoot")):
		cooldown_check()

func cooldown_check():
	print("Checking Cooldown")
	var stats = get_stats()
	if(cooldown <= 0.0 && stats != null):
		shoot()
		cooldown = trueCooldown * stats["fireRateChange"]
	else:
		print("Still cooling down", cooldown)
		
func shoot():
	print("Shooting")

func get_stats():
	var stats = PlayerStats.player
	return stats
