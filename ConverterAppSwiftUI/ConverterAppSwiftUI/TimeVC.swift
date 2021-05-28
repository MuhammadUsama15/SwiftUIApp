//
//  TimeVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct TimeVC: View {
  
    @State var meter:String = ""
    
    @State var inputValue = ""
    
    @State var inputIndex = 0
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

    
     var body: some View {
      //   NavigationView {
            ZStack {
                Image("image7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(0.2)
                VStack(spacing: 25) {//(spacing: -20) {
                 HStack {
                     Text("Hours")
                         .padding()
                     Spacer()
                     TextField( "type", text: $inputValue)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                    
                 }
                    Picker("Input type", selection: $inputIndex) {
                        ForEach(0..<inputUnit.count) {
                            Text("\(inputUnit[$0])")
                        }
                    }
                    
                    Picker("output type", selection: $outputIndex) {
                        ForEach(0..<outputUnit.count) {
                            Text("\(outputUnit[$0])")
                        }
                    }
                
                    
                    Text(convertedFigues)
//                 HStack {
//                     Text("Minutes")
//                         .padding()
//                     Spacer()
//                     TextField( "type", text: $meter)
//                         .frame(width: 200, height: 50, alignment: .leading)
//                        .border(Color.black)
//                        .padding()
//                 }
//                 HStack {
//                     Text("Seconds")
//                         .padding()
//                     Spacer()
//                     TextField( "type", text: $meter)
//                         .frame(width: 200, height: 50, alignment: .leading)
//                        .border(Color.black)
//                        .padding()
//                 }
//                 HStack {
//                     Text("Miliseconds")
//                         .padding()
//                     Spacer()
//                     TextField( "type", text: $meter)
//                         .frame(width: 200, height: 50, alignment: .leading)
//                        .border(Color.black)
//                        .padding()
//                 }
                 Spacer()
             }
        //        .navigationBarTitle(Text("Time"), displayMode: .inline)
             
         }

//         }

    }
}

struct TimeVC_Previews: PreviewProvider {
    static var previews: some View {
        TimeVC()
    }
}
