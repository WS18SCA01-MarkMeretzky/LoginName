//
//  ViewController.swift
//  LoginName
//
//  Created by Mark Meretzky on 1/4/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {
    var loginName: String?;
    @IBOutlet weak var label: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        if let loginName: String = loginName {
            label.text = "Welcome, \(loginName).";
        }
    }


}

