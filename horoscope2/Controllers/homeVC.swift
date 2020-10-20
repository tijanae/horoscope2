//
//  homeVC.swift
//  horoscope2
//
//  Created by Tia Lendor on 9/22/20.
//  Copyright © 2020 Tia Lendor. All rights reserved.
//

import UIKit

class homeVC: UIViewController {

    // MARK: Data
    
    var zodiacData = [horoscopeModel]() {
        didSet {
            
        }
    }
    
    // MARK: UI Objects
    
    lazy var astroImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "cancer")
        return imageView
    }()
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    

}
