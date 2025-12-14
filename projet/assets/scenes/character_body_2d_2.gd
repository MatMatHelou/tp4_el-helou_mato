extends CharacterBody2D
@onready var player_node: CharacterBody2D = get_parent().get_node("Player")

var speed
var should_chase: bool = false

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	if should_chase: 
		var direction = (player_node.global_position-global_position).normalized()
		velocity = lerp(velocity, direction * speed, 8.5*delta)
		move_and_slide()
		if direction.x 
