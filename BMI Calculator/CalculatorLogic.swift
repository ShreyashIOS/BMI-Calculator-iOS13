//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Shreyash Pattewar on 16/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmiCalulated : BMI?
    
    

    func getBmiValue() -> String{
        return String(format: "%.1f", bmiCalulated?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmiCalulated?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmiCalulated?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    mutating func calculateBmi(height: Float, wieght: Float){
        let bmiValue = wieght / (height * height)
        
      
        if bmiValue < 18.5 {
            bmiCalulated = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmiCalulated = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmiCalulated = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
        
        //bmiCalulated = BMI(value: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
        
         
     }
}
