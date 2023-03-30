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

        int wifiSSID;
        string wifiPassword;

        int locationZIP;
};

