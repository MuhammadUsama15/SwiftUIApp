//
//  DistanceVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct DistanceVC: View {
   
    @State var meter:String = ""
    
    @State var inputValue = ""
    
    @State var inputIndex = 0
    let inputUnit = ["meter","foot","yard","kilometer","miles"]

    @State var outputIndex = 0
    let outputUnit = ["meter","foot","yard","kilometer","miles"]

    var convertedFigues: String {

        var input = Measurement(value: 0, unit: UnitLength.meters)
        var output = ""

        switch inputUnit[inputIndex] {
        case "meter":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.meters)
        case "feet":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.feet)
        case "yard":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.yards)
            print("APP: yards")
        case "kilometer":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.kilometers)
            print("APP: Kilometers")
        case "mile":
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.miles)
            print("APP: Miles")
        default:
            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitLength.meters)
        }

        switch outputUnit[outputIndex] {
        case "meter":
            output = String(describing: input.converted(to: UnitLength.meters))
        case "feet":
            output = String(describing: input.converted(to: UnitLength.feet))
        case "yard":
            output = String(describing: input.converted(to: UnitLength.yards))
            print("APP: Yards")
        case "kilometer":
            output = String(describing: input.converted(to: UnitLength.kilometers))
            print("APP: Kilometers")
        case "mile":
            output = String(describing: input.converted(to: UnitLength.miles))
            print("APP: Miles")
        default:
            output = String(describing: input.converted(to: UnitLength.meters))
        }

        return output
    }
    
    var converter = Conversion()
    
     var body: some View {
      //   NavigationView {
            ZStack {
                Image("image3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(0.2)
             VStack(spacing: -20) {
                 HStack {
                     Text("Metre")
                         .padding()
                     Spacer()
                    TextField("type", text: $inputValue, onEditingChanged: { (true) in
                        print("BOOL")
                    }, onCommit: {
                        print("ACTION")
                    })
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
//                Picker("Input Value", selection: $inputIndex) {
//                    ForEach(0..<inputUnit.count) {
//                        Text("\(inputUnit[$0])")
//                    }
//                }
//
//                Picker("output Value", selection: $outputIndex) {
//                    ForEach(0..<outputUnit.count) {
//                        Text("\(outputUnit[$0])")
//                    }
//                }
                
              //  Text(convertedFigues)
                 HStack {
                     Text("Foot")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Yard")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                HStack {
                    Text("Kilometre")
                        .padding()
                    Spacer()
                    TextField( "type", text: $meter)
                        .frame(width: 200, height: 50, alignment: .leading)
                       .border(Color.black)
                       .padding()
                }
                 HStack {
                     Text("Mile")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                
                
                 Spacer()
             }
     //        .navigationTitle("Distance")
             
         }

      //   }

    }
}

struct DistanceVC_Previews: PreviewProvider {
    static var previews: some View {
        DistanceVC()
    }
}
