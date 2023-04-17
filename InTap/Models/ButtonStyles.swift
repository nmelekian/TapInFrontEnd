//
//  ButtonStyles.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/21/23.
//

import Foundation
import SwiftUI

struct TapInButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: 300, maxHeight: 50)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            
            
            
    }
    
   
}

struct SmallerTapInButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: 200, maxHeight: 50)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            
            
            
    }
    
   
}

struct InverseTapInButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: 200, maxHeight: 50)
            .background(.white)
            .foregroundColor(Color("ButtonColor1"))
            .clipShape(Capsule())
            
            
    }
    
   
}


extension Color {
   static let buttonColor = LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
}
