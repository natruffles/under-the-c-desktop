# WeatherESPLite

### Vision

#### What is your product (high level view)?
* We want to create a basic home automation system using a microcontroller and a dimmable LED array
* We will use GPS and weather APIs to dim/brighten the light based on conditions in the area that the microcontroller is located in
* As a stand-in for a fancy dimmable LED porch light, we will use an LED matrix that is included in almost all microcontroller kits
* There are opportunities for expandability, such as a proximity sensor, temperature sensor, etc.

![](https://www.circuitbasics.com/wp-content/uploads/2020/06/Four-LED-Matrix-Scrolling-Temperature-scaled.jpg)

#### Whom is it for?
* Home owners who are looking for a smart home system for lighting, but are not willing to spend the hundreds of dollars on a smart home lighting system like Phillips Hue, etc.
* Business owners who are looking for exterior lighting solutions that don’t require constant attention

#### What problems does it solve?
* We want a cost-effective smart lighting solution for my home/business, but there are not many good ones on the market.
* We want to customize my lighting, but solutions such as Google Home don’t offer the customization that I am looking for.

#### What Alternatives are available? 
* Phillips Hue, Wyze, Lifx, overall smart home technologies such as Google Home.

#### What are the competitors and what is novel in your approach? 
* Novel: cheap and simple, not too many unnecessary features as it is adaptable. Microcontrollers are more customizable, so homeowners and business owners alike can use this system in ways that Google Home or the competitors wouldn’t let you

### Software Architecture

#### Make it clear that the system can be built, making good use of the available resources and technology. 
* Microcontroller & 8x8 LED matrix are easily accessible
* We are all computer/electrical engineering majors, and have good access to microcontroller electronics kits, breadboards, LEDs, etc.
* We will be programming the microcontroller using Arduino C, which is comparable  to C++.

#### Describe at a very high level the system's architecture, identifying the components/modules that will interact. 
* We will be using an [ESP32 microcontroller](https://www.amazon.com/HiLetgo-ESP-WROOM-32-Development-Microcontroller-Integrated/dp/B0718T232Z)
    * We picked this microcontroller for it’s wifi and bluetooth functionality
* The additional hardware requirements include:
    * Insulated Copper Wire
    * [LED matrix display](https://www.amazon.com/ALAMSCN-MAX7219-Display-Raspberry-Microcontroller/dp/B08KS68GYZ)
    * Breadboard
    * Potentially other sensors for design expansion of additional functionality
* What is interesting about this project from a technical point of view? 
    * At the end of our project, we will have a fully functioning physical prototype that can be       demonstrated at a presentation
    * This project is a way for us to penetrate the IoT/smart home market
* Optionally, what languages/toolkits do you propose to use for the
   Development?
    * The language will be Arduino C - C++ with additional hardware-specific libraries
    * LED matrix libraries, ESP32 wifi libraries
    * Arduino IDE 2.0.3 to flash executable to microcontroller

### Challenges and Risks

* What is the single most serious challenge you see in developing the product on schedule?
    * Lead times in purchasing the hardware
* How will you minimize or mitigate the risk?
    * We will use hardware that we already have, and purchase other necessary components from Amazon early
