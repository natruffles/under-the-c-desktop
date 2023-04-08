#include <iostream>
#include <string>

using namespace std;

class Menu{
    public:
        //returns menuChoice;
        void menuNavigator();
        void getWifi();
        void getLocation();

        int redoChecker();

        void jsonCreator();

        int menuChoice;

        string wifiSSID = "unknown";
        string wifiPassword = "unknown";
        string locationZIP = "unknown";
};

