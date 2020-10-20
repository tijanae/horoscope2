//
//  signUpVC.swift
//  horoscope2
//
//  Created by Tia Lendor on 6/8/20.
//  Copyright © 2020 Tia Lendor. All rights reserved.
//

import UIKit

class signUpVC: UIViewController {

    //    MARK: UI Objects
    lazy var email: UITextField = {
      let text = UITextField()
        text.borderStyle = .line
//        text.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        return text
    }()
    
    lazy var passwords: UITextField = {
       let text = UITextField()
        text.borderStyle = .line
        return text
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

    

}
