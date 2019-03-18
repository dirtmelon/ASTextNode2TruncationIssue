//
//  AppDelegate.swift
//  ASTextNode2TruncationIssue
//
//  Created by postman on 2019/2/22.
//  Copyright © 2019 dirtmelon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = UIColor.white
    window?.makeKeyAndVisible()
    let viewController = ViewController()
    window?.rootViewController = viewController
    return true
  }
  
}

