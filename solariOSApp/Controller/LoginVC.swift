//
//  LoginVC.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/12/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
