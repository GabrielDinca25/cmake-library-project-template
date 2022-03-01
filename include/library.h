#include <string>

using namespace std;

namespace test_library
{
	class EntryPoint
	{
	public:
		EntryPoint(string message);

		string GetMessage();

	private:
		string m_message;
	};
}