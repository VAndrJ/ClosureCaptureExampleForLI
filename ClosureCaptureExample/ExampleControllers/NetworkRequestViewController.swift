//
//  NetworkRequestViewController.swift
//  ClosureCaptureExample
//
//  Created by VAndrJ on 4/21/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class NetworkRequestViewController: UIViewController {
    private let name = "Closure"
    private var dataTask: URLSessionDataTask!

    override func viewDidLoad() {
        super.viewDidLoad()
        let urlRequest = URLRequest(url: URL(string: "https://api.chucknorris.io/jokes/random")!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        // MARK: - Ничего страшного не произойдет в данном случае, контроллер будет деинициализирован после заерешения выполнения.
        dataTask = URLSession.shared.dataTask(with: urlRequest) { (_, _, _) in
            // MARK: - позволим себе пока проигнорировать содержимое ответа, но добавим паузу
            sleep(10)
            DispatchQueue.main.async {
                print("Hello, \(self.name)")
            }
        }
        // MARK: - Если нам не важен результат после ухода с контроллера и не отменяем запрос
        /*dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] (_, _, _) in
            sleep(10)
            DispatchQueue.main.async {
                guard let `self` = self else { return }
                print("Hello, \(self.name)")
            }
        }*/
        dataTask.resume()
    }

    deinit {
        print("\(String(describing: self)) deinit")
    }
}
