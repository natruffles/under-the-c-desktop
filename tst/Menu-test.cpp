#include <iostream>
#include <fstream>

#include "gtest/gtest.h"
#include "../src/Menu.h"
#include "../src/json.hpp"

using namespace std;
using json = nlohmann::json;


TEST(MenuTest, MenuNavigatorTest) {
  // Test selecting menu options 1 and 2, and exiting with 'N'
  {
    Menu menu;
    std::istringstream input("1\nSSID\nPassword\nN\n");
    std::cin.rdbuf(input.rdbuf());
    menu.MenuNavigator();
    ASSERT_EQ(menu.GetWifiSSID(), "SSID");
    ASSERT_EQ(menu.GetWifiPassword(), "Password");
    ASSERT_EQ(menu.GetLocationZIP(), "");
  }

  // Test selecting an invalid menu option and then selecting option 2
  {
    Menu menu;
    std::istringstream input("4\n2\n12345\nN\n");
    std::cin.rdbuf(input.rdbuf());
    menu.MenuNavigator();
    ASSERT_EQ(menu.GetLocationZIP(), "12345");
  }
}

TEST(MenuTest, GetLocationTest) {
  // Test getting location from user input
  {
    Menu menu;
    std::istringstream input("12345\n");
    std::cin.rdbuf(input.rdbuf());
    menu.GetLocation();
    ASSERT_EQ(menu.GetLocationZIP(), "12345");
  }
}

TEST(MenuTest, JsonCreatorTest) {
  // Test writing to file, verifying that file exists and contains expected data
  {
    Menu menu;
    menu.SetWifi("my_wifi", "my_password");
    menu.SetLocationZIP("12345");
    menu.JsonCreator();
    std::ifstream file("config.json");
    ASSERT_TRUE(file.good());
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
    menu.SetWifi("my_wifi", "my_password");
    menu.SetLocationZIP("12345");
    std::string invalidFileName = "config?.json";
    ASSERT_DEATH(menu.JsonCreator(invalidFileName), "");
  }
}

TEST(MenuTest, GetWifiTest) {
  // Test valid input
  {
    std::stringstream input("my_wifi\nmy_password\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    menu.GetWifi();
    ASSERT_EQ(menu.GetWifiSSID(), "my_wifi");
    ASSERT_EQ(menu.GetWifiPassword(), "my_password");
  }

  // Test empty input
  {
    std::stringstream input("\n\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    menu.GetWifi();
    ASSERT_EQ(menu.GetWifiSSID(), "");
    ASSERT_EQ(menu.GetWifiPassword(), "");
  }

  // Test invalid input (SSID longer than 32 characters)
  {
    std::stringstream input("this_is_a_very_long_wifi_ssid_that_is_over_32_characters_long\nmy_password\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    menu.GetWifi();
    ASSERT_EQ(menu.GetWifiSSID(), "");
    ASSERT_EQ(menu.GetWifiPassword(), "");
    // Check if error message was printed
    // ...
  }
}

TEST(MenuTest, RedoCheckerTest) {
  // Test when user inputs 'Y'
  {
    stringstream input("Y\n");
    cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    ASSERT_EQ(menu.RedoChecker(), 1);
  }

  // Test when user inputs 'N'
  {
    stringstream input("N\n");
    cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    ASSERT_EQ(menu.RedoChecker(), 0);
    // Check if jsonCreator() was called
    // ...
  }

  // Test when user inputs invalid choice
  {
    std::stringstream input("invalid_choice\n");
    std::cin.rdbuf(input.rdbuf()); // Redirect cin to input stringstream
    Menu menu;
    ASSERT_EQ(menu.RedoChecker(), 0);
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
  menu.JsonCreator();
  ifstream file("config.json");
  json data; 
  file >> data;
  EXPECT_EQ(data["wifiSSID"], "myWifi");
  EXPECT_EQ(data["wifiPassword"], "password123");
  EXPECT_EQ(data["locationZIP"], "12345");
}
