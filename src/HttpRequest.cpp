#include <curl/curl.h>  // Include cURL library.
#include <fstream>
#include <iostream>
#include <string>
#include "HttpRequest.h"

// Check if zipCode is a valid zip code according to USPS standards.
bool HttpRequest::IsValidZipCode(std::string zipCode) {
  bool isValid = false;
  int inputSize = zipCode.size();
  if (inputSize == 5) {
    isValid = true;
    for (int i = 0; i < inputSize; i++) {
      if (!std::isdigit(zipCode[i])) {
        isValid = false;
        break;
      }
    }
  }
  return isValid;
}

// Define the WriteCallback function
size_t HttpRequest::WriteCallback(void* contents, size_t size, size_t nmemb, void* userp) {
  size_t realsize = size * nmemb;
  std::string* response = (std::string*)userp;
  response->append((char*)contents, realsize);
  return realsize;
}

// Sends an API request
int HttpRequest::FetchURLTest() {
  CURL* curl;
  std::string response;
  CURLcode res;
  std::string zipCode;
  std::cout << "Enter a valid zip code: ";
  std::cin >> zipCode;
  std::cout << std::endl;

  while (!IsValidZipCode(zipCode)) {
    std::cout << "Entered zip code was invalid. Enter a valid zip code: ";
    std::cin >> zipCode;
    std::cout << std::endl;
  }

  std::string apiKey = "095156f9188a2873b0a55d7981778817";
  std::string url =
      "http://api.openweathermap.org/data/2.5/weather?zip=" + zipCode +
      "&APPID=" + apiKey + "&units=imperial";

  curl_global_init(CURL_GLOBAL_DEFAULT);

  curl = curl_easy_init();
  if (curl) {
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);
    res = curl_easy_perform(curl);

    while (response.length() < 46) {
      std::cout << "Entered zip code was invalid. Enter a valid zip code: ";
      std::cin >> zipCode;
      std::cout << std::endl;
      url = "http://api.openweathermap.org/data/2.5/weather?zip=" + zipCode + "&APPID=" + apiKey + "&units=imperial";
      curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
      response.clear();
      res = curl_easy_perform(curl);
    }

    std::cout << response << std::endl;

    if (res != CURLE_OK) {
      std::cerr << "Error: " << curl_easy_strerror(res) << std::endl;
    }
    curl_easy_cleanup(curl);
  }
  return 0;
}
