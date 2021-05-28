//
//  WeightVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct WeightVC: View {
   
    @State var meter:String = ""
    
    @State var inputValue = ""
    
    @State var inputIndex = 0
    let inputUnit = ["gram","kilogram","pound","ounce"]
    
    @State var outputIndex = 0
    let outputUnit = ["gram","kilogram","pound","ounce"]
    
    var convertedFigures: String {
        var input = Measurement(value: 0, unit: UnitMass.grams)
        var output = ""
        
//        switch inputUnit[inputIndex] {
//        case "gram":
//            input = Measurement(value: Double(inputValue) ?? 0, unit: UnitMass.grams)
//            def
//        }
        return output
    }
    
     var body: some View {
     //    NavigationView {
            ZStack {
                Image("image8")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(0.2)
             VStack(spacing: -20) {
                 HStack {
                     Text("Gram")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Kilogram")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Pound")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Ounce")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
               
                 Spacer()
             }
        //     .navigationTitle("Weight")
         //    .navigationBarTitleDisplayMode(.inline)
             
         }

        // }

    
    }
}

struct WeightVC_Previews: PreviewProvider {
    static var previews: some View {
        WeightVC()
    }
}
