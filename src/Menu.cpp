#include <iostream>
#include <fstream>

#include <string>

#include "Menu.h"
#include "json.hpp"

using namespace std;
using json = nlohmann::json;

// This section details the operation of the main menu.  It takes no arguments and returns none.

void Menu::menuNavigator(){
    int redo = 1;

  // This section asks the user to make a function choice from the menu, storing their choice in the "menuChoice" variable.

    while(redo == 1){
        cout << "Welcome to Weather ESP Light." << endl;
        cout << "Please input the number corresponding to the desired operation:" << endl;

        cout << "1. Enter Wifi SSID and Password" << endl;
        cout << "2. Enter Location" << endl;

        cin >> menuChoice;

// menuChoice is used in this switch statement to carry out the function selected by the user.

        switch(menuChoice){
            case 1:
                getWifi();
                redo = redoChecker();
                break;

            case 2:
                getLocation();
                redo = redoChecker();
                break;

            default:
                cout << "Choice could not be understood." << endl;
                cout << "Reenter choice:" << endl;
                redo = 1;
        }
    }
}

// mutator function for the SSID and the password; gets wifiSSID and wifiPassword from the user after prompts

void Menu::getWifi(){
    cout << "Enter Wifi SSID:" << endl;
    cin >> wifiSSID;
    cout << "Enter Wifi Password:" << endl;
    cin >> wifiPassword;
}

// mutator function for zip code; sets locationZIP to value entered by user after prompt

void Menu::getLocation(){
    cout << "Enter ZIP code:" << endl;
    cin >> locationZIP;
}

int Menu::redoChecker(){
    string tempChoice;
    cout << "Would you like to enter the menu again? (Y/N)" << endl;
    cin >> tempChoice;
    
    if (tempChoice == "Y"){
        return 1;
    }
    else if (tempChoice == "N")
    {
        jsonCreator();
        cout << "Values saved under \"weatherliteData.json\" " << endl;
        return 0;
    }
    else{
        cout << "Input not understood. Exiting program." << endl;
        cout << "Values saved under \"weatherliteData.json\" " << endl;
        return 0;
    }
}

void Menu::jsonCreator(){
    json weatherliteData = {
      {"wifiSSID", wifiSSID},
      {"wifiPassword", wifiPassword},
      {"locationZIP", locationZIP}
    };


    // write data to JSON file
    std::ofstream file("weatherliteData.json");
    file << std::setw(4) << weatherliteData << std::endl;

}
