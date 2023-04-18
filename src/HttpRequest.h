#include <iostream>
#include <string>
#include <fstream>
#include <curl/curl.h>  // include cURL library

using namespace std;

class HttpRequest{
  public:
    // checks that the zip code is valid
    bool IsValidZipCode(std::string zipCode);
    // Sends an API request
    int FetchURLTest();
    // Declare the WriteCallback function
    static size_t WriteCallback(void* contents, size_t size, size_t nmemb, void* userp);
};