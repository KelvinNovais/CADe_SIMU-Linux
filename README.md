# CADe_SIMU-Linux

O CADe_SIMU é um ShareSoftware desenvolvido por Juan Luis Villanueva Montoto.
Aqui realizei apenas o porte para Linux.

Senha: 4962

Nota: para fechar a janela principal, feche primeiro as subjanelas:

<img 
  style="display: block; 
         margin-left: auto;
         margin-right: auto;
         width: 30%;"
  src="https://github.com/user-attachments/assets/b62bdf03-96de-4254-a897-80fd9bfa5df8" alt="Subjanelas" width="400" height="auto"
/>

## Download

Você pode baixar o AppImage [AQUI](https://github.com/KelvinNovais/CADe_SIMU-Linux/releases/download/Stable/CADe_SIMU-x86_64-Versao_1.2.0.AppImage).

![CADeSIMU](https://user-images.githubusercontent.com/83086622/179129374-4f60b32a-d334-4fd4-ba95-ec79c6cf4117.gif)

## Créditos

- Site oficial: https://canalplc.blogspot.com/
- Package: https://github.com/sudo-give-me-coffee/wine32-deploy

## Packaging

Para gerar o AppImage, clone o repositório e execute o `packager.sh`:
```bash
git clone https://github.com/KelvinNovais/CADe_SIMU-Linux.git
cd CADe_SIMU-Linux
chmod +x packager.sh
./packager.sh
```
