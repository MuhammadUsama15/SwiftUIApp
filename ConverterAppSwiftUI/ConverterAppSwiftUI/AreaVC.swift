//
//  AreaVC.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct AreaVC: View {
    
    @State var meter:String = ""
    @State var meter1 = 0.0
    @State var meter2:String = ""
    @State var meter3:String = ""
    
    func hello() {
        print("Sqaure")
    }
    func type() {
        print("APP: Sqaure")
    }
    var body: some View {
     //   NavigationView {
          ZStack {
            
            Image("image2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .opacity(0.2)
            VStack(spacing: -20) {
            HStack {
                Text("Square Feet")
                    .padding()
                Spacer()
                TextField("Type", text: $meter1, onEditingChanged: { _ in
                    self.hello()
                }, onCommit: {
                    self.type()
                })
                    .frame(width: 200, height: 50, alignment: .leading)
                    .border(Color.black)
                    .padding()
            }
            HStack {
                Text("Square Yard")
                    .padding()
                Spacer()
                TextfieldArea.init(meter1: $meter1)
                    .frame(width: 200, height: 50, alignment: .leading)
                    .border(Color.black)
                    .padding()
            }
            HStack {
                Text("Square Meter")
                    .padding()
                Spacer()
                TextField( "type", text: $meter3)
                    .frame(width: 200, height: 50, alignment: .leading)
                    .border(Color.black)
                    .padding()
            }
            HStack {
                Text("Meter")
                    .padding()
                Spacer()
                TextField( "type", text: $meter1)
                    .frame(width: 200, height: 50, alignment: .leading)
                    .border(Color.black)
                    .padding()
            }
            Spacer()
        }
   //     .navigationTitle("Area")
   //         .navigationBarTitleDisplayMode(.inline)
  
        }
 //   }
        
 }
}

struct AreaVC_Previews: PreviewProvider {
    static var previews: some View {
        AreaVC()
    }
}
