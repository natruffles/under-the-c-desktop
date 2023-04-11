#include <iostream>
#include <fstream>

#include "gtest/gtest.h"
#include "../src/Menu.h"
#include "../src/json.hpp"

using namespace std;
using json = nlohmann::json;
TEST(MenuTest, RedoCheckerTest) { //redoChecker Test cases
  // Test when user inputs 'Y'
  {
    stringstream input("Y\n");
    cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    ASSERT_EQ(menu.redoChecker(), 1);
  }

  // Test when user inputs 'N'
  {
    stringstream input("N\n");
    cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    ASSERT_EQ(menu.redoChecker(), 0);
    // Check if jsonCreator() was called
    // ...
  }

  // Test when user inputs invalid choice
  {
    std::stringstream input("invalid_choice\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    ASSERT_EQ(menu.redoChecker(), 0);
    // Check if error message was printed
    // ...
  }
}
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
