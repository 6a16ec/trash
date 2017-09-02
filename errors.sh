In file included from /usr/include/c++/5/unordered_map:35:0,
                 from src/api.h:5,
                 from main.cpp:2:
/usr/include/c++/5/bits/c++0x_warning.h:32:2: error: #error This file requires compiler and library support for the ISO C++ 2011 standard. This support must be enabled with the -std=c++11 or -std=gnu++11 compiler options.
 #error This file requires compiler and library support \
  ^
In file included from src/api.h:8:0,
                 from main.cpp:2:
src/json.hpp:10505:21: warning: this decimal constant is unsigned only in ISO C90
                     else if (N <= 4294967295)
                     ^
src/json.hpp:10563:21: warning: this decimal constant is unsigned only in ISO C90
                     else if (N <= 4294967295)
                     ^
In file included from src/api.h:8:0,
                 from main.cpp:2:
src/json.hpp:149:32: error: expected ‘;’ at end of member declaration
     virtual const char* what() const noexcept override
                                ^
src/json.hpp:149:38: error: ‘noexcept’ does not name a type
     virtual const char* what() const noexcept override
                                      ^
src/json.hpp:149:38: note: C++11 ‘noexcept’ only available with -std=c++11 or -std=gnu++11
src/json.hpp:149:25: error: looser throw specifier for ‘virtual const char* nlohmann::detail::exception::what() const’
     virtual const char* what() const noexcept override
                         ^
In file included from /usr/include/c++/5/ios:39:0,
                 from /usr/include/c++/5/ostream:38,
                 from /usr/include/c++/5/iostream:39,
                 from main.cpp:1:
/usr/include/c++/5/exception:68:25: error:   overriding ‘virtual const char* std::exception::what() const throw ()’
     virtual const char* what() const _GLIBCXX_USE_NOEXCEPT;
                         ^
In file included from src/api.h:8:0,
                 from main.cpp:2:
src/json.hpp: In static member function ‘static std::__cxx11::string nlohmann::detail::exception::name(const string&, int)’:
src/json.hpp:164:51: error: ‘to_string’ is not a member of ‘std’
         return "[json.exception." + ename + "." + std::to_string(id) + "] ";
                                                   ^
In file included from src/api.h:8:0,
                 from main.cpp:2:
src/json.hpp: In static member function ‘static nlohmann::detail::parse_error nlohmann::detail::parse_error::create(int, size_t, const string&)’:
src/json.hpp:221:49: error: ‘to_string’ is not a member of ‘std’
                         (byte_ != 0 ? (" at " + std::to_string(byte_)) : "") +
                                                 ^
src/json.hpp: At global scope:
src/json.hpp:409:1: warning: scoped enums only available with -std=c++11 or -std=gnu++11
 enum class value_t : uint8_t
 ^
src/json.hpp:409:1: warning: elaborated-type-specifier for a scoped enum must not use the ‘class’ keyword
src/json.hpp:409:12: error: use of enum ‘value_t’ without previous declaration
 enum class value_t : uint8_t
            ^
src/json.hpp:409:20: error: expected unqualified-id before ‘:’ token
 enum class value_t : uint8_t
                    ^
src/json.hpp:431:29: error: ‘value_t’ does not name a type
 inline bool operator<(const value_t lhs, const value_t rhs) noexcept
                             ^
src/json.hpp:431:48: error: ‘value_t’ does not name a type
 inline bool operator<(const value_t lhs, const value_t rhs) noexcept
                                                ^
src/json.hpp:431:61: error: expected initializer before ‘noexcept’
 inline bool operator<(const value_t lhs, const value_t rhs) noexcept
                                                             ^
src/json.hpp:14458:31: error: expected ‘}’ before end of line
src/json.hpp:14458:31: error: expected ‘}’ before end of line
src/json.hpp:14458:31: error: expected declaration before end of line
