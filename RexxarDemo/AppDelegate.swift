//
//  AppDelegate.swift
//  RexxarDemo
//
//  Created by XueMing on 11/10/15.
//  Copyright © 2015 Douban.Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = UINavigationController(rootViewController: RoutesViewController())
    window?.makeKeyAndVisible()

    // Config Rexxar
    let routesMapURL = "http://192.168.199.103:8080/routes.json"
    RXRConfig.setRoutesMapURL(URL(string: routesMapURL)!)
    RXRConfig.setRoutesCachePath("com.douban.RexxarDemo")
    RXRConfig.setRoutesResourcePath("hybrid")
    RXRConfig.setUserAgent("Mozilla/5.0 AppleWebKit/605.1.15 com.douban.frodo/6.11.0 Rexxar/1.2.100 iOS/12.1")
    RXRViewController.updateRouteFiles(completion: nil)

    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }

}
