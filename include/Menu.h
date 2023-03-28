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

        int menuChoice;

        int wifiSSID;
        string wifiPassword;

        int locationZIP;
};

