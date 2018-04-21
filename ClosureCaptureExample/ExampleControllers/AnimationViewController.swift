//
//  AnimationViewController.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //После выполнения, self более не удерживается.
        UIView.animate(withDuration: 10) {
            self.view.backgroundColor = .black
        }
    }

    deinit {
        print("\(String(describing: self)) deinit")
    }
}
