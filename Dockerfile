FROM mcr.microsoft.com/devcontainers/universal:latest

RUN apt-get install gettext cmake g++ pkg-config unzip curl
RUN git clone https://github.com/neovim/neovim
RUN cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
RUN cd neovim && make install

USER codespace
WORKDIR /home/codespace

RUN git clone https://github.com/t-rosa/nvim.git .config/nvim
