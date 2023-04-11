#include <iostream>
#include <fstream>

#include <string>

#include "../include/Menu.h"
#include "../include/json.hpp"

using namespace std;
using json = nlohmann::json;

//The MenuNavigator function is the only function called in main, and contains a loop that will run until exited with the RedoChecker function.
void Menu::MenuNavigator() {
  int redo = 1;
  while (redo == 1) {
    cout << "Welcome to Weather ESP Light." << endl;
    cout << "Please input the number corresponding to the desired operation:" << endl;
    cout << "1. Enter Wifi SSID and Password" << endl;
    cout << "2. Enter Location" << endl;
    cin >> menu_choice;
    switch (menu_choice) {
      case 1:
        GetWifi();
        redo = RedoChecker();
        break;

      case 2:
        GetLocation();
        redo = RedoChecker();
        break;

      default:
        cout << "Choice could not be understood." << endl;
        cout << "Reenter choice:" << endl;
        redo = 1;
    }
  }
}

//Retrieves the SSID and the password from the user after prompting them and stores them in the corresponding variables.
void Menu::GetWifi() {
  cout << "Enter Wifi SSID:" << endl;
  cin >> wifi_ssid;
  cout << "Enter Wifi Password:" << endl;
  cin >> wifi_password;
}

//Retrieves the ZIP code of the device from the user after prompting them and stores it in the corresponding variable.
void Menu::GetLocation() {
  cout << "Enter ZIP code:" << endl;
  cin >> locationZIP;
}

//Determines if the user wants to go through the menu again, or exit the program.  Exits the program if the user gives an invalid input.
int Menu::RedoChecker(){
    string temp_choice;
    cout << "Would you like to enter the menu again? (Y/N)" << endl;
    cin >> temp_choice;
    
    if (temp_choice == "Y"){
        return 1;
    }
    else if (temp_choice == "N")
    {
        return 0;
    }
    else{
        cout << "Input not understood. Exiting program." << endl;
        return 0;
    }
}

