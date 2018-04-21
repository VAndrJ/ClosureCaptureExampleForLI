//
//  AlertControllerViewController.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class AlertControllerViewController: UIViewController {
    let name = "Closure"
    var alertController: UIAlertController!

    @IBAction func capturingAction(_ sender: UIButton) {
        alertController = UIAlertController(title: "Test", message: "Capture", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Close", style: .default) { _ in
            print("Bye, \(self.name)")
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true) {
            print("Hello, \(self.name)")
        }
    }

    @IBAction func capturingResolvedAction(_ sender: UIButton) {
        alertController = UIAlertController(title: "Test", message: "Capture", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Close", style: .default) { [weak self] _ in
            guard let `self` = self else { return }
            print("Bye, \(self.name)")
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true) {
            print("Hello, \(self.name)")
        }
    }

    @IBAction func nonCapturingAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Test", message: "Capture", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Close", style: .default) { _ in
            print("Bye, \(self.name)")
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true) {
            print("Hello, \(self.name)")
        }
    }

    deinit {
        print("\(String(describing: self)) deinit")
    }
}
