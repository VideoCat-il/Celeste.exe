extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_window().close_requested.connect(bloqueo)
	_Activar()

func bloqueo():
	get_window().title = "🍓Madeline🍓"

func _Activar():
	await get_tree().create_timer(0.1).timeout
	var windows = Window.new()
	var fresas = load("res://fresa.tscn").instantiate()
	windows.size = Vector2i(160,160)
	windows.position = Vector2i(randi_range(0,get_window().size.x-160),randi_range(0,get_window().size.y-160))
	$Windows.add_child(windows)
	windows.add_child(fresas)
	_Activar()
