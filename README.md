# ft_printf
::42 Abu Dhabi::
-- ft_printf --

Level 1
!!!An attempt of the mandatory part for project ft_printf. This is not to encourage cheating of any form. 
Always attempt creating your own version before looking at the code from others!!!!

!!!I have not submitted this project yet!!!

Basic explanation:

1) Create a function called ft_printf that returns an int of the length of string being printed out on the stdout file descriptor (fd == 1),
and use a predefined linked list called va_list included in the stdarg.h library along with va_start() and va_end() functions.

2) Start by declaring the va_list variable and place the variable as the first parameter within the va_start(). The second parameter is the last ordinary parameter 
entered into ft_printf. The va_end() function only accepts one parameter: the variable va_list (args). Perform all necessary operations between va_start and va_end. Example:

int ft_printf(const char *s, ...)
{
  va_list args;
  
  va_start(args, s);
  //Perform all necessary operations here.
  va_end(args);
}

Whelp... That's as much help as I'm going to give you ;)
Don't look at my work until you've figured out the rest.
