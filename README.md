# AdvancedDialog

**AdvancedDialog** é um plugin versátil para a Godot, projetado principalmente para jogos 3D, mas totalmente acessível para projetos 2D. Com este plugin, você pode adicionar diálogos com voz e legendas automaticamente.

## Recursos Principais:

- Suporte para multilinguagens
- Integração Simples

## 1. Como Usar:

### 2. Instalação
1. Faça o download do plugin AdvancedDialog e adicione-o ao seu projeto Godot.
2. Ative o plugin em Project > Project Settings > Plugins.

## 3. Configuração Inicial
 1. Instancie a Cena: Adicione o nó AdvancedDialog à sua cena.

## 4. Como Usar
 1. No Inspetor, selecione o nó AdvancedDialog.
 2. Adicione um novo elemento no inspector.
![image](https://github.com/user-attachments/assets/fab6a2bb-76dd-4980-8b05-69ef40655f9a)
 3. Crie um novo "DialogResource" para cada idioma // **OBS: Você pode fazer isso direto no AnimationPlayer agilizar seu tempo :)**
 5. ![image](https://github.com/user-attachments/assets/cbdaeacb-e572-4ed6-9e4b-f3b0d20106ff)
 6. Dentro do "DialogResource", preencha as opções:
    - language: O código do idioma (por exemplo, en_us, pt_br).
    - audio: O arquivo de áudio correspondente ao diálogo.
    - subtitles: O texto da legenda correspondente.

## 5. Usando o AdvancedDialog nas Cutscenes
 - Configuração Automática: Ao iniciar a cena, o plugin carrega automaticamente o idioma atual definido nas configurações do jogo.
 - Execução de Diálogos: No AnimationPlayer ou diretamente no script, chame a função playDialog() para iniciar a reprodução do áudio e exibir a legenda.
 - As legendas serão exibidas automaticamente durante a reprodução do áudio, desaparecendo ao final.
