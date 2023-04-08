#include <iostream>

#include "Menu.h"
#include "json.hpp"

using namespace std;
using json = nlohmann::json;


int main()
{
    
    Menu menu;
    menu.menuNavigator();

    return 0;
}