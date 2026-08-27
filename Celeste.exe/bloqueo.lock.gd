extends Control

var intentos = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_window().close_requested.connect(bloqueo)
	get_window().title = "Fresa Celeste"

func bloqueo():
	get_window().title = "🍓Madeline no quiere que cierres esto (" + str(intentos)+ ")🍓"
