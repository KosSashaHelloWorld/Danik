#include <string>


// Validate path and read file to buf
int read_file(std::string path, std::string *buf);

// Validate path and write file from buf
int write_file(std::string path, std::string *buf);