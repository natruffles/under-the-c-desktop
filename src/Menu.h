#include <iostream>
#include <string>

using namespace std;

class Menu {
public:
  // high level operation of main menu, switch statement brings user into additional submenus
  void MenuNavigator();

  // gets wifiSSID and wifiPassword as strings from the user after prompts
  void GetWifi();

  // gets locationZIP from the user as a string after a prompt
  void GetLocation();

  // generates an additional submenu where user enters a string number for which controller 
  // internet-connected operating mode they wish to be in
  void GetControllerOnlineOpMode();

  // allows user to either continue entering menu options, or quit out and generate a json file
  // returns 1 to continue menu operations, 0 to quit out
  int RedoChecker();

  // generates a .json file with parameters that user enters and stores in config.json
  // in root directory of project
  void JsonCreator();

  int menuChoice;
  string wifiSSID = "unknown";
  string wifiPassword = "unknown";
  string locationZIP = "45220";
  string controllerOnlineMode = "1";
};

