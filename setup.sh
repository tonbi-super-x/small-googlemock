#!/bin/bash
pacman -S tar

# �C�ӂ̃t�H���_���쐬
mkdir download
cd download

# googletest���_�E�����[�h
wget https://github.com/google/googletest/archive/release-1.8.1.tar.gz
tar -zxvf release-1.8.1.tar.gz

cd googletest-release-1.8.1
mkdir build
cd build
cmake ..
make && make install

cd ../../../

# �ŏ��̈ʒu�ɖ߂�
mkdir googletest googlemock

# �K�v�ȃt�@�C�����R�s�[���Ă���
cp ./download/googletest-release-1.8.1/build/googlemock/gtest/libgtest.a ./googletest/
cp ./download/googletest-release-1.8.1/build/googlemock/gtest/libgtest_main.a ./googletest/

cp ./download/googletest-release-1.8.1/build/googlemock/libgmock.a ./googlemock/
cp ./download/googletest-release-1.8.1/build/googlemock/libgmock_main.a ./googlemock/


cp -r ./download/googletest-release-1.8.1/googletest/include ./googletest/include
cp -r ./download/googletest-release-1.8.1/googlemock/include ./googlemock/include