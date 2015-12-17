FROM pritunl/archlinux:latest

# Very base
RUN pacman -S --noconfirm neovim zsh sudo

RUN curl -fLo /etc/zsh/zshrc http://abury.fr/etc_zshrc

# Some dev tools
RUN pacman -S --noconfirm git subversion

RUN useradd -m -G wheel gyscos
RUN chsh -s /usr/bin/zsh gyscos
RUN echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER gyscos
WORKDIR /home/gyscos

RUN echo "alias vim=nvim" >> .zshrc

RUN curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN curl -fLo ~/.config/nvim/init.vim http://abury.fr/init.vim

RUN nvim +PlugInstall +qall

CMD zsh

