#include <iostream>
#include <string>

using namespace std;

class Menu{
    public:
        //returns menuChoice;
        void menuNavigator();
        void getWifi();
        void getLocation();
        void getControllerOperatingMode();

        int redoChecker();

        void jsonCreator();

        int menuChoice;

        string wifiSSID = "unknown";
        string wifiPassword = "unknown";
        string locationZIP = "unknown";
        string controllerMode = "unknown";
};

