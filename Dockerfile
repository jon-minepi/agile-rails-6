FROM amd64/ruby:3.0

WORKDIR /home/depot
EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update
RUN apt-get install -y autoconf \
bison \
build-essential \
g++ \
gcc \
git \
libffi-dev \
libgconf-2-4 \
libgdbm-dev \
libncurses5-dev \
libreadline-dev \
libsqlite3-dev \
libssl-dev \
libxi6 \
libyaml-dev \
make \
sqlite3 \
xvfb \
zip \
zlib1g-dev

# curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# source ~/.bashrc
# rbenv install 3.0.0

RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
# echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
# apt update && apt install yarn

# curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
# apt-get -y update
# apt-get -y install google-chrome-stable
# wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
# unzip chromedriver_linux64.zip

# mv chromedriver /usr/bin/chromedriver
# chown root:root /usr/bin/chromedriver
# chmod +x /usr/bin/chromedriver

# RUN rails new .
# RUN bundle update && bundle install
# ENTRYPOINT [ "/bin/bash" ]

# RUN rails server -p $PORT -b 0.0.0.0
