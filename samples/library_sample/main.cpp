#include <iostream>

#include <library.h>

using namespace std;

void main()
{
	test_library::EntryPoint entryPoint("Hello World!");

	cout << entryPoint.GetMessage();
}