//
//  StaticMethodViewController.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class StaticMethodViewController: UIViewController {
    let greeting = "How do you do?"

    override func viewDidLoad() {
        super.viewDidLoad()
        //После выполнения, self более не удерживается.
        AppDelegate.someFuncWithClosure(name: "Closure") { (helloString) in
            print("\(helloString). \(self.greeting)")
        }
    }

    deinit {
        print("\(String(describing: self)) deinit")
    }
}
