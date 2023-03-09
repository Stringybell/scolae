#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main() {
    puts("Run");
    #ifdef _WIN64
    	system("\"C:\\Program Files\\Santorini\\jdk-15.0.1\\bin\\java -jar\" \"C:\\Program Files\\Santorini\\Santorini.jar\" client gui");
    #elif _WIN32
    	system("\"C:\\Program Files\\Santorini\\jdk-15.0.1\\bin\\java -jar\" \"C:\\Program Files (x86)\\Santorini\\Santorini.jar\" client gui");
    #elif __linux__
	    system("/opt/Santorini/jdk-15.0.1/bin/java -jar /opt/Santorini/jar/Santorini.jar client gui");
    #elif __unix__
	    system("/opt/Santorini/jdk-15.0.1/bin/java -jar /opt/Santorini/jar/Santorini.jar client gui");
    #else
	    printf("Unidentified OS\n");
    #endif

    return 0;
}