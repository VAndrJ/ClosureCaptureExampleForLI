//
//  ClosureVariableViewController.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class ClosureVariableViewController: UIViewController {
    let name = "Selfkeeper"

    //retain cycle если будет вызвана
    lazy var sayHelloLazily: () -> Void = {
        print("Hello, \(self.name)")
    }

    var sayHello: (() -> Void)?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //retain cycle
        sayHello = {
            print("Hello, \(self.name)")
        }
        sayHello?()
        //sayHelloLazily()
        //self будет удерживаться, пока не будет присвоено новое значение someClosure или она более не будет удерживаться.
        /*(UIApplication.shared.delegate as! AppDelegate).someClosure = {
            print("Hello, \(self.name)")
        }*/
    }

    deinit {
        print("\(String(describing: self)) deinit")
    }
}
