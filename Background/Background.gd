extends ColorRect

onready var HUD = get_node("/root/Game/HUD")

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()


func update_color():
	if HUD.color_background:
		$Color.color = Color8(150,242,215)
	else:
		pass

func _on_HUD_changed():
	update_color()
