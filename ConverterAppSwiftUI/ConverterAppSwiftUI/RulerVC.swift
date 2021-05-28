//
//  RulerVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct RulerVC: View {
 
    @State var meter:String = ""
    
     var body: some View {
      //   NavigationView {
            ZStack {
                Image("image4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(0.2)
                VStack(spacing: -20) {
                 HStack {
                     Text("Meter")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Centimeter")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("Milimeter")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 HStack {
                     Text("inch")
                         .padding()
                     Spacer()
                     TextField( "type", text: $meter)
                         .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                 }
                 Spacer()
             }
         //    .navigationTitle("Ruler")
             
         }

     //    }

    }
}

struct RulerVC_Previews: PreviewProvider {
    static var previews: some View {
        RulerVC()
    }
}
