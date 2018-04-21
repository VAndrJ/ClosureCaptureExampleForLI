//
//  VariableClosureInitializationViewController.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class VariableClosureInitializationViewController: UIViewController, UITextViewDelegate {
    let name = "Closure"

    //После выполнения, self более не удерживается.
    lazy var someTextView: UITextView = {
        let textField = UITextView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        textField.delegate = self
        textField.text = self.name
        return textField
    }()

    override func loadView() {
        super.loadView()
        view.addSubview(someTextView)
    }

    deinit {
        print("\(String(describing: self)) deinit")
    }
}
