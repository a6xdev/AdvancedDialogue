@tool
extends EditorPlugin

var UI_VOICEDIALOG_BUTTON = null
var handles_object = null

# <---------------------------------------------------->
# <----------------------CORE-------------------------->
# <---------------------------------------------------->
	
func _enter_tree() -> void:
	pass

func _exit_tree() -> void:
	pass

#func _handles(object: Object) -> bool:
	#if object is Node and object is AdvancedDialog:
		#UI_VOICEDIALOG_BUTTON.show()
		#handles_object = object
		#return true
	#else:
		#UI_VOICEDIALOG_BUTTON.hide()
		#handles_object = null
		#return false
#
# <---------------------------------------------------->
# <--------------------SOURCE-------------------------->
# <---------------------------------------------------->
#func _button_pressed():
	#if handles_object != null:
		#handles_object.add_language()
