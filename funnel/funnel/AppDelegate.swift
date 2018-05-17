//
//  AppDelegate.swift
//  funnel
//
//  Created by Rodrigo Sagebin on 5/14/18.
//  Copyright © 2018 Rodrigo Sagebin. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let messageNotification = Notification.Name("Notification")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
//        This is here for CloudKit testing
        
        UserController.shared.fetchCurrentUser(completion: { (success) in
            if success {
                PostController.shared.createPost(user: UserController.shared.loggedInUser!, description: "Post Description", image: UIImage(named: "settings")!, category: "Test Category")
            } else {
                UserController.shared.createNewUserWith(username: "TestUser", name: "Test User", email: "test@test.com", completion: { (success) in
                    if success {
                        let image = #imageLiteral(resourceName: "settings")
                        PostController.shared.createPost(user: UserController.shared.loggedInUser!, description: "Post Description", image: image, category: "Test Category")
                    }
                    
                })
            }
        })
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert])
        { (_, error) in
            if let error = error {
                print("No permission granted: \(error.localizedDescription)")
            }
        }
        
        UIApplication.shared.registerForRemoteNotifications()
        return true
    }
    
//    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//        UserController.shared.subscribribeToMessages()
//    }
    
//    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
//        print("Error registering for remote notifications: \(error.localizedDescription)")
//    }
    
//    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
//        UserController.shared.fetchAllMessages { (_) in
//        NotificationCenter.default.post(name: self.messageNotification, object: self)
//
//    }

}
