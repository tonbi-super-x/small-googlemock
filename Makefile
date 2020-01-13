.PHONY: test

test:
#	g++ ./test/mocktest.cpp ./src/turtle.cpp -Igooglemock/include -Igoogletest/include -Isrc -pthread -Lgoogletest -lgtest -lgtest_main -Lgooglemock -lgmock -lgmock_main
	g++ ./test/mocktest.cpp ./src/turtle.cpp -Igooglemock/include -Igoogletest/include -Isrc -pthread -Lgoogletest -lgtest -Lgooglemock -lgmock
	./a.exe

.PHONY: clean

clean:
	rm ./a.exe