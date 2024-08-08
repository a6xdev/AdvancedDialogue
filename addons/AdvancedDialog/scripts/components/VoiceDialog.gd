@tool
extends AudioStreamPlayer
class_name AdvancedDialog

@export var dialogs: Array[DialogResource] = []
var default_language: String = ""

var subtitle

func _ready():
	var DialogLabel = preload("res://addons/AdvancedDialog/components/DialogLabel.tscn")
	subtitle = DialogLabel.instantiate()
	add_child(subtitle)
	subtitle.visible = false
	connect("finished", Callable(self, "_on_finished"))

func play_dialog(dialog_index: int):
	if dialog_index < 0 or dialog_index >= dialogs.size():
		print("Dialog index fora do alcance")
		return
	
	var dialog = dialogs[dialog_index]
	
	if dialog.audio:
		stream = dialog.audio
		subtitle.text = dialog.text
		subtitle.visible = true
		play()

func _on_finished():
	subtitle.visible = false
