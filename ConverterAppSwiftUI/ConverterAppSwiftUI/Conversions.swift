//
//  Conversions.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 16/01/2021.
//

import SwiftUI

class Conversion:ObservableObject {
    
    // Angel: -
   
    
//    let radTodeg : Double = 57.29
//    let degTorad : Double = 0.0174533
//    
    @Published var rad: Double = 0.0
    @Published var a: String = "name"
    // functions to convert from gram to other
   
    func radToDeg()->Double{
        return rad*(180/3.14159)

    }
    
    func string() -> String{
        return a
    }
//    func radToDeg(rad : Double)->Double{
//        return rad*(180/3.14159)
//
//    }
    func DegToRad(deg:Double)->Double{
        return (deg*3.14159/180)
    }
    
    
    
    // Energy:
    let calorieToJoule = 4.184
    let BTUToJoule = 1055.0
    let BTUToCal = 252
    
    func CalorieToJoule(calorie: Double) -> Double {
        return calorie * calorieToJoule
    }
    func BTUToJoule(BTU: Double) -> Double {
        return BTU * BTUToJoule
    }
    func BTUToCal(calorie: Double) -> Double {
        return calorie * calorieToJoule
    }
    
    @Published var inputValue = ""
    
    @Published var inputIndex = 0
    let inputUnit = ["hour","minutes","seconds","miliseconds"]
    
    @State var outputIndex = 0
    let outputUnit = ["hour","minutes","seconds","miliseconds"]
    var convertedFigues: String {
        
        var input = Measurement(value: 0, unit: UnitDuration.hours)
        var output = ""
        
        switch inputUnit[inputIndex] {
        case "hour":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitDuration.hours)
            print("APP: hour")
        case "minutes":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitDuration.minutes)
            print("APP: minutes")
        case "seconds":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitDuration.seconds)
            print("APP: seconds")
        case "miliseconds":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitDuration.milliseconds)
            print("APP: miliseconds")
        default:
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitDuration.hours)
            print("ESLE: hours")
        }
        
        switch outputUnit[outputIndex] {
        case "hour":
            output = String(describing: input.converted(to: UnitDuration.hours))
            print("APP: hours")
        case "minutes":
            output = String(describing: input.converted(to: UnitDuration.minutes))
            print("APP: minutes")
        case "seconds":
            output = String(describing: input.converted(to: UnitDuration.seconds))
            print("APP: seconds")
        case "miliseconds":
            output = String(describing: input.converted(to: UnitDuration.milliseconds))
            print("APP: miliseconds")
       
        default:
            output = String(describing: input.converted(to: UnitDuration.hours))
        }
        
        return output
    }
}
