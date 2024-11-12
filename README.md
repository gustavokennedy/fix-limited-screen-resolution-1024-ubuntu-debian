# Correção Limite de Resolução e Bordas Pretas no Ubuntu/Debian.
# Fix Resolution Limit and Black Borders on Ubuntu/Debian.

EN:
After some time searching, I finally managed to solve it. Settings for Ubuntu and Debian to fix limit on secondary monitor resolution.  Also fix for screen with black border.

PT-BR:
Depois de algum tempo pesquisando, finalmente consegui resolver. Configurações para Ubuntu e Debian para correção de limite na resolução do monitor segundário. Correção também para tela com borda preta.

## Primeiro passo / First Step

Primeiro passo tive que acessar tela de login do Ubuntu e alterar o modo para XORG.

First step I had to access the Ubuntu login screen and change the mode to XORG.

## Criando arquivo / Set file

Agora crie o arquivo set-display para fazer a configuração e depois iniciar automaticamente em todo reboot.

Now create the set-display file to configure it and then start it automatically on every reboot.

```bash
nano set-display.sh
```

```bash
#!/bin/bash
xrandr --newmode "1920x1080R"  138.50  1920 1968 2000 2080  1080 1083 1088 1111 +hsync -vsync
xrandr --addmode DP-1 1920x1080R
xrandr --output DP-1 --mode 1920x1080R --scale 1x1 --panning 1920x1080 --left-of HDMI-1
```

```bash
chmod +x set_display.sh
```

## Resolução bugada - alterando 'zoom'

```bash
xrandr --output DP-1 --panning 1920x1080R
```

## Startup App

Para não perder as configurações, define o arquivo como aplicação de inicialização.

To avoid losing the settings, define the file as the startup application.

Aperte ALT+F2 e digite:

Press ALT+F2 and type:

```bash
gnome-session-properties 
```

Adicione um novo e selecione o arquivo. Salve e reinicie para testar.

Add a new one and select the file. Save and restart to test.
