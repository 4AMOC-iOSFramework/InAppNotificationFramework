//
//  InAppNotification.swift
//  InAppNotificationFramework
//
//  Created by Henri Gil on 17/01/2018.
//  Copyright © 2018 Henri Gil. All rights reserved.
//

import Foundation
import UIKit


extension Int {
    public var isPair: Bool {
        return self % 2 == 0
    }
}

/// Animations available for the notification
public enum InAppNotificationAnimation: String {
    case left = "left"
    case right = "right"
    case top = "top"
}


public class InAppNotification: NSObject {
    
    var notificationStack: [NotificationData] = []
    var isNotificationVisible: Bool = false
    
    var notificationTopConstraint: NSLayoutConstraint?
    var notificationLeftConstraint: NSLayoutConstraint?
    var notificationRightConstraint: NSLayoutConstraint?
    var notificationHeightConstraint: NSLayoutConstraint?
    var notificationView: NotificationView?

    public static let shared = InAppNotification()
    
    private override init() {}
    
    public func addNotification(notification: NotificationData){
        notificationStack.append(notification)
        handleQueue()
    }
    
    public func addNotifications(notifications: [NotificationData]){
        for notif in notifications {
            notificationStack.append(notif)
        }
        handleQueue()
    }
    
    /**
     Handles a NotificationData array by getting the first item and remove it from the array
     */
    private func handleQueue(){
        
        if let notif = notificationStack.first {
            displayNotification(notification: notif)
            notificationStack.removeFirst()
        }
    }
    
    /**
     Displays the notifiation from the data contained in the NotificationData object and displays it the UIwindow
     */
    private func displayNotification(notification: NotificationData){
        
        if !isNotificationVisible {
            
            if let window = UIApplication.shared.keyWindow {
                
                if(notificationView == nil ){
                    notificationView = NotificationView(frame: .zero)
                }
                
                guard let notifV = notificationView else {
                    return
                }
                
                notifV.frame = CGRect(x: 0, y: -window.frame.size.width, width: window.frame.size.width, height: window.frame.size.height)
                notifV.delegate = self
                notifV.notification = notification
                window.addSubview(notifV)
                
                showWithAnimation(notification: notification, window: window, notificationView: notifV)
            }
        }
        
    }
    
    /**
     Displays the notifiation from the data contained in the NotificationData object with the animation defined in that object
     */
    private func showWithAnimation(notification: NotificationData, window: UIWindow, notificationView: NotificationView){
        
        switch notification.animationStyle {
        case .top:
            notificationView.frame = CGRect(x: 0, y: -100, width: notificationView.frame.size.width, height: notificationView.frame.size.height)
            break
        case .left:
            notificationView.frame = CGRect(x: -notificationView.frame.size.width, y: 30, width: notificationView.frame.size.width, height: notificationView.frame.size.height)
            
            break
        case .right:
            notificationView.frame = CGRect(x: notificationView.frame.size.width, y: 30, width: notificationView.frame.size.width, height: notificationView.frame.size.height)
            break
            
        }
        
        isNotificationVisible = true
        notificationView.alpha = 0
        
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            notificationView.frame = CGRect(x: 0, y: 30, width: notificationView.frame.size.width, height: notificationView.frame.size.height)
            notificationView.alpha = 1
        }) { (animated) in
            
        }
        
    }
}

extension InAppNotification: NotificationViewDelegate{
   
    /**
     Send the info ""notificationTapped" to the NotificationCenter
     */
    internal func notificationTapped(notification: NotificationData) {
        NotificationCenter.default.post(name: Notification.Name("notificationTapped"), object: notification)
    }
    
    /**
     Dismiss the notification view and the data asssociated
     */
    internal func notificationDismissed() {
        isNotificationVisible = false
        notificationView?.removeFromSuperview()
        notificationView?.delegate = nil
        notificationView = nil
        handleQueue()
    }
}

