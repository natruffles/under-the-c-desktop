#include <iostream>

#include "../include/Menu.h"
#include "../include/json.hpp"

using namespace std;
using json = nlohmann::json;


int main()
{
    Menu menu;
    menu.MenuNavigator();

    return 0;
}