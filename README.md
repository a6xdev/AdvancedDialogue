# AdvancedDialog

**AdvancedDialog** é um plugin versátil para a Godot, projetado principalmente para jogos 3D, mas totalmente acessível para projetos 2D. Com este plugin, você pode adicionar diálogos com voz e legendas automaticamente.

## Recursos Principais:

- Suporte para multilinguagens
- Integração Simples

## Como Usar:

### 2. Instalação
1. Faça o download do plugin AdvancedDialog e adicione-o ao seu projeto Godot.
2. Ative o plugin em Project > Project Settings > Plugins.

## 3. Configuração Inicial
 1. Instancie a Cena: Adicione o nó AdvancedDialog à sua cena.

## 4. Adicionando Idiomas
 1. No Inspetor, selecione o nó AdvancedDialog.
 2. Utilize o botão Add Language para adicionar um novo idioma ao sistema.
 3. Para cada idioma, defina:
    - language: O código do idioma (por exemplo, en_us, pt_br).
    - audio: O arquivo de áudio correspondente ao diálogo.
    - subtitles: O texto da legenda correspondente.

## 5. Usando o AdvancedDialog nas Cutscenes
 - Configuração Automática: Ao iniciar a cena, o plugin carrega automaticamente o idioma atual definido nas configurações do jogo.
 - Execução de Diálogos: No AnimationPlayer ou diretamente no script, chame a função playDialog() para iniciar a reprodução do áudio e exibir a legenda.
 - As legendas serão exibidas automaticamente durante a reprodução do áudio, desaparecendo ao final.

 ## Exemplos de Uso:

 