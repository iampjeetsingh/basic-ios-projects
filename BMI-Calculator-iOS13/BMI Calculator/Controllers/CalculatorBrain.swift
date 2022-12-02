//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Paramjeet Singh on 12/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//
import Foundation
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            // underweight
            bmi = BMI(value: bmiValue , advice: "Eat more pies! ", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            // normal weight
            bmi = BMI(value: bmiValue , advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            // overweight
            bmi = BMI(value: bmiValue , advice: "Eat less pies!", color: UIColor.systemPink)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
}
