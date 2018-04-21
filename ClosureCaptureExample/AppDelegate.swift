//
//  AppDelegate.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - не засоряйте AppDelegate
    static func someFuncWithClosure(name: String, completion: @escaping (String) -> Void) {
        completion("Hello, \(name)")
    }
    var someClosure: (() -> Void)?

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}

