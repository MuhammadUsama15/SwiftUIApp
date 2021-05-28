//
//  TextfieldArea.swift
//  ConverterAppSwiftUI
//
//  Created by Mohammad Usama on 19/01/2021.
//

import SwiftUI

struct TextfieldArea: View {
    
    @Binding var meter1: Double
    
   
    
    var body: some View {
        
        TextField("Type", text: $meter1) { _ in
            print("Start")
        } onCommit: {
            print("g" )
        }

    }
}

//struct TextfieldArea_Previews: PreviewProvider {
//    static var previews: some View {
//        TextfieldArea()
//    }
//}
