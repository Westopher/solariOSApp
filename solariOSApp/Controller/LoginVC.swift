//
//  LoginVC.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/12/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    //outlets
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
       
    }

    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let email = userNameTxt.text , userNameTxt.text != "" else { return }
        guard let password = passwordTxt.text , passwordTxt.text != "" else { return }
        
        AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
        if success {
            AuthService.instance.findUserByEmail { (success) in
                if success {
                    NotificationCenter.default.post(NOTIF_USER_DATA_DID_CHANGE, object: nil)
                }
            }
            }
        })
    }
    
    
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func setUpView() {
        spinner.isHidden = true
        userNameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.3619792461, green: 0.5534585714, blue: 0.9352012277, alpha: 1) ])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.3619792461, green: 0.5534585714, blue: 0.9352012277, alpha: 1) ])
    }
    
}
