//
//  NotificationData.swift
//  InAppNotification
//
//  Created by Henri Gil on 05/01/2018.
//  Copyright © 2018 Henri Gil. All rights reserved.
//

import UIKit

public class NotificationData: NSObject {
    
    public var id: String = ""
    public var title: String = ""
    public var message: String = ""
    public var thumbnailUrl: String = ""
    public var contentImage: String = ""
    public var animationStyle: InAppNotificationAnimation = .top
    public var delay: Int = 0
    
    public override init() {}

}

