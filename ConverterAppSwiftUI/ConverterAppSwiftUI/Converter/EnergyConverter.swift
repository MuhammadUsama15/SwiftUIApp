//
//  EnergyConverter.swift
//  UnitConverter
//

class EnergyConverter
{
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
}
