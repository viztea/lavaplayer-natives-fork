docker run --rm -it ubuntu:18.04 bash

apt update && apt upgrade
apt install -y git cmake build-essential autoconf autogen libtool openjdk-11-jdk wget nano libsamplerate-dev

wget http://ftp.de.debian.org/debian/pool/main/a/automake-1.16/automake_1.16.5-1.3_all.deb
dpkg -i automake_1.16.5-1.3_all.deb

git clone https://github.com/devoxin/lavaplayer-natives-fork
cd lavaplayer-natives-fork
chmod +x ./gradlew

./gradlew load

touch natives/opus/opus-1.5.1/aclocal.m4 configure
./gradlew compileNatives