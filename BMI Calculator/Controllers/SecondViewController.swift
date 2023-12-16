//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Shreyash Pattewar on 15/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    
    
    var bmi = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        let label = UILabel()
        label.text = "Label Hello World"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
    
}
