# InAppNotificationFramework

[![Build Status](https://travis-ci.org/4AMOC-iOSFramework/InAppNotificationFramework.svg?branch=master)](https://travis-ci.org/4AMOC-iOSFramework/InAppNotificationFramework/)
[![CocoaPods](https://img.shields.io/cocoapods/dt/InAppNotificationFramework.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/l/InAppNotificationFramework.svg)]()
[![GitHub language count](https://img.shields.io/github/languages/count/badges/InAppNotificationFramework.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/p/InAppNotificationFramework.svg)]()


Easy to use InApp notification framework written in Swift 4

## Getting Started


### Using

First you'll need to create one or many Notification Data object.
This object contains the notifications data like:
Title,
Detail,
Thumbnail,
How many second it will be shown

```swift
let notif1 = NotificationData()
notif1.id = "id4342"
notif1.delay = 5
notif1.title = "New message from Henri GIL"
notif1.message = "Le Lorem Ipsum est simplement du faux texte employé dans la"
notif1.thumbnailUrl = "thumb"
notif1.contentImage = "rotortrade_logo4"
notif1.animationStyle = .top
```

Then you'll just need to add the notification to the queue with the following code:

```swift
InAppNotification.shared.addNotification(notification: notif1)
```

In order to get the callback when the user tap on your notification and get which notifications has been tapped, you'll need to add an observer to your controller.

```swift
NotificationCenter.default.addObserver(self, selector: #selector(notificationsHandler), name: Notification.Name("notificationTapped") , object: nil)
```
The NotificationData object will be in the Notification.object property. Just cast it and you'll be able to get which notification has been tapped.

```swift
@objc func notificationsHandler(notif: Notification) {

    if let notification = notif.object as? NotificationData {
        print(notification)
    }
}
```



### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1+ is required to build Alamofire 4.0+.

To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'InAppNotificationFramework', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```


## Contributing

Please read [CONTRIBUTING.md]() for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Henri Gil** - [hgxl](https://github.com/hgxl)
* **Fodé Guirassy** - [fodeguirassy](https://github.com/fodeguirassy)
* **Isma Dialo** - [hgxl](https://github.com/ismadia09)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details




