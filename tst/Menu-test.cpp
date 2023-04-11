#include <iostream>
#include <fstream>

#include "gtest/gtest.h"
#include "../src/Menu.h"
#include "../src/json.hpp"

using namespace std;
using json = nlohmann::json;

TEST(MenuTest, JsonCreatorTest) {
  // Test writing to file
  {
    Menu menu;
    menu.setWifi("my_wifi", "my_password");
    menu.setLocationZIP("12345");

    menu.jsonCreator();

    // Verify that file exists
    std::ifstream file("weatherliteData.json");
    ASSERT_TRUE(file.good());

    // Verify that file contains expected data
    std::stringstream buffer;
    buffer << file.rdbuf();
    std::string fileContents = buffer.str();
    ASSERT_TRUE(fileContents.find("my_wifi") != std::string::npos);
    ASSERT_TRUE(fileContents.find("my_password") != std::string::npos);
    ASSERT_TRUE(fileContents.find("12345") != std::string::npos);
  }

  // Test invalid file name
  {
    Menu menu;
    menu.setWifi("my_wifi", "my_password");
    menu.setLocationZIP("12345");

    // File name with invalid characters
    std::string invalidFileName = "weatherliteData?.json";

    ASSERT_DEATH(menu.jsonCreator(invalidFileName), "");
  }
}
TEST(MenuTest, GetWifiTest) {
  // Test valid input
  {
    std::stringstream input("my_wifi\nmy_password\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    menu.getWifi();
    ASSERT_EQ(menu.getWifiSSID(), "my_wifi");
    ASSERT_EQ(menu.getWifiPassword(), "my_password");
  }

  // Test empty input
  {
    std::stringstream input("\n\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    menu.getWifi();
    ASSERT_EQ(menu.getWifiSSID(), "");
    ASSERT_EQ(menu.getWifiPassword(), "");
  }

  // Test invalid input (SSID longer than 32 characters)
  {
    std::stringstream input("this_is_a_very_long_wifi_ssid_that_is_over_32_characters_long\nmy_password\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    menu.getWifi();
    ASSERT_EQ(menu.getWifiSSID(), "");
    ASSERT_EQ(menu.getWifiPassword(), "");
    // Check if error message was printed
    // ...
  }
}
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
