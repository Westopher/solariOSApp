//
//  ProfileVC.swift
//  solariOSApp
//
//  Created by West Kraemer on 11/26/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    //iboutlets
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

    }
    
    //ibactions
    @IBAction func logOutPressed(_ sender: Any) {
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUpView() {
        userName.text = UserDataService.instance.name
        email.text = UserDataService.instance.email
    }
    

}
