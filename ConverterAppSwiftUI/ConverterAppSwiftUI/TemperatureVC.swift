//
//  TemperatureVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct TemperatureVC: View {
  
    @State var meter:String = ""
    
     var body: some View {
       //  NavigationView {
            ZStack {
                Image("image6")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(0.2)
             VStack(spacing: -20) {
                 HStack {
                     Text("Celcius")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Fahrenheit")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Kelvin")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Meter")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 Spacer()
             }
      //       .navigationTitle("Temperature")
             
         }

    //     }
    
    }
}

struct TemperatureVC_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureVC()
    }
}
