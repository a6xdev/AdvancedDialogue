# VoiceDialog Plugin para Godot

**VoiceDialog** é um plugin para Godot Engine que facilita a criação de diálogos com suporte a dublagem em múltiplos idiomas. Ideal para jogos e aplicações interativas que exigem diálogos dinâmicos e legendas sincronizadas com o áudio.

## Recursos

- **Suporte a Múltiplos Idiomas**: Adicione e gerencie diferentes idiomas e suas respectivas traduções de áudio e texto.
- **Integração com Godot**: Utilize o plugin diretamente na Godot Engine, aproveitando as funcionalidades nativas de áudio e UI.
- **Fácil Configuração**: Adicione novos idiomas e diálogos rapidamente através do editor Godot.
- **Sincronização de Legendas**: Exiba legendas sincronizadas com o áudio durante a reprodução dos diálogos.

## Instalação

1. Clone ou baixe o repositório do plugin.
2. Coloque a pasta do plugin na pasta `addons` do seu projeto Godot.
3. No editor Godot, vá até `Project` -> `Project Settings` -> `Plugins`, e ative o plugin `VoiceDialog`.

## Como Usar

1. Crie um novo recurso `DialogResource` para cada diálogo, configurando áudio e texto.
2. No seu script, adicione o `AdvancedDialog` e configure-o com os recursos `DialogResource`.
3. Use o método `play_dialog(dialog_index)` para iniciar a reprodução do diálogo, passando o índice do diálogo desejado.

## Exemplo

```gdscript
@tool
extends Node

@export var dialog_plugin: AdvancedDialog

func _ready():
    dialog_plugin.play_dialog(0)  # Reproduz o primeiro diálogo
