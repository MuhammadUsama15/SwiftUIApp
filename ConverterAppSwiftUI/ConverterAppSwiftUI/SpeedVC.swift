//
//  SpeedVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct SpeedVC: View {
   
   @State var meter:String = ""
   
    var body: some View {
     //   NavigationView {
            ZStack {
                Image("image5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .opacity(0.4)
                
            VStack(spacing: -20) {
                HStack {
                    Text("Metre per sec")
                        .padding()
                    Spacer()
                    TextField( "type", text: $meter)
                        .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                }
                HStack {
                    Text("Feet per sec")
                        .padding()
                    Spacer()
                    TextField( "type", text: $meter)
                        .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                }
                HStack {
                    Text("KM per hour")
                        .padding()
                    Spacer()
                    TextField( "type", text: $meter)
                        .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                }
                HStack {
                    Text("Miles per hour")
                        .padding()
                    Spacer()
                    TextField( "type", text: $meter)
                        .frame(width: 200, height: 50, alignment: .leading)
                        .border(Color.black)
                        .padding()
                }
                Spacer()
            }
        //    .navigationTitle("Speed")
            }
      //  }
    }
}

struct SpeedVC_Previews: PreviewProvider {
    static var previews: some View {
        SpeedVC()
    }
}
