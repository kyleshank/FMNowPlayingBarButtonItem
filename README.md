# FMNowPlayingBarButtonItem

[![Version](https://img.shields.io/cocoapods/v/FMNowPlayingBarButtonItem.svg?style=flat)](http://cocoadocs.org/docsets/FMNowPlayingBarButtonItem)
[![License](https://img.shields.io/cocoapods/l/FMNowPlayingBarButtonItem.svg?style=flat)](http://cocoadocs.org/docsets/FMNowPlayingBarButtonItem)
[![Platform](https://img.shields.io/cocoapods/p/FMNowPlayingBarButtonItem.svg?style=flat)](http://cocoadocs.org/docsets/FMNowPlayingBarButtonItem)

## Usage

![FMNowPlayingBarButtonItem](screenshot.jpg)

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Import the category into your UIViewController:

    #import <FMNowPlayingBarButtonItem/UIViewController+FMNowPlayingBarButtonItem.h>
    
Then add the Now Playing button to your NavigationBar:

    self.navigationItem.rightBarButtonItem = [self nowPlayingButton:self action:@selector(nowPlaying:)];
    
The method `nowPlayingButton` takes a target and a selector to call for when the Now Playing button is tapped.

## Installation

FMNowPlayingBarButtonItem is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "FMNowPlayingBarButtonItem"

## Author

Kyle Shank, kyle@formalmethod.net

## License

FMNowPlayingBarButtonItem is available under the MIT license. See the LICENSE file for more info.

