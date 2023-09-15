//
//  CalculateBMI.swift
//  BMI Calculator App
//
//  Created by Andrea Victoria López Palomeque on 14/09/2023.
//

import UIKit

struct CalculateBMI {
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.4 {
            bmi = BMI(value: bmiValue, adviceText: "Eat more protein", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, adviceText: "Healthy and fit", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if bmiValue <= 29.9 {
            bmi = BMI(value: bmiValue, adviceText: "Move more", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, adviceText: "Hit the gym", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
    }
    //getters
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    func getAdvice() -> String {
        return bmi?.adviceText ?? "No Advice"
    }
}
