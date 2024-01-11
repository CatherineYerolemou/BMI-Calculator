//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Catherine Yerolemou on 2023/09/13.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / (height * height)
        let color = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), healthy: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), overweight: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), obese: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight!", color: color.underweight)
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Healthy!", color: color.healthy)
        } else if bmiValue < 29.9{
            bmi = BMI(value: bmiValue, advice: "Overweight!", color: color.overweight)
        } else {
            bmi = BMI(value: bmiValue, advice: "Obese!", color: color.obese)
        }
        
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "NO ADVICE!"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
    }
    
    
}
