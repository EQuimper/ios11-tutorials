//
//  LoginVC.swift
//  Smack
//
//  Created by Emanuel Quimper on 2017-08-30.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    // Outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
}
