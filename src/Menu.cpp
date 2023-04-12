#include <iostream>
#include <fstream>
#include <string>

#include "Menu.h"
#include "json.hpp"

using namespace std;
using json = nlohmann::json;

// high level operation of main menu, switch statement brings user into additional submenus
void Menu::MenuNavigator() {
  int redo = 1;
  while (redo == 1) {
    cout << "Welcome to Weather ESP Light." << endl;
    cout << "Please input the number corresponding to the desired operation:" << endl;
    cout << "1. Enter Wifi SSID and Password" << endl;
    cout << "2. Enter Location" << endl;
    cout << "3. Enter Controller Operating Mode" << endl;
    cin >> menuChoice;
    switch (menuChoice) {
      case 1:
        SetWifi();
        redo = RedoChecker();
        break;
      case 2:
        SetLocation();
        redo = RedoChecker();
        break;
      case 3:
        SetControllerOnlineOpMode();
        redo = RedoChecker();
        break;
      default:
        cout << "Choice could not be understood." << endl;
        cout << "Reenter choice:" << endl;
        redo = 1;
    }
  }
}

// gets wifiSSID and wifiPassword as strings from the user after prompts
void Menu::SetWifi() {
  cout << "Enter Wifi SSID:" << endl;
  cin >> wifiSSID;
  cout << "Enter Wifi Password:" << endl;
  cin >> wifiPassword;
}

// gets locationZIP from the user as a string after a prompt
void Menu::SetLocation(){
  cout << "Enter ZIP code:" << endl;
  cin >> locationZIP;
}

// generates an additional submenu where user enters a string number for which controller 
// internet-connected operating mode they wish to be in
void Menu::SetControllerOnlineOpMode() {
  int redo = 1;
  int subMenuChoice;
  while (redo == 1) {
    cout << "Please input the number corresponding to the desired controller operating mode:" << endl;
    cout << "1. Brightness is determined by sunlight level." << endl;
    cout << "2. LEDs turn on at sunset and off at sunrise." << endl;
    cin >> subMenuChoice;
    switch (subMenuChoice) {
      case 1:
        controllerOnlineMode = to_string(subMenuChoice);
        redo = 0;
        break;
      case 2:
        controllerOnlineMode = to_string(subMenuChoice);
        redo = 0;
        break;
      default:
        cout << "Choice could not be understood." << endl;
        cout << "Reenter choice:" << endl;
        redo = 1;
    }
  }
}

// allows user to either continue entering menu options, or quit out and generate a json file
// returns 1 to continue menu operations, 0 to quit out
int Menu::RedoChecker() {
  string tempChoice;
  cout << "Would you like to enter the menu again? (Y/N)" << endl;
  cin >> tempChoice;
  if (tempChoice == "Y") {
    return 1;
  }
  else if (tempChoice == "N") {
    JsonCreator();
    cout << "Values saved under \"config.json\" " << endl;
    return 0;
  }
  else {
    cout << "Input not understood. Exiting program." << endl;
    cout << "Values saved under \"config.json\" " << endl;
    return 0;
  }
}

// generates a .json file with parameters that user enters and stores in config.json
// in root directory of project
void Menu::JsonCreator() {
  json weatherliteData = {
    {"wifiSSID", wifiSSID},
    {"wifiPassword", wifiPassword},
    {"locationZIP", locationZIP},
    {"onlineOperatingMode", controllerOnlineMode}
  };
  std::ofstream file("config.json");
  file << std::setw(4) << weatherliteData << std::endl;
}
