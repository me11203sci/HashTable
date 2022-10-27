default: HashTable
HashTable: main.o
	g++ main.o -o HashTable.out 

main.o: main.cpp HashTable.hpp LinkedList.hpp HashTable.h LinkedList.h
	g++ -c main.cpp

ListTest: LinkedListTest.cpp LinkedList.hpp LinkedList.h
	g++ -c LinkedListTest.cpp -o ListTest.out

.PHONY: clean

clean:
	-@rm -f *.out
	-rm -f *.o
