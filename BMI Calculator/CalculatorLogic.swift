//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Shreyash Pattewar on 16/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiCalulated : Float = 0.0
    
    
   mutating func calculateBmi(height: Float, wieght: Float){
        
        bmiCalulated = wieght / (height * height)
       
        
    }
    func getBmiValue() -> String{
        return String(format: "%.1f", bmiCalulated)
    }
}
