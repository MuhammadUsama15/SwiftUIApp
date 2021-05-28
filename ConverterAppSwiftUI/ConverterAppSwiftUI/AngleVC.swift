//
//  AngleVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct AngleVC: View {
    
//      var deg: Double {
//        let degres = Measurement.init(value: 180, unit: UnitAngle.degrees)
//        let rad = degres.converted(to: .radians)
//        return Double(rad)
//    }
    
//    func conver(_ num: Float) -> Float {
//        var degres = Measurement.init(value: 180, unit: UnitAngle.degrees)
//        var rad = degres.converted(to: .radians)
//        return rad
//    }
//
    
    
//    var aC:AngleConverter = AngleConverter()
//
//    @State var showAreaView = false
//    @State var meter:String = ""
//
//    @State var inputValue = ""//Measurement(value: 180, unit: UnitAngle.degrees)
   //     @State var outputValue = ""
    
  //  @State var inputUnitValue = 0
    
  //  let inputUnits = ["Degree","Radian"]

  //  @State var outputUnitValue = 1
  //  let outputUnits = ["Degree","Radian"]
    
//    var inputUnitConversion: String {
//
//        var output = ""
//        var input = Measurement(value: 0, unit: UnitAngle.degrees)
//
//        switch inputUnits[inputUnitValue] {
//        case "Degree":
//            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitAngle.degrees)
//        case "Radian":
//            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitAngle.radians)
//        default:
//            break
//        }
        
//        switch outputUnits[outputUnitValue] {
//        case "Degree":
//            output = String(describing: input.converted(to: UnitAngle.degrees))
//        case "Radian":
//            output = String(describing: input.converted(to: UnitAngle.radians))
//        default:
//            break
//        }
//        return output
//    }
    
   @ObservedObject var ac = Conversion()
    
    @State var inputValue = ""
    @State var outputValue = ""
    
    @State var inputUnitValue = 1
    let inputUnit = ["radian", "degree"]
    
    @State var outputUnitValue = 1
    let outputUnit = ["radian", "degree"]
    

    
    var convertedFigure: String {

           // let valueInputted = Double(inputValue) ?? 0
        var input = Measurement(value: 0, unit: UnitAngle.radians)
//            var baseValueInMeters: Double = 0
//            var convertedValueRaw: Double = 0
//            let convertedValueString = String(convertedValueRaw)
        var output = ""

        switch inputUnit[inputUnitValue] {
            case "radian":
                input = Measurement(value: Double(inputValue) ?? 0, unit: UnitAngle.radians)
                print("APP: radian")
            case "degree":
                input = Measurement(value: Double(inputValue) ?? 0, unit: UnitAngle.degrees)
                print("APP: degree")
            default:
                input = Measurement(value: Double(inputValue) ?? 0, unit: UnitAngle.radians)
            }
             

            switch outputUnit[outputUnitValue]{
            case "radian":
                output = String(describing: input.converted(to: UnitAngle.radians))
                print("APP: radian")
            case "Degree":
                output = String(describing: input.converted(to: UnitAngle.degrees))
                print("APP: degree")
            default:
                output = String(describing: input.converted(to: UnitAngle.radians))

            }
            return output

        }
     var body: some View {
        
    //    NavigationView {
            ZStack {
                Image("image1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(0.2)
             VStack(spacing: -20) {
//
//                Picker("I/P", selection: $inputUnit) {
//                    ForEach(0..<inputUnit.count) {_ in
//                        Text("\($inputUnit)")
//                    }
//                }
                 HStack {
                     Text("Radian")
                         .padding()
                     Spacer()
//                    TextField("type", value: ac.radToDeg())
//                    TextField("a", text: $outputValue)
                    TextField("typr", text: $inputValue)
                        .keyboardType(.decimalPad)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
               
                 }
                
                Picker("Input Value", selection: $inputUnitValue) {
                    ForEach(0..<inputUnit.count) {
                        Text("\(inputUnit[$0])")
                    }
                }
                
                Picker("Output Value", selection: $outputUnitValue) {
                    ForEach(0..<outputUnit.count) {
                        Text("\(outputUnit[$0])")
                    }
                }
                
//                 HStack {
//                     Text("Degree")
//                         .padding()
//                     Spacer()
//                     TextField( "type", text: $outputValue)
//                        .keyboardType(.decimalPad)
//                         .frame(width: 200, height: 50, alignment: .leading)
//                        .border(Color.black)
//                        .padding()
//                 }
                
                Text(convertedFigure)
                
                 Spacer()
             }
           //  .navigationTitle("Angle")
            }
 //        }
    }
}

struct AngleVC_Previews: PreviewProvider {
    static var previews: some View {
        AngleVC()
    }
}
