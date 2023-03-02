#include <iostream>
#include <string> 

using namespace std;

int brightnessLevel(){
    char weatherCond;
    char choice = 'Y';
    int redo = 1;

    //Weather Conditions
    int brightnessLevel; // base vaue
    // different conditions have different brightness value
    // which stack for final brightness level

    while(choice == 'Y'){
        cout << "Please input the number corresponding to the current Weather Condition:" << endl;
        cout << "1. Sunset" << endl;
        cout << "2. Sunrise" << endl;
        cout << "3. Cloudy" << endl;
        cout << "4. Rainy" << endl;
        cout << "5. Snowy" << endl;

        cin >> weatherCond;

        while(redo == 1){
        redo = 0;
            switch(weatherCond){
                case 1:
                ++brightnessLevel;
                break;

                case 2:
                --brightnessLevel;
                break;

                case 3:
                --brightnessLevel;
                break;

                case 4:
                --brightnessLevel;
                break;

                case 5:
                --brightnessLevel;
                break;

                default:
                    cout << "Choice could not be understood" << endl;
                    cout << "Reenter choice:" << endl;
                    cin >> weatherCond;
                    redo = 1;
            }
        }

        cout << "brightness level:" << brightnessLevel << endl;

        cout << "Enter Another weather condition? (Y/N)" << endl;
        cin >> choice;
    }

}

int main()
{
    char tempChar;
    bool redo = 1;
    int menuChoice;

    //WiFi Info
    string wifiSSID;
    string wifiPassword;
    string wifiType;

    //Location Info
    string locationCity;
    string locationState;
    string locationCountry;

    //Sunset Time Info
    int sunsetHours;
    int sunsetMinutes;
    int sunsetSeconds;

    //LED Time Info
    int ledHours;
    int ledMinutes;
    int ledSeconds;

    string bluetoothDeviceName;

    bool nightMode;

    cout << "Welcome to Weather ESP Light." << endl;
    cout << "Please input the number corresponding to the desired operation:" << endl;

    cout << "1. Enter Wifi SSID and Password" << endl;
    cout << "2. Enter Location" << endl;
    cout << "3. Preferences for LED activation due to Time" << endl;
    cout << "4. Preferences for LED activation due to Weather" << endl;
    cout << "5. LED update frequency" << endl;
    cout << "6. Bluetooth Device Name" << endl;
    cout << "7. Light v. Night Mode" << endl;

    cin >> menuChoice;


    //Implement Single Variable for Input Prompt
    // Ex: wifiSSID & Password Variable

    //Implement Incorrect and Escape
    while(redo == 1){
        redo = 0;
        switch(menuChoice){
            case 1:
                cout << "Enter Wifi SSID:" << endl;
                cin >> wifiSSID;
                cout << "Enter Wifi Password:" << endl;
                cin >> wifiPassword;
                cout << "Enter Wifi Security Type (WEP/WPA2/LEG):" << endl;
                cin >> wifiType;

                break;

            case 2:
                cout << "Enter City:" << endl;
                cin >> locationCity;
                cout << "Enter State/Province:" << endl;
                cin >> locationState;
                cout << "Enter Country:" << endl;
                cin >> locationCountry;

                break;

            case 3:
                cout << "Enter Hours until Sunset:" << endl;
                cin >> sunsetHours;
                cout << "Enter Minutes until Sunset:" << endl;
                cin >> sunsetMinutes;
                cout << "Enter Seconds until Sunset:" << endl;
                cin >> sunsetSeconds;

                break;

            case 4:
                brightnessLevel();

                break;

            case 5:
                cout << "Enter Hours between each update sent to LED:" << endl;
                cin >> sunsetHours;
                cout << "Enter Minutes between each update sent to LED:" << endl;
                cin >> sunsetMinutes;
                cout << "Enter Seconds between each update sent to LED:" << endl;
                cin >> sunsetSeconds;

                break;

            case 6:
                cout << "Enter Bluetooth Device Name:" << endl;
                cin >> bluetoothDeviceName;

                break;

            case 7:
                cout << "Enable Nightmode? (Y/N)" << endl;
                cin >> tempChar;
                
                if(tempChar == 'Y'){
                    nightMode = 1;
                }
                else if(tempChar == 'N'){
                    nightMode = 0;
                }
                else{
                    cout << "Input not understood" << endl;
                    redo = 1;
                }

                break;

            default:
                cout << "Choice could not be understood" << endl;
                cout << "Reenter choice:" << endl;
                cin >> menuChoice;
                redo = 1;
        }
    }

    return 0;
}