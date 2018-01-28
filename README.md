# InAppNotificationFramework

[![Build Status](https://travis-ci.org/4AMOC-iOSFramework/InAppNotificationFramework.svg?branch=master)](https://travis-ci.org/4AMOC-iOSFramework/InAppNotificationFramework/)
[![CocoaPods](https://img.shields.io/cocoapods/dt/InAppNotificationFramework.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/l/InAppNotificationFramework.svg)]()
[![GitHub language count](https://img.shields.io/github/languages/count/badges/InAppNotificationFramework.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/p/InAppNotificationFramework.svg)]()

InAppNotificationFramework is library written in Swift which handle the creation of a notification inApp.

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [FAQ](#faq)
- [Credits](#credits)

## Features

- [x] Handle notifications Data In app
- [x] Handle notifications View In app
- [x] Handle notifications Animations In app


## Requirements
- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.3+
- Swift 3.1+

## Installation
### CocoaPods
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1+ is required to build InAppNotificationFramework.

To integrate nAppNotificationFramework into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'InAppNotificationFramework.'
end
```

Then, run the following command:

```bash
$ pod install
```

#### Embedded Framework

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

```bash
$ git init
```

- Add InAppNotificationFramework as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

```bash
$ git submodule add https://github.com/4AMOC-iOSFramework/InAppNotificationFramework
```

- Open the new `InAppNotificationFramework` folder, and drag the `InAppNotificationFramework.xcodeproj` into the Project Navigator of your application's Xcode project.

> It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the `InAppNotificationFramework.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different `InAppNotificationFramework.xcodeproj` folders each with two different versions of the `InAppNotificationFramework.framework` nested inside a `Products` folder.

> It does not matter which `Products` folder you choose from, but it does matter whether you choose the top or bottom `InAppNotificationFramework.framework`.

- Select the top `InAppNotificationFramework.framework` for iOS and the bottom one for OS X.

> You can verify which one you selected by inspecting the build log for your project. The build target for `Alamofire` will be listed as either `Alamofire iOS`, `Alamofire macOS`, `Alamofire tvOS` or `Alamofire watchOS`.

- And that's it!

> The `InAppNotificationFramework.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.
