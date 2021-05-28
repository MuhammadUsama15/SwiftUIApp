//
//  TimeConverter.swift
//  UnitConverter
//

import Foundation
class TimeConverter{
    func smallerToGreater(value:Double)->Double{
        return value/60
    }
    func greaterToSmaller(value:Double)->Double{
        return value*60
    }
    func greaterToMilliseconds(value:Double)->Double{
        return value*1000
    }

    
    
    
}
