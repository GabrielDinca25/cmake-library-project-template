#include "library.h"

namespace test_library
{
	EntryPoint::EntryPoint(string message)
		: m_message(message)
	{
	}

	string EntryPoint::GetMessage()
	{
		return m_message;
	}
}