//
//  ContentView.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 30/12/2020.
//

import SwiftUI

struct ContentView: View {

    @State private var selection:Int? = nil
    
var body: some View {
        
    NavigationView {
        VStack(spacing: -5) {
        
        // MARK :- Row #1
        HStack() {
                
           NavigationLink(
            destination: AngleVC(),
            tag: 1,
            selection: self.$selection,
            label: {Text("")})
            
            Button(action: {
                self.selection = 1
            }, label: {
                Image("image1")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
            }).padding()
            Spacer()
            NavigationLink(
             destination: AreaVC(),
             tag: 2,
             selection: self.$selection,
             label: {Text("")})
             

            Button(action: {
                self.selection = 2
            }, label: {
                Image("image2")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
                
            }).padding()
        
        }
            HStack {
            Text("Angle")
                .padding(.leading, 50)
                Spacer()
            Text("Area")
                .padding(.trailing, 50)
        }.font(.system(size: 23))
        
        // MARK :- Row #2
        HStack {

            NavigationLink(
             destination: DistanceVC(),
             tag: 3,
             selection: self.$selection,
             label: {Text("")})
             

            
            Button(action: {
                self.selection = 3
            }, label: {
                Image("image3")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
                
            }).padding()
            
            Spacer()
            
            NavigationLink(
             destination: RulerVC(),
             tag: 4,
             selection: self.$selection,
             label: {Text("")})
             

            Button(action: {
                self.selection = 4
            }, label: {
                Image("image4")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
            }).padding()
        }
        HStack {
            Text("Distance")
                .padding(.leading, 40)
            Spacer()
            Text("Ruler")
                .padding(.trailing, 45)
        }.font(.system(size: 23))
   
        // MARK :- Row #3
        HStack {
        
            NavigationLink(
             destination: SpeedVC(),
             tag: 5,
             selection: self.$selection,
             label: {Text("")})
             

            
            Button(action: {
                self.selection = 5
            }, label: {
                Image("image6")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
            }).padding()
            
            Spacer()
            
            NavigationLink(
             destination: TemperatureVC(),
             tag: 6,
             selection: self.$selection,
             label: {Text("")})
             

            Button(action: {
                self.selection = 6
            }, label: {
                Image("image5")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
            }).padding()
        
        }
            HStack {
            Text("Temperature")
                .padding(.leading, 20)
                Spacer()
            Text("speed")
                .padding(.trailing, 45)
        }.font(.system(size: 23))
        
        // MARK :- Row #4
        HStack {
      
            NavigationLink(
             destination: TimeVC(),
             tag: 7,
             selection: self.$selection,
             label: {Text("")})
             

            Button(action: {
                self.selection = 7
            }, label: {
                Image("image7")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
            }).padding()
            
           Spacer()
            NavigationLink(
             destination: WeightVC(),
             tag: 8,
             selection: self.$selection,
             label: {Text("")})
             

            Button(action: {
                self.selection = 8
            }, label: {
                Image("image8")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                
            }).padding()
        }
            HStack {
            Text("Time")
                .padding(.leading, 50)
                Spacer()
            Text("Weight")
                .padding(.trailing, 35)
        }.font(.system(size: 23))
     //    Spacer()
        
        }
        
        .navigationBarTitleDisplayMode(.inline)
    
        .navigationBarHidden(true)
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    
    }
}
