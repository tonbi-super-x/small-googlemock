#!/bin/bash
pacman -S tar

# 任意のフォルダを作成
mkdir download
cd download

# googletestをダウンロード
wget https://github.com/google/googletest/archive/release-1.8.1.tar.gz
tar -zxvf release-1.8.1.tar.gz

cd googletest-release-1.8.1
mkdir build
cd build
cmake ..
make && make install

cd ../../../

# 最初の位置に戻る
mkdir googletest googlemock

# 必要なファイルをコピーしていく
cp ./download/googletest-release-1.8.1/build/googlemock/gtest/libgtest.a ./googletest/
cp ./download/googletest-release-1.8.1/build/googlemock/gtest/libgtest_main.a ./googletest/

cp ./download/googletest-release-1.8.1/build/googlemock/libgmock.a ./googlemock/
cp ./download/googletest-release-1.8.1/build/googlemock/libgmock_main.a ./googlemock/


cp -r ./download/googletest-release-1.8.1/googletest/include ./googletest/include
cp -r ./download/googletest-release-1.8.1/googlemock/include ./googlemock/include