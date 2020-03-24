//
//  signUpViewController.swift
//  geek-api
//
//  Created by saya on 2020/03/24.
//  Copyright © 2020 saya. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButton.layer.cornerRadius = 30

    }
    
    @IBAction func signUp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "signUp", bundle: nil)
        guard let signUpViewController = storyboard.instantiateViewController(withIdentifier: "signUpViewController") as? DateTimeViewController else {
            return
        }
        dateTimeViewController.youserAnswer = youserAnswer
        self.navigationController?.pushViewController(dateTimeViewController, animated: true)
    }
}

