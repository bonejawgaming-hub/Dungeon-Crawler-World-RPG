class_name idle_state extends State

@onready var walk: idle_walk = $"../Walk"

## what happens when the player enters this state?
func Enter() -> void:
	player.UpdateAnimation( "idle" )
	pass

## what happens when the player exits this state?
func Exit() -> void:
	pass

## what happens during the _process update in this state?
func Process( _delta : float ) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null

## what happens during the _Physics_Process update in this state?
func Physics( _delta : float ) -> State:
	return null

## what happens with input events in this state?
func HandleInput( _event: InputEvent ) -> State:
	return null
