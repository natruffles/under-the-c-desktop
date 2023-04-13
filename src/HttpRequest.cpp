#include <curl/curl.h>  // Include cURL library.
#include <fstream>
#include <iostream>
#include <string>
#include "HttpRequest.h"

bool HttpRequest::IsValidZipCode(std::string zipCode) {
  // Check if zipCode is a valid zip code according to USPS standards.
  bool isValid = false;
  int inputSize = zipCode.size();
  if (inputSize == 5 || inputSize == 10) {
    isValid = true;
    for (int i = 0; i < inputSize; i++) {
      if (i == 5) {
        if (zipCode[i] != '-') {
          isValid = false;
          break;
        }
      } else {
        if (!isdigit(zipCode[i])) {
          isValid = false;
          break;
        }
      }
    }
  }
  return isValid;
}

int HttpRequest::FetchURLTest() {  // Method tests if we are able to make an HTTP request to the API.
  CURL* curl;            // Initialize cURL object.
  CURLcode res;          // To store result of the request.
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
      "&APPID=" + apiKey + "&units=imperial";  // URL to request.

  curl_global_init(CURL_GLOBAL_DEFAULT);  // Initialize cURL library.

  curl = curl_easy_init();  // Initialize easy cURL interface.
  if (curl) {
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());  // Set the URL to request.
    res = curl_easy_perform(curl);                      // Perform the request.
    std::cout << res << std::endl;

    if (res != CURLE_OK) {  // Check if the request was successful.
      std::cerr << "Error: " << curl_easy_strerror(res) << std::endl;
    }
    curl_easy_cleanup(curl);  // Clean up the cURL object.
  }

  curl_global_cleanup();  // Clean up the cURL library.

  return 0;
}
