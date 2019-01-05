//
//  LoginViewController.swift
//  LoginName
//
//  Created by Mark Meretzky on 1/4/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class LoginViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad();

        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnButtonPressed(_ sender: UITextField) {
        sender.resignFirstResponder();   //Dismiss the UITextField's keyboard.
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let viewController: ViewController = segue.destination as? ViewController {
            if let text: String = textField.text {
                //Transmit information from the LoginViewController to the ViewController.
                viewController.loginName = text;
            }
        }
    }
    

}
