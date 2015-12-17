FROM base-dev

RUN sudo pacman -S --noconfirm rust cargo
RUN sudo pacman -S --noconfirm gcc pkg-config

RUN cargo install rustfmt
RUN cargo install cargo-edit

RUN echo 'PATH=/home/gyscos/.cargo/bin:$PATH' >> .zshrc
