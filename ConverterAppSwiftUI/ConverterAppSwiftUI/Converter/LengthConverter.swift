//
//  LengthConverter.swift
//  UnitConverter
//

import Foundation
class LengthConverter{
    //meter to all other
    func meterTocm(value:Double)->Double{
        return value*100
    }
    func meterTomm(value:Double)->Double{
        return value*1000
    }
    func meterToinch(value:Double)->Double{
        return value*39.3701
    }
    //inch to all other
    func inchTometer(value:Double)->Double{
        return value/39.3701
    }
    func inchTocm(value:Double)->Double{
        return value*2.54
    }
    func inchTomm(value:Double)->Double{
        return value*25.4
    }
    //mm to all other
    func mmToinch(value:Double)->Double{
        return value/25.4
    }
    func mmTom(value:Double)->Double{
        return value/1000
    }
    func mmTocm(value:Double)->Double{
        return value/10
    }
    //cm to all other
    func cmToinch(value:Double)->Double{
        return value/2.54
    }
    func cmTom(value:Double)->Double{
        return value/100
    }
    func cmTomm(value:Double)->Double{
        return value*10
    }
    
    
}
