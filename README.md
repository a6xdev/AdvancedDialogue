# AdvancedDialog

Thanks for visiting my Plugin! :)
If you could help me on Patreon I would greatly appreciate it!
[![Patreon](https://img.shields.io/badge/Patreon-Support%20this%20Project-%23f1465a?style=for-the-badge)]([patreon.com/a6xdev](https://patreon.com/a6xdev?utm_medium=unknown&utm_source=join_link&utm_campaign=creatorshare_creator&utm_content=copyLink))

**AdvancedDialog** is a versatile plugin for Godot, designed primarily for 3D games, but fully accessible for 2D projects. With this plugin, you can add voice dialogue and subtitles automatically.

## Features:

- Multilingual support
- Simple to use
- Simple Integration

## Requirements:
 - [Godot v4.3](https://godotengine.org/download/archive/4.3-rc3)

## Getting Started:

### Installation
1. Download the AdvancedDialog plugin and add it to your Godot project.
2. Activate the plugin in Project > Project Settings > Plugins.

### Initial Setup
 1. Instantiate the Scene: Add the DialogComponent node to your scene.

### How to Use
 1. In the Inspector, select the DialogComponent node.
 2. Add a new element to the inspector.
    - ![image](https://github.com/user-attachments/assets/fab6a2bb-76dd-4980-8b05-69ef40655f9a)
 4. Create a new "DialogResource" for each language // **NOTE: You can do this directly in AnimationPlayer to speed up your time :)**
![image](https://github.com/user-attachments/assets/cbdaeacb-e572-4ed6-9e4b-f3b0d20106ff)

 6. Within "DialogResource", fill in the options:
    - language: The language code (e.g. en_us, pt_br).
    - audio: The audio file corresponding to the dialogue.
    - subtitles: The corresponding subtitle text. 

### 5. Using AdvancedDialog in Cutscenes
 - Automatic Configuration: When starting the scene, the plugin automatically loads the current language defined in the game settings.
 - Dialog Execution: In AnimationPlayer or directly in the script, call the play_dialog() function to start playing the audio and display the subtitle.
 - Subtitles will be automatically displayed during audio playback, disappearing at the end.
