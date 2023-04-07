#include <iostream>
#include <fstream>

#include "gtest/gtest.h"
#include "../src/Menu.h"
#include "../src/json.hpp"

using namespace std;
using json = nlohmann::json;

TEST_CASE("Menu tests") {
    Menu menu;

    SUBCASE("getWifi() test") {
        menu.getWifi();
        CHECK(!menu.wifiSSID.empty()); // check that wifiSSID is not empty
        CHECK(!menu.wifiPassword.empty()); // check that wifiPassword is not empty
    }

    SUBCASE("getLocation() test") {
        menu.getLocation();
        CHECK(!menu.locationZIP.empty()); // check that locationZIP is not empty
    }

    SUBCASE("jsonCreator() test") {
        menu.wifiSSID = "myWifi";
        menu.wifiPassword = "password123";
        menu.locationZIP = "12345";
        menu.jsonCreator();

        // read the created JSON file and verify the contents
        std::ifstream file("weatherliteData.json");
        json data;
        file >> data;
        CHECK(data["wifiSSID"] == "myWifi");
        CHECK(data["wifiPassword"] == "password123");
        CHECK(data["locationZIP"] == "12345");
    }
}
