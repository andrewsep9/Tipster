# Project 1 - Tipster

Tipster is a tip calculator application for iOS.

Submitted by: Andrew Sepulveda

Time spent: 5.5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:

* [ ] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Use a slider to adjust the tip percentage from 0 to 100%
- [X] Change the color of the user interface to a black and blue contrast. 

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/txK4LQ2tvG.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with Recordit.co

## Notes

The syntax Objective-C uses was very difficult at first to read and write. Much of the code seemed repetetive and clunky but was necessary to get the app working correctly. Since there was no tutorial on sliders, I found it very difficult trying to understand how to create a slider, get its current value, and change the range of values. Also, when displaying the current percent for the tip, I kept receiving errors due to a "%" being in the code. To get around this, I just created a new label with a static "%" and placed it next to the label indiciating the tip percent. I think one of the more difficult parts of this for me was the design. I spent a lot of time trying different color combinations and spatial arrangements, and if I had more time I feel like I could have come up with a user interface that was more visually pleasing. 


## License

    Copyright 2019 Andrew Sepulveda

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
