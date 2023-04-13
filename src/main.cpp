#include <iostream>
#include "httpRequest.h"
#include "Menu.h"
#include "json.hpp"
#include <curl/curl.h>  // include cURL library

using namespace std;
using json = nlohmann::json;

int main()
{
    Menu menu;
    HttpRequest HttpRequest;
    HttpRequest.FetchURLTest();
    menu.MenuNavigator();
 
    return 0;
}