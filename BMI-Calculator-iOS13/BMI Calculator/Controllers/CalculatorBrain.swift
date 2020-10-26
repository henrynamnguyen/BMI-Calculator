

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pie", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit like a fiddle", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pie", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue () -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getBMIAdvice () -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getBMIColor () -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
