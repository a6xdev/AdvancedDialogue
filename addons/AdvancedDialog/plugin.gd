@tool
extends EditorPlugin

var UI_VOICEDIALOG_BUTTON = null
var handles_object = null

# <---------------------------------------------------->
# <----------------------CORE-------------------------->
# <---------------------------------------------------->
func _enter_tree() -> void:
	UI_VOICEDIALOG_BUTTON = Button.new()
	UI_VOICEDIALOG_BUTTON.text = "ADD LANGUAGE"
	UI_VOICEDIALOG_BUTTON.pressed.connect(self._button_pressed)

	
	add_control_to_container(CONTAINER_CANVAS_EDITOR_MENU, UI_VOICEDIALOG_BUTTON)
	UI_VOICEDIALOG_BUTTON.hide()

func _exit_tree() -> void:
	remove_control_from_container(CONTAINER_CANVAS_EDITOR_MENU, UI_VOICEDIALOG_BUTTON)

func _handles(object: Object) -> bool:
	if object is Node and object is AdvancedDialog:
		UI_VOICEDIALOG_BUTTON.show()
		handles_object = object
		return true
	else:
		UI_VOICEDIALOG_BUTTON.hide()
		handles_object = null
		return false

# <---------------------------------------------------->
# <--------------------SOURCE-------------------------->
# <---------------------------------------------------->
func _button_pressed():
	if handles_object != null:
		handles_object.add_language()
