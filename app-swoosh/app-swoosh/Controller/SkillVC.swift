//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Emanuel Quimper on 2017-08-08.
//  Copyright © 2017 EQuimper. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player! // we promised not nil

    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeague)
    }

    @IBAction func backBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
