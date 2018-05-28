FROM ubuntu:18.04
RUN apt install -y make \
   build-essential \
   libssl-dev \
   zlib1g-dev \
   libbz2-dev \
   libreadline-dev \
   libsqlite3-dev \
   wget \
   curl \
   llvm \
   libncurses5-dev \
   libncursesw5-dev \
   xz-utils \
   tk-dev
RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
COPY .bash_profile ~/
RUN pyenv update \
    pyenv install anaconda3-5.0.1 \
    nvm install --lts \
RUN pyenv activate anaconda3-5.0.1
RUN conda install -c conda-forge jupyterlab

    