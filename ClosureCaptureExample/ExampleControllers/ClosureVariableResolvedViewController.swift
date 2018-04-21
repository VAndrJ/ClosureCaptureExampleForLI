//
//  ClosureVariableResolvedViewController.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class ClosureVariableResolvedViewController: UIViewController {
    let name = "ProperClosure"

    // захват self по слабой ссылке (если будет вызвана)
    lazy var sayHelloLazily: () -> Void = { [weak self] in
        guard let `self` = self else { return }
        print("Hello, \(self.name)")
    }

    // Избегаем захват self
    var sayHelloTo: (String) -> Void = { name in
        print("Hello, \(name)")
    }
    
    var sayHello: (() -> Void)?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // захват self по слабой ссылке
        sayHello = { [weak self] in
            guard let `self` = self else { return }
            print("Hello, \(self.name)")
        }
        sayHello?()
        sayHelloTo(name)
        sayHelloLazily()
    }

    deinit {
        print("\(String(describing: self)) deinit")
    }
}
