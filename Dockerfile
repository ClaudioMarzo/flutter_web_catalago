#ESTÁGIO [1] - Instalar dependências e construir o aplicativo em um ambiente de construção 

#FROM debian:latest - Instala a ultima versão do debian disponivel no dockerhub
#AS build-env - É uma instrução que nomeia essa etapa do build como build-env
FROM debian:latest AS build-env

# Instale dependências de vibração 
# RUN apt-get update - Atualiza a lista de pacotes disponíveis para instalação do debian
# RUN apt-get instal [...] - Instala uma série de pacotes necessários para o ambiente de construção.
# Esses pacotes incluem ferramentas de linha de comando como curl, git, wget, e sed
# E bibliotecas e dependências específicas como libgconf-2-4, gdb, libstdc++6, libglu1-mesa, fonts-droid-fallback, lib32stdc++6, e python3
RUN apt-get update 
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3 sed
RUN apt-get clean

# Clone o repositório flutter
# RUN git clone https://github.com/flutter/flutter.git - É usada para clonar o repositório do Flutter SDK para o diretório /usr/local/flutter 
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Definir caminho de vibração
# Atualiza a variável de ambiente PATH para incluir os diretórios onde estão localizados os executáveis do Flutter SDK e do Dart SDK.
# /usr/local/flutter/bin - caminho do Flutter
# /usr/local/flutter/bin/cache/dart-sdk/bin - caminho do Dart
ENV PATH="${PATH}:/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin"

# # Cria um usuário não-root
# RUN useradd -ms /bin/bash flutteruser
# USER flutteruser

# Executar flutter doctor 
# RUN flutter doctor -v - Este comando executa o Flutter Doctor com a opção -v para uma saída detalhada.
# RUN flutter channel master - Este comando muda o canal do Flutter para o canal master.
# RUN flutter update - Este comando atualiza o Flutter SDK
RUN flutter doctor -v
RUN flutter channel master
RUN flutter upgrade

# Copie os arquivos para o contêiner a ser contruido
# COPY . /app/ - Copia todo o conteúdo do projeto atual para a pasta "app", caso o pasta "app" não exista ele criará de forma automática
# WORKDIR /app/ - Informa que o diretório de trabalho padrão vai ser "/app"
# RUN flutter build web - Executa a aplicação Flutter Web
COPY . /app/
WORKDIR /app/
RUN flutter build web

#ESTÁGIO [2] - Crie a imagem em tempo de execução 
# FROM nginx:1.21.1-alpine - Especifica a imagem base para a construção da imagem final. Neste caso, a imagem base é nginx:1.21.1-alpine, 
# que é uma versão do NGINX otimizada para uso em containers Docker.
# COPY --from=build-env /app/build/web /usr/share/nginx/html - Este comando copia os arquivos de construção do aplicativo identificada pelo nome build-env
# para o diretório /usr/share/nginx/html dentro do container. Este diretório é o local padrão onde o NGINX serve arquivos estáticos. 
# A opção --from=build-env indica que os arquivos  devem ser copiados do container nomeado build-env, definido na etapa anterior.
FROM nginx:1.21.1-alpine 
COPY --from=build-env /app/build/web /usr/share/nginx/html

# # Configuração do Nginx para servir a aplicação Flutter Web
# # COPY nginx.conf /etc/nginx/conf.d/default.conf - copiar o arquivo de configuração nginx.conf do seu sistema de arquivos 
# # local para o diretório /etc/nginx/conf.d/ dentro do container Docker
# COPY config/nginx.conf /etc/nginx/conf.d/default.conf

# Expor a porta 80 para acesso externo
EXPOSE 80

# Iniciar o Nginx

CMD ["nginx", "-g", "daemon off;"]
