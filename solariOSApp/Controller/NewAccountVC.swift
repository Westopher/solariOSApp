//
//  NewAccountVC.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/13/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class NewAccountVC: UIViewController {

    //Outlets
    
    @IBOutlet weak var userNameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        guard let password = passwordTxt.text , passwordTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: password)
        {   (success) in
            
            if success {
                print("registered a user")
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
