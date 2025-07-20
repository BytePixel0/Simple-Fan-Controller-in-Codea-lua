# Simple Fan Controller in Codea

This is a simple project built using Codea, where you can turn a simulated fan ON or OFF by tapping buttons on the screen. It's designed as a beginner-friendly demo to understand touch interaction and UI elements in Lua using Codea.

Features
- Two buttons: ON and OFF
- Visually shows fan status (FAN: ON or FAN: OFF)
- Built entirely in Lua with Codea's visual framework

How It Works
- When the user taps the green ON button, the fan status turns ON.
- When the user taps the red OFF button, the fan status turns OFF.
- Touch handling is done using Codea’s touched(t) function with BEGAN state detection.

Code Structure
- setup() – Initializes button positions and fan state
- draw() – Renders buttons and fan status text
- touched(t) – Detects button taps and updates the fan state
