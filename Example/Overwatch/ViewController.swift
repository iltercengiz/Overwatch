//
//  ViewController.swift
//  Overwatch
//
//  Created by Ilter Cengiz on 11/25/2016.
//  Copyright (c) 2016 Ilter Cengiz. All rights reserved.
//

import UIKit
import Overwatch

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        Overwatch.start(withName: "com.example.Overwatch.asyncTask")
        DispatchQueue.global().asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            DispatchQueue.main.async { [weak self] in
                let duration = Overwatch.stop(withName: "com.example.Overwatch.asyncTask")
                self?.activityIndicator.stopAnimating()
                self?.statusLabel.text = "Task completed in:\n\(duration)"
            }
        }
    }
    
}
