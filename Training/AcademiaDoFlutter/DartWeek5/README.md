# Semana do Flutter 5

## Preparação do Ambiente

> `https://academiadoflutter.com.br/preparacao`

### Comece por aqui!!!

- Fazer a configuração do ambiente
- Configurar o ambiente Linux
- FVM ou Fluter Nativo?
- Finalmente, sobre o VSCode que será o ambiente de desenvolvimento

### Configuração do ambiente

- Reforça a necessidade de avaliar as dicas daqui para um ambiente adequado ao Flutter
- Sugestão: usar via FVM pois trabalha com versões como Node/NVM

### Configurando ambiente Linux

Instalando Git e várias versões do JAVA:

- Instalar Git

```sh
sudo apt install git
```

- Instalar Java

```sh
sudo apt purge openjdk*
```

No Google pesquisar por "jdk11" e selecionar:

- `https://www.oracle.com/br/java/technologies/javase/jdk11-archive-downloads.html`

E na página selecionar o arquivo:

- Linux x64 Compressed Archive (161.08 MB): `jdk-11.0.16_linux-x64_bin.tar.gz`

Descompactar o arquivo, e mover a pasta `jdk-11.015` para `/usr/local/lib/jdk`.

Criar link simbolico:

- `ln -s jdk-11.0.15 current`

Adicionar ao final de `~/.bashrc` as seguintes variáveis de ambiente:

```sh
export JAVA_HOME=/usr/local/bin/jdk/current
export PATH=$PATH:$JAVA_HOME/bin
```

Testar com `java -version`

No Google pesquisar por "jdk8" e selecionar:

- `https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html`

E na página selecionar o arquivo:

- Linux x64	(185.05 MB): `jdk-8u202-linux-x64.tar.gz`

Descompactar o arquivo, e mover a pasta `jdk1.8.0_202` para `/usr/local/lib/jdk`.

Remover o link simbolico e recriar apontando para a v8 do Java:

- `ln -s jdk1.8.0_202/ current`

Testar com `java -version` vemos o chaveamento entre as versões.

### Configurando Android e Emulador

No Google pesquisar por "android studio" e selecionar "Download do Android Studio - O IDE oficial do Android".








