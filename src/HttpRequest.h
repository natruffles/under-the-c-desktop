#include <iostream>
#include <string>
#include <fstream>
#include <curl/curl.h>  // include cURL library

using namespace std;

class HttpRequest{
  public:
    //returns menuChoice;
    bool IsValidZipCode(std::string zipCode);
    int FetchURLTest();
};