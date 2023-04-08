#include <iostream>
#include <fstream>

#include "gtest/gtest.h"
#include "../src/Menu.h"
#include "../src/json.hpp"

using namespace std;
using json = nlohmann::json;

TEST(MenuTest, WifiTest) {
  Menu menu;
  menu.wifiSSID = "myWifi";
  menu.wifiPassword = "password123";

  EXPECT_EQ(menu.wifiSSID, "myWifi");
  EXPECT_EQ(menu.wifiPassword, "password123");
}

TEST(MenuTest, LocationTest) {
  Menu menu;
  menu.locationZIP = "12345";

  EXPECT_EQ(menu.locationZIP, "12345");
}

TEST(MenuTest, JsonTest) {
  Menu menu;
  menu.wifiSSID = "myWifi";
  menu.wifiPassword = "password123";
  menu.locationZIP = "12345";
  menu.jsonCreator();

  ifstream file("weatherliteData.json");
  json data; 
  file >> data;
  
  EXPECT_EQ(data["wifiSSID"], "myWifi");
  EXPECT_EQ(data["wifiPassword"], "password123");
  EXPECT_EQ(data["locationZIP"], "12345");
}
