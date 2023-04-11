#include <iostream>

#include "Menu.h"
#include "json.hpp"
#include <curl/curl.h>  // include cURL library

using namespace std;
using json = nlohmann::json;

// function tests if we are able to make a http request to the API
int FetchURLTest() {
  CURL *curl;        
  CURLcode res;      
  std::string zipCode = "45220";
  std::string apiKey = "095156f9188a2873b0a55d7981778817";
  // url used to make an HTTP get request to 
  std::string url = "http://api.openweathermap.org/data/2.5/weather?zip=" + zipCode + 
                   "&APPID=" + apiKey + "&units=imperial";
  curl_global_init(CURL_GLOBAL_DEFAULT);  // initialize cURL library
  curl = curl_easy_init();  // initialize easy cURL interface
  if (curl) {
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());  // set the URL to request
    res = curl_easy_perform(curl);  // perform the request
    std::cout << res << std::endl;
    if (res != CURLE_OK) {  // check if the request was successful
      std::cerr << "Error: " << curl_easy_strerror(res) << std::endl;
    }
    if (res == CURLE_OK) {  // check if the request was successful
      std::cout << "good " << std::endl;
    }
    curl_easy_cleanup(curl);  // clean up the cURL object
  }
  curl_global_cleanup();  // clean up the cURL library
  return 0;
}

int main() {
  Menu menu;
  FetchURLTest();
  menu.MenuNavigator();
  return 0;
}