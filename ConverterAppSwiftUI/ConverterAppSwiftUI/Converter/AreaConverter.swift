//
//  AreaConverter.swift
//  UnitConverter
//

import Foundation
class AreaConverter{
    //squarefeet to all
    func sftosy(value:Double)->Double{
        return value/9
    }
    func sftosm(value:Double)->Double{
        return value/10.764
    }
    //squareyard to all
    func sytosf(value:Double)->Double{
        return value*9
    }
    func sytosm(value:Double)->Double{
        return value/1.196
    }
    //squaremeter to all
    func smtosy(value:Double) -> Double {
        return value*1.19599
    }
    func smtosf(value:Double)->Double{
        return value*10.764
    }
}
