FROM dart:3.5.1

RUN groupadd -r user && useradd --no-log-init -r -g user user

WORKDIR /home/user/app

COPY . .

RUN dart pub get

RUN dart compile exe bin/main.dart -o server

EXPOSE 4404

USER user

CMD [ "/home/user/app/server" ]