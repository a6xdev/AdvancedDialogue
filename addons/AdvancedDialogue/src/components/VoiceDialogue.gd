@tool
extends AudioStreamPlayer
class_name VoiceDialogue

@export var default_language: String = "en"
@export var resource: Array[VoiceDialogueResource] = []

@export_group("Subtitle")
@export var DisableSubtitle:bool = false

var subtitle

func _ready() -> void:
	if subtitle != null:
		pass

func PlayDialogue(): # Play the Dialogue
	var current_locale = get_current_locale()
	var found_locale = false
	
	for dialogue in resource:
		if dialogue.locale == current_locale:
			if dialogue.voice:
				stream = dialogue.voice
				found_locale = true
				play()
				break
				
	if not found_locale: # Use the default language, if the current language is not found
		for dialogue in resource:
			if dialogue.locale == default_language:
				if dialogue.voice:
					stream = dialogue.voice
					found_locale = true
					play()
					break

func get_current_locale() -> String:
	var current_locale = TranslationServer.get_locale()
	return current_locale if current_locale in get_available_languages() else default_language

func get_available_languages() -> Array:
	var available_languages = []
	for dialog in resource:
		if dialog.locale not in available_languages:
			available_languages.append(dialog.locale)
	return available_languages

func _on_finished():
	subtitle.visible = false
