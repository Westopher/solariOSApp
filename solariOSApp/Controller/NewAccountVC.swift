//
//  NewAccountVC.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/13/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class NewAccountVC: UIViewController {

    //outlets
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var inputFieldWarning: UILabel!
    
    //variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let name = userNameTxt.text , userNameTxt.text != "" else {
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
            inputFieldWarning.isHidden = false
            return
        }
        guard let email = emailTxt.text , emailTxt.text != "" else {
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
            inputFieldWarning.isHidden = false
            return
        }
        guard let password = passwordTxt.text , passwordTxt.text != "" else {
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
            inputFieldWarning.isHidden = false
            return
        }
        
        AuthService.instance.registerUser(email: email, password: password)
        {   (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion:
                            { (success) in
                            if success {
                            print("user created")
                            self.spinner.isHidden = true
                            self.spinner.stopAnimating()
                            self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                            NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        })
                    }
            })
            }
            
        }
    }
    
    func setUpView() {
        spinner.isHidden = true
        userNameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedString.Key.foregroundColor:placeHolder])
        emailTxt.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedString.Key.foregroundColor:placeHolder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor:placeHolder])
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(NewAccountVC.handleTap))
        view.addGestureRecognizer(tap)
    }
    
    @objc func handleTap() {
            view.endEditing(true)
        }
    
    
}
    
   
    


