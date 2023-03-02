# Menu Structure

We need to implement a menu that the user can interact with from the desktop application to communicate with the developement board. 
The functionality of the product as of 3/1/2023 requires the user to input the following data:
* Their wifi SSID
* Password for the wifi
* Preferences for LED activation due to time
* Preferences for LED activation due to weather
* How often they want to update the LED


In order to simplify the input required by the user, we will be displaying all selection options as a numbered list. The input
required for each selection will be the corresponding number in the list. 

## Menu Display

The Main Menu will then be displayed as follows:

*Welcome to Weather ESP Light. Please input the number corresponding to the desired operation*
1. Enter Wifi SSID and Password
2. Enter Location 
3. Preferences for LED activation due to Time
4. Preferences for LED activation due ot Weather
5. How often to update the LED

Each selection will allow bring up a prompt for the user to input their information/preferences.

## Input Prompts

prompts are organized in this section in the same order as the previously shown numberd list. The labels in the parenthesis 
will show the user the correct way to input their data:

*Enter Wifi SSID and Password (SSID, Password): _______*

*Enter Location (City, State/Province, Country): _______*

*Enter the amount of time before sunset to activate light (Hours:Minutes:Seconds):_____*

*Enter weather conditions to activate light. Options include: sunset, sunrise, cloudy, rainy, snowy, sunny (option 1, option2, ...):_____*

*Enter time between updates sent to the LED (Hours:Minutes:Seconds):_______*
