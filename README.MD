# Emulador de UNIX V7 PDP-11 com Docker

Este projeto fornece um ambiente pronto para executar o clássico sistema operacional UNIX V7 usando o emulador SIMH PDP-11 dentro de um contêiner Docker.

## Pré-requisitos

Antes de começar, certifique-se de ter instalado:
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [WSL (Windows Subsystem for Linux)](https://learn.microsoft.com/en-us/windows/wsl/install)

## Configuração e Instalação

1. **Crie uma pasta para o projeto:**
   Crie uma pasta no seu drive `C:` chamada `UnixProjeto`.

2. **Adicione o Dockerfile:**
   Coloque o `Dockerfile` fornecido dentro da pasta `C:\UnixProjeto`.

3. **Abra o PowerShell:**
   Abra o seu terminal PowerShell e navegue até a pasta do projeto:
   ```powershell
   cd C:\UnixProjeto
   ```

4. **Construa a Imagem Docker:**
   Execute o seguinte comando:

   ```powershell
   docker build -t unixv7 .
   ```

5. **Executando o Sistema:**
   Inicie o Contêiner:

   ```powershell
   docker run -it unixv7
   ```

6. **Iniciando (Booting) o UNIX V7:**
   Assim que o simulador iniciar, você verá um prompt `:`. Digite o seguinte comando para inicializar o kernel:

   ```plaintext
   rl(0,0)rl2unix
   ```

   Após o surgimento do `#`, parabéns! Você está logado no sistema UNIX como usuário root.


## Extra: Executando C no Unix

1. **Crie o arquivo C:**
   ```bash
   echo 'main() { printf("Olá, Grupo 9!\n"); }' > hello.c
   ```

2. **Compile o código:**
   ```bash
   cc hello.c
   ```

3. **Execute o programa:**
   ```bash
   ./a.out
   ```


**Como Sair**

1. Pressione `Ctrl + E` para acessar o prompt do SIMH (`sim>`).

2. Digite `quit` e pressione `Enter` para fechar o emulador e o contêiner de forma limpa.
