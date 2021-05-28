//
//  AngleConverter.swift
//  UnitConverter
//

//import Foundation
import SwiftUI

class AngleConverter: ObservableObject{

    
    let radTodeg : Double = 57.29
    let degTorad : Double = 0.0174533
    // functions to convert from gram to other
    func radToDeg(rad : Double)->Double{
        return rad*(180/3.14159)

    }
    func DegToRad(deg:Double)->Double{
        return (deg*3.14159/180)
    }
}
