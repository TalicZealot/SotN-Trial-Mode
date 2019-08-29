# SOTN Trial Mode
Trials and challenges for Castlevania: SotN through a LUA script for Bizhawk, intended to help runners with learning essential speedrunning tricks and test players with difficult and interesting challenges.
## Version 0.9.2
Releasing this early to test out how it behaves for others and if any major issues pop up. Current version aims to achieve a stable engine, where I can continue to add trials in the future.
### changelog
#### 0.9.2
* Added beta pause buffering support
* Added Richter Skip Wolf trial
* Added Otg Airslash Trial
* Changed Reset and Demo hotkeys
* Lowered Shield Dashing challenge timer from 30 to 20 seconds

#### 0.9.1
* Beta release.

## Setup
* Download repository from *Clone or download* > *Download ZIP*
* In Bizhawk set Config > Customize > Advanced > Lua Core > Lua+LuaInterface > Restart
* Launch the script after running the game through Tools > Lua Console > Script > Open Script
* Highly recommended to use Pixel Pro Mode for rendering. In Bizhawk PSX > Options > Pixel Pro Mode
* This is how it should look like:
![Using PixelPro](https://i.imgur.com/nbSWYtf.png)

## TODO
* Add more trials and challenges
* Wingsmash error detection
* Input display as a separate module / script
* Charge time indicator

## Known Issues
* Inconsistent lag detection can cause false positive/negative inputs on trials Autopdash and Floor Clip